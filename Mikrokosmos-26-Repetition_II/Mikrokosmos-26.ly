\version "2.24"

\header {
  title = "Mikrokosmos 26"
  subtitle = "Repetition (II)"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 128
  \relative c' {
  d2 e4 fis | g2 g2 | g2( fis2) | e4 d e fis | g2 g2 | g2 fis2 | e2 fis4 g | a2 a2 \break
  a2 g4 fis | g fis e2 | fis4 e d2 | e2. fis4 | g2 g2 | g4 fis e d | e1 | e4 r4 r2
  \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  R1 | a2 b4 c4 | d2 d2 | d2 cis2 | b4 a b cis | d2 d2 | d2 cis2 | b2 cis4 d4 |
  e2 e2 | e2 d4 cis | d2 cis4 b | cis b a2 | a4 b cis d | e d cis b | a1 | a4 r4 R2 
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
   
