\version "2.22"

\header {
  title = "Mikrokosmos 19"
  subtitle = "Four Unison Melodies (II)"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 104
  \relative c'' {
  d4-2( e c e d2 e4 c d e c2) | f4( g e g f2 g4 e f g e2) \break
  g4( f d e c2 f4 d e f g2)
  g4( f d e c2 d4 f e2 d2 c1)
  \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  d4-4( e c e d2 e4 c d e c2) f4( g e g f2 g4 e f g e2) 
  g4( f d e c2 f4 d e f g2)
  g4( f d e c2 d4 f e2 d2 c1)
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
   
