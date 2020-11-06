\version "2.20"

\header {
  title = "Mikrokosomos 13"
  subtitle = "Change of Position"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 3/4
  \clef "treble"
  \tempo 4 = 96
  \relative c' {
  c4-1 d e f g f e d2 c r4
  g'-1 a b c d c b a2 g r4
  g a b c2 r4
  g-5 f e d2 r4
  c d e f g f e d2 c2.
   \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 3/4
  \clef "bass"
  \relative c {
  c4-5 d e f g f e d2 c r4
  g-5 a b c d c b a2 g r4
  g a b c2 r4
  g'-1 f e d2 r4
  c d e f g f e d2 c2.
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
   
