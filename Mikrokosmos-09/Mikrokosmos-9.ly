\version "2.22"

\header {
  title = 	"Mikrokosmos 9"
  subtitle = "Syncopation"
  composer =	"Bela Bartok (1881-1945)"
  maintainer = 	"Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 96
  \relative c' {
  c2-1 d ~ d4 c d e f2 g ~ g4 f e d c2 d4 e f2 e d r e4 f e d e1 ~ e4 d e f g1 ~ g2 f4 e f e d2 c1 \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  c2-5 d ~ d4 c d e f2 g ~ g4 f e d c2 d4 e f2 e d r e4 f e d e1 ~ e4 d e f g1 ~ g2 f4 e f e d2 c1 \bar "|."
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
   
