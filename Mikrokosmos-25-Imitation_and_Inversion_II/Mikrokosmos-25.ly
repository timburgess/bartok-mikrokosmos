\version "2.22"

\header {
  title = "Mikrokosmos 25"
  subtitle = "Imitation and Inversion (II)"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key d \major
  \numericTimeSignature \time 2/4
  \clef "treble"
  \tempo 4 = 150
  \relative c' {
  R2 | b4-1( cis d e f2~ f4 e d cis b) r4 | cis( d cis b) | \break
  R2 | b4(   cis d e f2~ f4 e d cis b) r4 | cis( d cis b) | R2 | b4\sf r4 \break
  cis4( d e2~ e4 d cis d e2 d4 cis b) r4
  cis4( d e2~ \break  e4 d cis d e f) R2 f4\sf( r4 R2 f4 e d e f2~ \break
  f4 e d cis d2~ d4 e d cis b) r4 cis( b) R2
  \bar "|."
  }
}

lefthand =  {
  \key d \major
  \numericTimeSignature \time 2/4
  \clef "bass"
  \relative c {
  b4-5\f( cis d e f2~ f4 e d cis b) r4 | cis( d cis b) | R2
  b4\sf r4 | R2 | b4-5( cis d e f2~ f4 e d cis b) r4 | cis( d cis b) | R2
  R2 cis4( d e2~ e4 d cis d e2 d4 cis b) r4
  cis4( d e2~ e4 d cis d e f4) R2 f4( e d e f2~ f4
  e4 d cis d2~ | d4 e d cis b) r4 cis( b) R2 b4\sf r4
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
   
