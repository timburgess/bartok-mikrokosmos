\version "2.22"

\header {
  title = 	"Mikrokosmos 10"
  subtitle = "With Alternate Hands"
  composer =	"Bela Bartok (1881-1945)"
  maintainer = 	"Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 3/4
  \clef "treble"
  \tempo 4 = 108
  \relative c' {
   R2.*3 d4-1 e f g2 f4 e d e d r r R2.*2  f4 g f e2 d4 e f g a r r R2.*2
   a2. g2. f4 e d R2.*3 f4 g2 f e4 d r r \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 3/4
  \clef "bass"
  \relative c {
  d4-5 e f g2 f4 e d e d r r R2.*2 f4 g f e2 d4 e f g a r r R2.*2 a2. g2. f4 e d
  R2.*3 f4 g2 f e4 f e d R2. r4 r e d r r \bar "|."
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
   
