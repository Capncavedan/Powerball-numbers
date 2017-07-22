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
Got 2434104 bytes of Powerball data. Stand by for parsing.
Examining results of 2058 drawings from 1997-11-01 through 2017-07-19...


=====================================
Top 5 white balls: 32, 41, 16, 40, 20
Top Powerball: 20
=====================================

Detail:

White balls
==================
Number       Draws
------       -----
    32         214
    41         209
    16         207
    40         204
    20         200
    26         200
    22         198
    39         198
     5         197
    42         196
    49         196
    12         196
    45         195
    13         194
    10         193
    19         193
    14         193
    23         192
    48         192
    28         192
     9         191
    30         191
     8         190
     2         186
    31         185
    17         184
     7         184
    43         181
    37         180
    36         180
     3         180
    11         180
    38         179
    15         178
    27         177
    34         177
    35         177
    24         175
    44         175
    18         173
     4         173
    47         173
    29         170
    33         170
     1         169
     6         169
    46         168
    25         167
    21         163
    52         144
    50         136
    51         124
    53         120
    54         115
    55         103
    59          77
    57          68
    58          67
    56          66
    64          23
    61          19
    62          19
    63          18
    68          17
    69          17
    66          15
    67          15
    60          12
    65          11

Powerballs
==================
Powerball    Draws
---------    -----
       20       70
        6       65
        2       65
       17       61
       15       60
       23       59
        9       58
       25       58
       11       58
       14       58
        8       57
       18       57
       24       56
        5       56
       29       56
        1       55
       13       54
       21       53
       19       53
       33       53
       10       51
       31       51
       37       51
       26       50
       16       49
        3       49
       35       49
       12       48
        7       47
       22       46
        4       43
       32       43
       27       42
       30       42
       28       41
       36       38
       34       36
       39       33
       38       30
       41       20
       40       19
       42       18

White ball histogram
 
 
220|                                                                                              *                                                                                                                
200|             *        *  *  *     *  *  *     *        *  *     *  *        *     *     *     *                    *  *  *  *        *        *  *                                                             
180|    *  *  *  *     *  *  *  *  *  *  *  *  *  *  *  *  *  *     *  *  *     *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *     *  *  *                                                             
160| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                                                             
140| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *     *                                                    
120| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                                              
100| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                                           
 80| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *           *                               
 60| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                               
 40| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *                               
 20| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * 
  0+-*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*-
     1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 
 
Powerball histogram
 
 
70|                                                          *                                                                   
65|    *           *                                         *                                                                   
60|    *           *        *     *        *  *     *        *        *     *                                                    
55| *  *        *  *     *  *     *     *  *  *     *  *  *  *  *     *  *  *           *           *                            
50| *  *  *     *  *     *  *  *  *  *  *  *  *  *  *  *  *  *  *     *  *  *  *        *     *     *     *     *                
45| *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *        *     *  *  *     *     *                
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
 
➜  Powerball-numbers git:(master) 


````
