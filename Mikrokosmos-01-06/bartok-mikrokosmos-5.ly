\version "2.20"

\header {
  title = 	"Mikrokosomos 5"
  subtitle = "Six Unison Melodies - V"
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
  a-2 b c2 d c4 b a1 b4 c d2 c b4 a b1 c4 b a g a2 b c4 d c b a2 g a4 b c2 b a4 g a1 \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  a4-4 b c2 d c4 b a1 b4 c d2 c b4 a b1 c4 b a g a2 b c4 d c b a2 g a4 b c2 b a4 g a1 \bar "|."
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
   
