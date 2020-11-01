\version "2.20"

\header {
  title = 	"Mikrokosomos 4"
  subtitle = "Six Unison Melodies - IV"
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
  b-1 c d2 c4 d e2 d4 c d e f2 e f4 e d2 e d4 c b c d2 c1 \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  b4-5 c d2 c4 d e2 d4 c d e f2 e f4 e d2 e d4 c b c d2 c1 \bar "|."
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
   
