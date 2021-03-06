require 'powerball_html_parser'

def sample_drawing_html
  <<-TEXT
<table align=center>
<tr valign=middle align=center>
<td><b>10/5/2016</b></td>
<td width=39 height=40 background=/images/ball_white_40.gif class=cssNumber-24>8</td>
<td width=39 height=40 background=/images/ball_white_40.gif class=cssNumber-24>18</td>
<td width=39 height=40 background=/images/ball_white_40.gif class=cssNumber-24>27</td>
<td width=39 height=40 background=/images/ball_white_40.gif class=cssNumber-24>29</td>
<td width=39 height=40 background=/images/ball_white_40.gif class=cssNumber-24>60</td>
<td width=15>&nbsp;</td>
<td width=39 height=40 background=/images/ball_red_40.gif class=cssNumber-24>15</td>
<td width=15>&nbsp;</td>
</tr>
</table>
TEXT
end

RSpec.describe PowerballHtmlParser, type: :class do

  describe "instantiation" do
    it "can be instantiated with some HTML" do
      expect {
        PowerballHtmlParser.new html: sample_drawing_html
      }.to_not raise_error
    end
  end

  describe "#powerballs" do
    it "gets the right result from passed-in HTML" do
      parser = PowerballHtmlParser.new html: sample_drawing_html
      expect(parser.powerballs).to eq [15]
    end
  end

  describe "#white_balls" do
    it "gets the right result from passed-in HTML" do
      parser = PowerballHtmlParser.new html: sample_drawing_html
      expect(parser.white_balls).to eq [8, 18, 27, 29, 60]
    end
  end

  describe "#drawing_dates" do
    it "gets the right result from passed-in HTML" do
      parser = PowerballHtmlParser.new html: sample_drawing_html
      expect(parser.drawing_dates).to eq [ Date.parse("2016-10-05") ]
    end
  end

end
