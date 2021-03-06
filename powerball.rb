require 'rubygems'
require 'ascii_charts'

require_relative 'lib/enumerable'
require_relative 'lib/powerball_html_grabber'
require_relative 'lib/powerball_html_parser'


puts "Getting historical Powerball drawing data ..."
html = PowerballHtmlGrabber.new.html

puts "Got #{html.length} bytes of Powerball data. Stand by for parsing."
parser = PowerballHtmlParser.new(html: html)

puts "Examining results of #{parser.powerballs.count} drawings from #{parser.drawing_dates.min} through #{parser.drawing_dates.max}..."
puts
puts

puts "====================================="
puts "Top 5 white balls: #{parser.white_balls.most_popular_n(5).join(', ')}"
puts "Top Powerball: #{parser.powerballs.most_popular}"
puts "====================================="

puts
puts "Detail:"

puts
puts "White balls"
puts "=================="
puts "Number       Draws"
puts "------       -----"
w_results = {}
parser.white_balls.most_popular_n(parser.white_balls.uniq.size).each do |num|
  puts "#{num.to_s.rjust(6)}#{' '*7}#{parser.white_balls.count(num).to_s.rjust(5)}"
  w_results[num] = parser.white_balls.count(num)
end

puts
puts "Powerballs"
puts "=================="
puts "Powerball    Draws"
puts "---------    -----"
p_results = {}
parser.powerballs.most_popular_n(parser.powerballs.uniq.size).each do |num|
  puts "#{num.to_s.rjust(9)}#{' '*4}#{parser.powerballs.count(num).to_s.rjust(5)}"
  p_results[num] = parser.powerballs.count(num)
end


puts


puts "White ball histogram"
white_ball_histogram = w_results.collect{ |key, val| [key, val] }.sort_by{ |arr| arr.first }
puts AsciiCharts::Cartesian.new(white_ball_histogram, bar: true).draw


puts "Powerball histogram"
powerball_histogram = p_results.collect{ |key, val| [key, val] }.sort_by{ |arr| arr.first }
puts AsciiCharts::Cartesian.new(powerball_histogram, bar: true).draw

