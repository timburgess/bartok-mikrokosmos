\version "2.22"

\header {
  title = "Mikrokosmos 24"
  subtitle = "Pastorale"
  composer = "Bela Bartok (1881-1945)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key a \major
  \numericTimeSignature \time 3/4
  \clef "treble"
  \tempo 4 = 120
  \relative c' {
  fis4\p-3( e d e d e d2. e2. fis4 e d \break
  e d e d) e2( fis2 gis4 a gis fis gis a gis fis2. \break
  gis2. a4 gis4 fis | gis a gis fis) r4 r4 
  r2. fis4( e d \break
  e d e fis2. gis2. a4 gis fis e d e d) r4 r4

  \bar "|."
  }
}

lefthand =  {
  \key a \major
  \numericTimeSignature \time 3/4
  \clef "bass"
  \relative c {
   a2.~-4( a4 b4 cis | d2.~ d4 cis b a2.~ | a4 b cis | d2.) 
   r2.
   cis4( d2 cis2 b4 a gis a
   b cis d | cis2.~ cis2 b4 a gis a) r4 a( gis a2.~ a4 b cis 
   d2.~ d4 cis b a2 gis4 a b cis d) r4 r4
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
   
