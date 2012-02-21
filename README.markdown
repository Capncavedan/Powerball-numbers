# Powerball Numbers

### Simple analysis of Powerball lottery number stats, using Ruby's Enumerable.

http://www.powerball.com

Pulls from "today" back to the beginning of the Powerball lottery epoch (1 Nov 1997) and tabulates the most popular numbers.

Requires the hpricot gem.  Running in 1.9.3

```bash
 ➤ ruby ./powerball.rb 
Getting Powerball drawing data from 02/20/2012 back to 11/01/1997 ...
Got 1738801 bytes of Powerball data. Stand by for parsing.
Examining results of 1493 drawings...
Top 5 numbers: 41, 20, 32, 16, 26
Top Powerball: 37
 ➤ 
 ```