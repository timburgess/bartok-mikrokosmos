\version "2.20"

\header {
  title = 	"Mikrokosomos 3"
  subtitle = "Six Unison Melodies - III"
  composer =	"Bela Bartok (1881-1945)"
  maintainer = 	"Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 96
  \relative c'' {
  a2-5 g f4 e f g a1 g2 f g4 f e d e1 f2 g f e f4 g a2 g1 f4 e d e d1   \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c' {
  a2-1 g f4 e f g a1 g2 f g4 f e d e1 f2 g f e f4 g a2 g1 f4 e d e d1 \bar "|."
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
   
