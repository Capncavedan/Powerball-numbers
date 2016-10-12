[![Travis CI Build Status](https://travis-ci.org/Capncavedan/Powerball-numbers.svg?branch=master)](https://travis-ci.org/Capncavedan/Powerball-numbers)

# Powerball Numbers

### Simple analysis of Powerball lottery stats with Enumerable

Lottery info is at [the Powerball website](http://www.powerball.com)

Retrieves lottery drawing results from "today" back to the beginning of the Powerball epoch (1 Nov 1997) and lists the 5 most-often-drawn numbers and most-often-drawn Powerball, in addition to listing how many times each number and each Powerball has been drawn.

Note the numbers included in the game have expanded over time, so numbers in the 50s or higher appear disproportionately fewer times.

Required gems: `hpricot` and `ascii_charts`.  Runs in MRI Ruby 2.3; unsure of earlier versions.

A nod to Alex D who [posted on StackOverflow](http://stackoverflow.com/questions/9127971/sort-array-by-popularity-and-time-in-ruby) with thoughts on sorting arrays by popularity


````bash

➜  Powerball-numbers git:(master) ruby ./powerball.rb 
Getting historical Powerball drawing data ...
Got 2336089 bytes of Powerball data. Stand by for parsing.
Examining results of 1977 drawings from 1997-11-01 through 2016-10-08...


=====================================
Top 5 white balls: 32, 41, 40, 16, 26
Top Powerball: 20
=====================================

Detail:

White balls
==================
Number       Draws
------       -----
    32         204
    41         199
    40         197
    16         195
    26         194
    12         193
    20         193
    39         193
    22         192
    49         191
     5         190
    14         189
    30         188
    19         188
    42         188
    13         188
    45         187
    10         185
    23         184
     8         183
    48         183
     2         182
     7         182
     9         182
    28         181
    11         178
    31         178
    17         177
    35         177
    15         176
    36         176
    34         176
    43         176
    27         174
    38         174
     3         173
    24         172
    37         172
     4         170
    47         170
    44         169
     6         167
    29         165
    18         164
    33         162
    25         162
    46         162
     1         160
    21         155
    52         137
    50         133
    51         119
    53         112
    54         107
    55          99
    59          71
    56          63
    58          63
    57          62
    64          17
    69          13
    62          12
    68          10
    67          10
    61           9
    60           9
    63           8
    66           8
    65           7

Powerballs
==================
Powerball    Draws
---------    -----
       20       67
        6       63
        2       61
       17       58
       14       58
       18       57
       23       57
       25       56
       11       56
       29       56
       15       55
        1       54
        8       54
       33       53
        9       52
        5       52
       24       51
       31       51
       37       51
       13       49
       19       49
       35       49
       21       48
       26       48
       12       47
       10       47
        7       45
        3       45
       16       44
       22       43
       32       43
       27       42
       30       42
       28       41
        4       39
       36       38
       34       36
       39       33
       38       30
       41       20
       40       19
       42       18

White ball histogram
 
 
220|                                                                                                                                                                                                               
200|             *                    *           *           *     *           *                 *                    *  *  *                       *                                                             
180|    *  *  *  *     *  *  *  *  *  *  *  *  *  *  *     *  *     *  *  *     *  *  *     *  *  *     *  *  *  *  *  *  *  *  *  *     *     *  *  *                                                             
160| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                                                             
140| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *     *                                                    
120| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                                                 
100| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                                           
 80| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *           *                               
 60| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                               
 40| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                               
 20| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *        *     *        *  *  * 
  0+-*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*-
     1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 
 
Powerball histogram
 
 
70|                                                                                                                              
65|                *                                         *                                                                   
60|    *           *                       *        *        *                                                                   
55| *  *           *     *        *        *  *     *  *     *        *     *           *           *                            
50| *  *        *  *     *  *     *     *  *  *     *  *  *  *  *     *  *  *  *        *     *     *     *     *                
45| *  *  *     *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *        *     *  *  *     *     *                
40| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *     *  *  *                
35| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *     *          
30| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *          
25| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *          
20| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * 
15| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * 
10| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * 
 5| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * 
 0+-*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*-
    1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 
 

````
