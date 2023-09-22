\version "2.22"

\header {
  title = "Mikrokosmos 21"
  subtitle = "Four Unison Melodies (IV)"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 3/4
  \clef "treble"
  \tempo 4 = 130
  \relative c'' {
  a4-1( b c b c d c a2 d4 c b c e2 d4 c b a2 c4 b2.) \break
  e4( d c) r2. c4( b a b c d e2.~ e4 c d a) r4 r4 r2.  
  \bar "|."
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 3/4
  \clef "bass"
  \relative c {
  a4-5( b c b c d c a2 d4 c b c e2 d4 c b a2 c4 b2.)
  r2. d4( c b) r4 r4 a( b c d e2.~ e2.~ e4 c d a) r4 r4


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
   
