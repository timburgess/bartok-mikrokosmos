\version "2.22"

\header {
  title = 	"Mikrokosmos 11"
  subtitle = "Parallel Motion"
  composer =	"Bela Bartok (1881-1945)"
  maintainer = 	"Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 140
  \relative c'' {
  a-2 b c2 d c4 b a b c b a2 g
  a4 b c d c b a g a2 b a r2
  a4 b c2 d c4 b a b c b a2 g
  r4 a b c b a g a g1 ~ g
   \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  f4-4 g a2 b a4 g f g a g f2 e
  f4 g a b a g f e f2 g f r2
  f4 g a2 b a4 g f g a g f2 e
  r4 f g a g f e f g1 ~ g
  \bar "|."
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
   
