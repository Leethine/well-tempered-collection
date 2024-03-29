%! Title: Orchestral Suite in D, BWV 1068
%! Subtitle: Air, arranged for organ
%! Type: raw
%! Status: working
%! Remark:

\version "2.22.1"
%% Generated by lilypond-book
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=14.5\cm,noragged-right,papersize=a5,quote]
%\include "lilypond-book-preamble.ly"
\include "italiano.ly"

%****************************************************************
% Start cut-&-pastable-section

%****************************************************************

\paper {
  % Set paper
  #(set-paper-size "b5")
  indent = 0\mm
  line-width = 15.5\cm
  ragged-right = ##f
  line-width = #(- line-width (* mm 3.000000) (* mm 1))
}

\layout {
  \context {
    \Score
    %\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    %\override SpacingSpanner.uniform-stretching = ##t    
  }
}

%*****************************************
%  Set Header
%*****************************************
\header {
  title = "Air en Ré Majeur"
  subtitle = "Extrait de Suite d'Orchestre No.° 3"
  composer = "J.S. Bach"
  opus = "BWV 1068"
  tagline = "© 2022 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 4/4
MyTempo = \tempo "Lento"
MyKey = \key re \major
PieceName = ""

ViolinoI = \relative fa'' {
  \repeat volta 2 {
  % bar 1 - 3
  fad1~ |
  fad8 si16 sol \grace fad8_( mi16)( re dod re) dod4 \grace si8_( la4) |
  la'2~ la16 fad do!( si) mi red la'( sol) |
  
  % bar 4 - 6
  sol2~ sol16 mi si( la) re( dod) sol'( fad) |
  fad4. sold16( la) re,8 re32( mi fad16~) fad mi mi( re) |
  }
  \alternative {
    { dod16( si) si32( dod re16~) re8 dod16 si la2 | }
    { dod16( si) si32( dod re16~) re8 dod16 si la2 | }
  }
  \bar ":|."
  
  % bar 7 - 9
  dod4~ dod16 re32( dod si dod la16) la'4. do,8 |
  si8 si'~ si16 la sol fad \grace fad8_( sol4~) sol32( fad mi red dod16 si) |
  lad si dod8~ dod16 re mi8~ mi16 fad sol8~ sol fad |
  
  % bar 10 - 12
  mi16 re dod si dod re32( mi) re8 \grace dod8_( si2) |
  re4~ re16 fad mi re si'4. la16( sold) |
  \grace fad8_( mi16) la16 la,8 si8. dod32 re dod8.\trill si16 \grace si8_( la4) |
  
  % bar 13 - 15
  re4. fad16( mi) mi4. sol16( fad) |
  fad4. la16( sol) sol2 |
  la,4~ la16 dod mi sol sol mi fad4~ fad16 sol32 la |
  
  % bar 16 - 18
  re,4~ re16 fad la do \grace do8_( si4.) re,8 |
  dod!16 mi sol4 si,8 la8 mi'16 fad32 sol~ sol16 fad8 mi16 |
  re32( dod si8 dod16) re8( dod16\trill) re re2\fermata |
  
  \bar "|."
}

ViolinoII = \relative re'' {
  \repeat volta 2 {
  % bar 1 - 3
  re1~ |
  re4 si la2~ |
  la8 do16 si do8 la'16 do, si8 r8 r4 |
  
  % bar 4 - 6
  si8 mi16( re) mi( fad sol mi) la,8 r8 r4 |
  la2~ la8 sold16 la si8 sold |
  }
  \alternative {
    { la8 la8~ la8 sold8 mi2 }
    { la8 la8~ la8 sold8 mi2 }
  }
  \bar ":|."
  
  % bar 7 - 9
  la2~ la16 si do!8~ do16 si la sol |
  fad4. red'8 mi2~ |
  mi2~ mi16 re dod si lad si dod8 |
  
  % bar 10 - 12
  si8 si si lad fad2 |
  mi4 fad si,8 mi16 fad sold la si8~ |
  si8 la4 sold8 la2~ |
  
  % bar 13 - 15
  la8 si16 do si dod re8~ re8 dod16 si dod red mi8~ |
  mi8 red16 dod red mi fad8~ fad16 red mi si mi,4~ |
  mi16 dod mi la dod8 la~ la dod16 re re,4~ |
  
  % bar 16 - 18
  re8 mi fad4 sol2~ |
  sol8 si mi4~ mi16 re dod si la8 si |
  la4 sol16\trill( fad sol8) fad2 |
  
  \bar "|."
}

Viola = \relative la' {
\repeat volta 2 {
  % bar 1 - 3
  \stemDown
  la2 si2 |
  s1 |
  s1 |
  
  % bar 4 - 6
  s1 |
  s1 |
  }
  \alternative {
    { s1 }
    { s1 }
  }
  \bar ":|."
  
  % bar 7 - 9
  
  % bar 10 - 12
  
  % bar 13 - 15
  
  % bar 16 - 18
}

Continuo = \relative re {
  \repeat volta 2 {
  % bar 1 - 3
  re8 re' dod dod, si si' la la, |
  sol sol' sold sold, la la' sol! sol,! |
  fad fad' mi mi, red red' si si' |
  
  % bar 4 - 6
  mi,, mi' re! re,! dod dod' la la' |
  re, re' dod dod, si si' sold mi |
  }
  \alternative {
    { la re, mi mi, la16( si dod re mi sol! fad mi) }
    { la8 re, mi mi, la2 }
  }
  \bar ":|."
  
  % bar 7 - 9
  la8 la' sol sol, fad fad' mi mi, |
  red red' fad si, mi mi' re! re,! |
  dod dod' si si, lad si dod lad |
  
  % bar 10 - 12
  si sol' mi fad si, si' la! la,! |
  sold sold' fad fad, mi mi' re re, |
  dod dod' re mi la, la' sol! sol,! |
  
  % bar 13 - 15
  fad fad' sol sol, sold sold' la la, |
  lad lad' si si, mi mi' re re, |
  dod dod' la! dod re re, do do' |
  
  % bar 16 - 18
  si si, la la' sol sol, fad fad' |
  mi mi, re re' dod la re sol |
  la sol la la, re,2\fermata |
  
  \bar "|."
}


%*****************************************
%  Start Score
%*****************************************

%\markup { \vspace #1 }
\score {
  \header {
    %piece = \PieceName
  }
  \new PianoStaff <<
    \new Staff { 
      \clef "treble" 
      \MyTempo
      \MyKey
      \MyMeter
      <<
        \ViolinoI
        \\
        \ViolinoII
      >>
    }
    \new Staff { 
      \clef "bass"
      \MyTempo
      \MyKey
      \MyMeter
        \Continuo
    }
  >>
}

