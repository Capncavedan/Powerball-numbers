require 'hpricot'

class PowerballHtmlParser

	def initialize html:
		@html = html
	end

	def drawings
		[]
	end

	def powerballs
		powerballs = []
		doc = Hpricot(@html)
		doc.search("//table[@align='center']/tr[@align='center']").each do |html_table_row|
		  html_table_cells = html_table_row.search("/td")
		  # drawing_date = Date.strptime(html_table_cells.first.inner_text, "%m/%d/%Y")
		  # white_balls.concat html_table_cells.search("[@background='/images/ball_white_40.gif']").map{ |cell| cell.inner_text.to_i }
		  powerballs << html_table_cells.search("[@background='/images/ball_red_40.gif']").last.inner_text.to_i
		end
	  powerballs
	end

end
