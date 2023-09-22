\version "2.22"

\header {
  title = 	"Mikrokosmos 2"
  subtitle = "Six Unison Melodies - II"
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
  c-1 d e d e f g2 f4 e d c d2 e f4 g f e d c d2 e4 f e d c1 \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  c4-5 d e d e f g2 f4 e d c d2 e f4 g f e d c d2 e4 f e d c1 \bar "|."

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
   
