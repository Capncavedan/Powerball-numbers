require 'hpricot'

class PowerballHtmlParser

  def initialize html:
    @html = html
  end

  def drawings
    []
  end

  def powerballs
    drawing_rows_search powerball_cell_identifier
  end

  def white_balls
    drawing_rows_search white_ball_cell_identifier
  end


  private

  def drawing_rows_search cell_identifier
    [].tap do |nums|
      drawing_rows.each do |drawing_row|
        nums.concat drawing_row.search(cell_identifier).map{ |cell| cell.inner_text.to_i }
      end
    end
  end

  def parsed_html
    @parsed_html ||= Hpricot @html
  end

  def drawing_rows
    parsed_html.search("//table[@align='center']/tr[@align='center']")
  end

  def powerball_cell_identifier
    "/td[@background='/images/ball_red_40.gif']"
  end

  def white_ball_cell_identifier
    "/td[@background='/images/ball_white_40.gif']"
  end

end
