require 'rubygems'
require 'open-uri'
require 'hpricot'
require 'date'
require 'ascii_charts'

module Enumerable
  # with a nod to Alex D who posted at StackOverflow
  # http://stackoverflow.com/questions/9127971/sort-array-by-popularity-and-time-in-ruby
  def to_histogram
    result = Hash.new(0)
    each { |x| result[x] += 1 }
    result
  end

  def most_popular_n(n)
    ret = []
    h = self.to_histogram
    n.times do
      ret << max_by { |x| h[x] }
      h.delete(ret.last)
    end
    ret
  end

  def most_popular
    most_popular_n(1).first
  end
end

white_balls = []
powerballs  = []

end_date   = Date.parse("1 November 1997").strftime("%m/%d/%Y")
start_date = Date.today.strftime("%m/%d/%Y")

puts "Getting Powerball drawing data from #{start_date} back to #{end_date} ..."
url = "http://www.powerball.com/powerball/pb_nbr_history.asp?startDate=#{start_date}&endDate=#{end_date}"
doc = open(url) { |f| Hpricot(f) }

puts "Got #{doc.to_s.length} bytes of Powerball data. Stand by for parsing."
doc.search("//table[@align='center']/tr[@align='center']").each do |row|
  cells = row.search("/td")
  drawing_date = Date.strptime(cells.first.inner_text, "%m/%d/%Y")
  white_balls.concat cells.search("[@background='/images/ball_white_40.gif']").map{|c| c.inner_text.to_i}
  powerballs << cells.search("[@background='/images/ball_red_40.gif']").last.inner_text.to_i
end

puts "Examining results of #{powerballs.count} drawings..."
puts "Top 5 numbers: #{white_balls.most_popular_n(5).join(', ')}"
puts "Top Powerball: #{powerballs.most_popular}"

puts
puts "Detail:"

puts
puts "Regular numbers"
puts "=================="
puts "Number       Draws"
puts "------       -----"

w_results = {}
white_balls.most_popular_n(white_balls.uniq.size).each do |num|
  puts "#{num.to_s.rjust(6)}#{' '*7}#{white_balls.count(num).to_s.rjust(5)}"
  w_results[num] = white_balls.count(num)
end

puts
puts "Powerballs"
puts "=================="
puts "Powerball    Draws"
puts "---------    -----"

p_results = {}
powerballs.most_popular_n(powerballs.uniq.size).each do |num|
  puts "#{num.to_s.rjust(9)}#{' '*4}#{powerballs.count(num).to_s.rjust(5)}"
  p_results[num] = powerballs.count(num)
end

puts
puts "White balls Histogram"

results = []
temp    = []
w_results.keys.sort.each do |key|
  temp << key
  temp << w_results[key]
  results << temp
  temp = []
end

puts AsciiCharts::Cartesian.new(results, :bar => true).draw

puts "Powerballs Histogram"

results = []
temp    = []
p_results.keys.sort.each do |key|
  temp << key
  temp << p_results[key]
  results << temp
  temp = []
end

puts AsciiCharts::Cartesian.new(results, :bar => true).draw

