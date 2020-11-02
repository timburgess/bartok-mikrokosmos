\version "2.20"

\header {
  title = 	"Mikrokosomos 2b"
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
  e-5 d c d c b a2 b4 c d e d2 c b4 a b c d e d2 c4 b a b a1  \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  e4-1 d c d c b a2 b4 c d e d2 c b4 a b c d e d2 c4 b a b a1  \bar "|."
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
   
