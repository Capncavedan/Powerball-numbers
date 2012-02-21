# Powerball Numbers

### Simple analysis of Powerball lottery stats with Enumerable

Lottery info is at http://www.powerball.com

Retrieves lottery drawing results from "today" back to the beginning of the Powerball epoch (1 Nov 1997) and lists the 5 most popular numbers and most popular Powerball, in addition to listing how many times each number and each Powerball has been drawn.

Note the numbers included have expanded over time, so some (white balls in the 50s) appear disproportionately few times.

Requires the hpricot gem.  Runs in 1.9.3; unsure of earlier versions.

```bash
➤ ruby ./powerball.rb
Getting Powerball drawing data from 02/20/2012 back to 11/01/1997 ...
Got 1738801 bytes of Powerball data. Stand by for parsing.
Examining results of 1493 drawings...
Top 5 numbers: 41, 20, 32, 16, 26
Top Powerball: 37

Detail:

Regular numbers
==================
Number       Draws
------       -----
    41         162
    20         161
    32         160
    16         155
    26         155
    40         154
    42         154
    45         152
    22         152
    12         150
     5         148
    19         148
    30         148
    39         147
    49         147
    48         146
    37         145
    43         145
    13         145
    35         145
    14         142
    10         141
    15         141
    38         140
    27         140
     8         139
     2         139
     9         139
    17         138
    28         137
    36         137
     7         137
    34         136
     4         136
    47         136
    23         134
    24         134
    31         132
     6         131
    18         131
    11         130
    44         129
     3         129
    21         127
     1         126
    46         125
    33         123
    29         119
    25         117
    50          97
    52          93
    51          88
    53          78
    54          59
    55          56
    59          33
    58          27
    56          26
    57          24

Powerballs
==================
Powerball    Draws
---------    -----
       37       51
        2       50
       20       50
        6       47
       31       47
       11       43
       14       43
        8       43
       23       42
       15       41
       18       39
        9       39
       33       38
       25       38
       36       38
        5       37
        1       37
       24       37
       17       37
       21       37
       35       36
       13       36
       26       36
       29       36
       30       35
       19       34
       39       33
        4       31
       32       31
        3       31
       10       31
       28       30
       12       30
       38       30
        7       29
       27       29
       34       28
       22       28
       16       28
       41       20
       40       19
       42       18

➤ 
```