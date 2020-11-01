\version "2.20"

\header {
  title = 	"Mikrokosomos 6"
  subtitle = "Six Unison Melodies - VI"
  composer =	"Bela Bartok (1881-1945)"
  maintainer = 	"Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 104
  \relative c'' {
  g-1 a b2 c4 b a2 b4 a b c d1 c4 d c2 b4 a b2 r4 a b c b2 a g1 \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  g4-5 a b2 c4 b a2 b4 a b c d1 c4 d c2 b4 a b2 r4 a b c b2 a g1 \bar "|."
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
   
