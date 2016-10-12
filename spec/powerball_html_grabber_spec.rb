require 'powerball_html_grabber'

RSpec.describe PowerballHtmlGrabber, type: :class do

  describe "#html" do
    before do
      start_date = Date.today.strftime("%m/%d/%Y")
      end_date = "11/01/1997"
      @expected_url = "http://www.powerball.com/powerball/pb_nbr_history.asp?startDate=#{start_date}&endDate=#{end_date}"
    end

    it "calls URI.parse with the correct URL" do
      uri = double("uri", read: nil)
      expect(URI).to receive(:parse).with(@expected_url).and_return(uri)
      PowerballHtmlGrabber.new.html
    end

    it "calls .read with on the parsed URI object" do
      uri = double("uri")
      allow(URI).to receive(:parse).with(@expected_url).and_return(uri)
      expect(uri).to receive(:read)
      PowerballHtmlGrabber.new.html
    end
  end

end
