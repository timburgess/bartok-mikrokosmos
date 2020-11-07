\version "2.20"

\header {
  title = "Mikrokosomos 14"
  subtitle = "Question and Answer"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 104
  \relative c'' {
  a2-5 g a g a4 g f e f2 g a r2
  d,2 e d e d4 e f g f2 e d r
  c'-4 d c4 b a g a2 b c r
  d,-2 c d4 e f g f2 e d r
   \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c' {
  a2-1 g a g a4 g f e f2 g a r2
  d,2 e d e d4 e f g f2 e d r
  c'-2 d c4 b a g a2 b c r
  d,-4 c d4 e f g f2 e d r
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
   
