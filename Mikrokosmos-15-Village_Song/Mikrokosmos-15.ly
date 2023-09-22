\version "2.22"

\header {
  title = "Mikrokosmos 15"
  subtitle = "Village Song"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 124
  \relative c'' {
  g2-5 fis4 e d2 c d r
  d'2-5 cis4 b a2 g a r \break
  a2-1 b4 cis d2 e4 d
  r d,-1 e fis g2 a4 g g2-5 fis4 e d2 c d1 
   \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c' {
  g2-1 fis4 e d2 c d r
  d2-1 cis4 b a2 g a r \break
  a2-5 b4 cis d2 e4 d
  r d-5 e fis g2 a4 g g2-1 fis4 e d2 c d1 
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
   
