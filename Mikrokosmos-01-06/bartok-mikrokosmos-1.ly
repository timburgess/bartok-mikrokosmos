\version "2.22"

\header {
  title = 	"Mikrokosmos 1"
  subtitle = "Six Unison Melodies - I"
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
  c2-1 d e1 f2 e d r e f g f e d c1 \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  c2-5 d e1 f2 e d r  e f g f e d c1 \bar "|."

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
   
