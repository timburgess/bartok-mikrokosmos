\version "2.20"

\header {
  title = "Mikrokosomos 12"
  subtitle = "Reflection"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 2/2
  \clef "treble"
  \tempo 4 = 100
  \relative c'' {
  a2-2 b4 c d2 c d4 c b a b c d r
  a2 b4 c d2 c d4 c b a g a b r c b a b
  c b a b c b a b c b a g a2 b4 c d2 c
  \time 3/2
  d4 c b a b c
  \time 2/2
  d2 c d4 c b a b c d r
   \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 2/2
  \clef "bass"
  \relative c' {
  g2-2 f4 e d2 e d4 e f g f e d r
  g2 f4 e d2 e d4 e f g a g f r e f g f
  e f g f e f g f e f g a g2 f4 e d2 e
  \time 3/2
  d4 e f g f e
  \time 2/2
  d2 e f4 r r g f e d r
  \bar "|."
  }
}

\score {
   \context PianoStaff << 
    \context Staff = "one" <<
      \righthand
    >>
    \context Staff = "two" <<
      \lefthand
    >>
  >>
  \layout { }
  \midi { }
}
   
