# Powerball Numbers

### Simple analysis of Powerball lottery stats with Enumerable

Lottery info is at http://www.powerball.com

Retrieves lottery drawing results from "today" back to the beginning of the Powerball epoch (1 Nov 1997) and lists the 5 most-often-drawn numbers and most-often-drawn Powerball, in addition to listing how many times each number and each Powerball has been drawn.

Note the numbers included in the game have expanded over time, so numbers in the 50s appear disproportionately few times.

Requires the hpricot gem.  Runs in 1.9.3; unsure of earlier versions.

```bash
➤ ruby ./powerball.rb
Getting Powerball drawing data from 11/27/2012 back to 11/01/1997 ...
Got 1824283 bytes of Powerball data. Stand by for parsing.
Examining results of 1573 drawings...
Top 5 numbers: 20, 41, 32, 26, 16
Top Powerball: 20

Detail:

Regular numbers
==================
Number       Draws
------       -----
    20         171
    41         169
    32         166
    26         164
    16         163
    42         162
    45         159
    22         158
     5         157
    49         157
    40         157
    39         156
    30         155
    48         153
    14         153
    19         153
    35         152
    12         152
    13         151
    43         150
    37         148
     8         148
    15         148
     7         148
    10         147
    27         144
     4         144
     9         144
    36         144
    17         144
    38         143
    34         142
    28         142
     2         142
    47         141
    24         140
    23         140
    44         138
     3         138
     6         138
    11         138
    18         137
    31         137
     1         136
    46         134
    21         131
    29         128
    33         128
    25         120
    50         104
    52          95
    51          94
    53          84
    54          65
    55          65
    59          43
    56          38
    58          37
    57          30

Powerballs
==================
Powerball    Draws
---------    -----
       20       53
        2       53
        6       51
       37       51
       14       47
       31       47
       23       46
        8       45
       33       44
       18       43
       11       43
       29       42
        1       41
       15       41
       13       39
       25       39
        5       39
       35       39
        9       39
       26       38
       21       38
       30       38
       24       38
       36       38
       17       37
       19       35
       32       34
       10       34
        4       33
       39       33
       28       32
       12       32
        3       32
       27       32
       22       31
       16       30
        7       30
       38       30
       34       29
       41       20
       40       19
       42       18

```