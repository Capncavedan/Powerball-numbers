require 'hpricot'

class PowerballHtmlParser

  def initialize html:
    @html = html
  end

  def powerballs
    @powerballs ||= drawing_rows_search(powerball_cell_identifier).map { |text| text.to_i }
  end

  def white_balls
    @white_balls ||= drawing_rows_search(white_ball_cell_identifier).map { |text| text.to_i }
  end

  def drawing_dates
    @drawing_dates ||= drawing_rows_search(date_cell_identifier).map { |text| Date.strptime(text, "%m/%d/%Y") }
  end


  private

  def drawing_rows_search cell_identifier
    [].tap do |results|
      drawing_rows.each do |drawing_row|
        results.concat drawing_row.search(cell_identifier).map{ |cell| cell.inner_text }
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

  def date_cell_identifier
    "/td b"
  end

end
