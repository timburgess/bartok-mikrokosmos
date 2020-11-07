\version "2.20"

\header {
  title = "Mikrokosomos 6"
  subtitle = "Parallel Motion with Change of Position"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 104
  \relative c' {
  f2-4 g f e4 d e d c d e2 f g1
  f2 e4 d c2 d e r
  c'-4 d c b4 a b c b a g2 a4 b c b a2 b a g r
  f-4 g f e4 d c2 d e1
  f4 e2 d4 c2 d c1 
   \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  d2-2 e d c4 b c b a b c2 d e1
  d2 c4 b a2 b c r
  e-2 f e b4 a b c b a g2 c4 d e d c2 d c b r
  d-2 e d c4 b a2 b c1
  d4 c2 b4 a2 b c1
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
   
