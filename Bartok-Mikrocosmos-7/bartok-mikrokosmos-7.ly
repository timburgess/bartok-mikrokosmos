\version "2.20"

\header {
  title = 	"Mikrokosomos 7"
  subtitle = "Dotted Notes"
  composer =	"Bela Bartok (1881-1945)"
  maintainer = 	"Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 112
  \relative c'' {
  b2.-5 a4 g2. a4 g2 f e r b'4 a g a g2 f e r f2. g4 a g2. f g4 a b2. a2 g4 a g2 f e1 \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c' {
  b2.-1 a4 g2. a4 g2 f e r b'4 a g a g2 f e r f2. g4 a g2. f g4 a b2. a2 g4 a g2 f e1 \bar "|."
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
   
