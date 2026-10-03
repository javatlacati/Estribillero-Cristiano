\version "2.26.0"
\language "english"

mus= \relative c' {
    \tempo 4 = 152
    \time 4/4
    \key c \minor
    g''8 c,8 f8 c8 ef8 c8 f8 c8 g'8 ef8 c8 bf'8~ 8 c,8 bf'8 c8
    g8 c,8 f8 c8 ef8 c8 f8 c8 g'8 ef8 c8 bf'8~ 8 c,8 bf'8 c8
    g8 c,8 f8 c8 ef8 c8 f8 c8 g'8 ef8 c8 bf'8~ 8 c,8 bf'8 c8~ 8
  }

acor= \chordmode{
    c1:m ~1  af1~1 bf1~1 c4:m
  }