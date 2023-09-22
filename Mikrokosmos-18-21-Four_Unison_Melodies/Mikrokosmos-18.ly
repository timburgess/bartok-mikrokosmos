\version "2.22"

\header {
  title = "Mikrokosmos 18"
  subtitle = "Four Unison Melodies (I)"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 120
  \relative c'' {
  a2-5( g4 a g2 d2 e2 f2 g4 f e d e1) | \break
  a2( g4 a g2 d2 e2 f2 g4 f a g d1) 
  \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c' {
  a2-1( g4 a g2 d2 e2 f2 g4 f e d e1) |
  a2( g4 a g2 d2 e2 f2 g4 f a g d1) |
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
   
