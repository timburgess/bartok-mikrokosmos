\version "2.22"

\header {
  title = "Mikrokosmos 23"
  subtitle = "Imitation and Inversion (I)"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 96
  \relative c' {
  d4-1\f( e f g a2 g4 f e2 d4) r4 r2 d4( e f g a2 g2 f4) r4 \break
  e( d e f g2 f4 e d e f) r4
  r2 e4( d e f g2 f4 e d2)
  \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
   r2 d4-5( e f g a2 g2 f4) r4 
   d4( e f g a2 g4 f e2 d4) r4
   r2 e4( d e f g2 f4 e d) r4
   e4( d e f g2 f4 e d1)
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
   
