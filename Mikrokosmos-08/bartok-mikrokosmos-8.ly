\version "2.22"

\header {
  title = 	"Mikrokosmos 8"
  subtitle = "Repetition"
  composer =	"Bela Bartok (1881-1945)"
  maintainer = 	"Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 128
  \relative c' {
  e2-1 e e fis g g g a b1 b b4 a g fis e r r2 a a a g fis fis fis e d1 d1 e4 fis g fis e r r2 \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  e2-5 e e fis g g g a b1 b b4 a g fis e r r2 a a a g fis fis fis e d1 d1 e4 fis g fis e r r2 \bar "|."
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
   
