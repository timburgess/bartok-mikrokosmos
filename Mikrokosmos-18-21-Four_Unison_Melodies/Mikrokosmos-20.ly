\version "2.22"

\header {
  title = "Mikrokosmos 20"
  subtitle = "Four Unison Melodies (III)"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 100
  \relative c'' {
  g2-1( a2 d2) r2 | d2( c2 g2) r2 | g4( a d c a g d'2 b1) \break
  r2 c2( a4 g a b c2 a4 b a d c b g2)
  a2( g2 a4 b c2 g1~ g1)
  \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c' {
  g2-1( a2 d2) r2 | d2( c2 g2) r2 | g4( a d c a g d'2 b1)
  r2 c2( a4 g a b c2 a4 b a d c b g2)
  a2( g2 a4 b c2 g1~ g1)

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
   
