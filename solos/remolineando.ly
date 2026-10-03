\version "2.26.0"
\language "english"

mus= \relative c' {
    \tempo 4 = 152
    \time 4/4
    \key c \minor
    c8 g4 ef'4 d8 c8 bf8 c8 g4 ef'4 d8 c8 bf8 bf4 bf4 r16 bf8 bf8 d8 c2
  }
  %A|BC|B|A CD E G|ED C|A|CDEE

acor= \chordmode{
    \skip8 c1:m c4:m~2 \skip8 bf4 bf2 r8 c2:m
  }