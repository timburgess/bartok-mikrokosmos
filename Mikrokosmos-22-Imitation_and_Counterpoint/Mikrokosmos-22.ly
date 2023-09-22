\version "2.22"

\header {
  title = "Mikrokosmos 22"
  subtitle = "Imitation and Counterpoint"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 136
  \relative c'' {
  r1-1 | g2( a4 b | c2 b2 | a2 b4 c | d1~ | d4 c b a | \break
  g2 a4 b c1) |
  d2( c4 b |  a2 b2) | r4 c( b a | \break
  g2 a2) b4( a b c b a g2 a1~ a1)
  \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c, {
  d2-5( e4 f g2 f2 | e2 f4 g a2 e2 f4 e f g a1~ a1~ a2 g2 f2)
  r2 a2( g4 f e2 f2) r4 g4( f e d2 e2 f2 g2 f1~ f1)
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
   
