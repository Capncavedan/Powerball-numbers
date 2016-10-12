require 'rubygems'
require 'open-uri'
require 'hpricot'
require 'date'
require 'ascii_charts'

require_relative 'lib/powerball_html_parser'

module Enumerable
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

end_date   = Date.parse("1 November 1997").strftime("%m/%d/%Y")
start_date = Date.today.strftime("%m/%d/%Y")

puts "Getting Powerball drawing data from #{start_date} back to #{end_date} ..."
url = "http://www.powerball.com/powerball/pb_nbr_history.asp?startDate=#{start_date}&endDate=#{end_date}"
html = open(url).read
puts "Got #{html.length} bytes of Powerball data. Stand by for parsing."

parser = PowerballHtmlParser.new(html: html)
white_balls = parser.white_balls
powerballs  = parser.powerballs

puts "Examining results of #{powerballs.count} drawings..."

puts
puts

puts "====================================="
puts "Top 5 white balls: #{white_balls.most_popular_n(5).join(', ')}"
puts "Top Powerball: #{powerballs.most_popular}"
puts "====================================="

puts
puts "Detail:"

puts
puts "White balls"
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


puts "White ball histogram"
white_ball_histogram = w_results.collect{ |key, val| [key, val] }.sort_by{ |arr| arr.first }
puts AsciiCharts::Cartesian.new(white_ball_histogram, bar: true).draw


puts "Powerball histogram"
powerball_histogram = p_results.collect{ |key, val| [key, val] }.sort_by{ |arr| arr.first }
puts AsciiCharts::Cartesian.new(powerball_histogram, bar: true).draw

