require 'open-uri'

class PowerballHtmlGrabber

  def html
    URI.parse(url).read
  end


  private

  def end_date
    Date.parse("1 November 1997").strftime("%m/%d/%Y")
  end

  def start_date
    Date.today.strftime("%m/%d/%Y")
  end

  def url
    "http://www.powerball.com/powerball/pb_nbr_history.asp?startDate=#{start_date}&endDate=#{end_date}"
  end

end
