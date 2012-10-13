# Powerball Numbers

### Simple analysis of Powerball lottery stats with Enumerable

Lottery info is at http://www.powerball.com

Retrieves lottery drawing results from "today" back to the beginning of the Powerball epoch (1 Nov 1997) and lists the 5 most-often-drawn numbers and most-often-drawn Powerball, in addition to listing how many times each number and each Powerball has been drawn.

Note the numbers included in the game have expanded over time, so numbers in the 50s appear disproportionately few times.

Requires the hpricot gem.  Runs in 1.9.3; unsure of earlier versions.

```bash
➤ ruby ./powerball.rb
Getting Powerball drawing data from 10/13/2012 back to 11/01/1997 ...
Got 1810330 bytes of Powerball data. Stand by for parsing.
Examining results of 1560 drawings...
Top 5 numbers: 20, 41, 26, 16, 32
Top Powerball: 2

Detail:

Regular numbers
==================
Number       Draws
------       -----
    20         171
    41         169
    26         163
    16         163
    32         162
    42         160
    40         157
    45         157
     5         156
    49         156
    22         156
    39         155
    14         153
    19         153
    35         152
    48         152
    30         152
    12         152
    13         151
    43         150
    15         147
    37         147
     8         146
     7         146
    10         145
    17         144
    36         143
    38         143
     9         143
     4         142
    27         142
    28         141
     2         141
    47         141
    34         140
    24         139
    23         138
     6         138
    11         138
     3         136
    18         135
    44         135
    31         135
     1         134
    46         134
    21         129
    29         128
    33         128
    25         119
    50         101
    51          94
    52          94
    53          84
    55          64
    54          63
    59          42
    56          37
    58          34
    57          30

Powerballs
==================
Powerball    Draws
---------    -----
        2       53
        6       51
       20       51
       37       51
       14       47
       31       47
       23       46
        8       45
       33       43
       11       43
       29       42
       18       42
        1       41
       15       41
        9       39
       35       38
       21       38
       13       38
       30       38
       24       38
        5       38
       25       38
       36       38
       26       37
       17       37
       19       35
       10       33
       32       33
       39       33
       28       32
       12       32
        4       32
        3       32
       27       32
       22       31
       16       30
        7       30
       38       30
       34       28
       41       20
       40       19
       42       18

```