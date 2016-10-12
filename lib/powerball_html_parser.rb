require 'hpricot'

class PowerballHtmlParser

  def initialize html:
    @html = html
  end

  def drawings
    []
  end

  def powerballs
    ([]).tap do |powerballs|
      drawing_rows.each do |drawing_row|
        powerballs << drawing_row.search(powerball_cell_identifier).last.inner_text.to_i
      end
    end
  end


  private

  def parsed_html
    @parsed_html ||= Hpricot @html
  end

  def drawing_rows
    parsed_html.search("//table[@align='center']/tr[@align='center']")
  end

  def powerball_cell_identifier
    "/td[@background='/images/ball_red_40.gif']"
  end

end
