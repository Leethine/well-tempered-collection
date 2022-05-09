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

VoiceI = \relative fa'' {
  \repeat volta 2 {
  % bar 1 - 3
  fad1~ |
  fad8 si16 sol mi re dod re dod4 si16 la8. |
  la'2~ la16 fad do! si mi red la' sol |
  
  % bar 4 - 6
  sol2~ sol16 mi si la re! dod sol' fad |
  fad4. sold16 la re,8 re32 mi fad16~ fad mi mi re |
  }
  \alternative {
    { dod16 si si32 dod re16~ re8 dod16 si la2 | }
    { dod16 si si32 dod re16~ re8 dod16 si la2 | }
  }
  \bar ":|."
  
  % bar 7 - 9
  dod4~ dod16 re32 dod si dod la16 la'4. do,8 |
  si8 si'~ si16 la sol fad fad sol8.~ sol32 fad mi re dod!16 si |
  lad si dod8~ dod16 re mi8~ mi16 fad sol8~ sol fad |
  
  % bar 10 - 12
  mi16 re dod si dod re32 mi re8 dod8 si4. |
  re4~ re16 fad mi re si'4. la16 sold |
  fad32 mi la16 la,8 si8. dod32 re dod8.\trill si16 la4 |
  
  % bar 13 - 15
  re4. fad16 mi mi4. sol16 fad |
  fad4. la16 sol sol2 |
  la,4~ la16 dod mi sol sol mi fad4~ fad16 sol32 la |
  
  % bar 16 - 18
  re,4~ re16 fad la do do8 si4 re,8 |
  dod!16 mi sol4 si,8 la8 mi'16 fad32 sol~ sol16 fad8 mi16 |
  re32 dod si8 dod16 re8 dod16\trill re re2\fermata |
  
  \bar "|."
}

VoiceII = \relative re'' {
  \repeat volta 2 {
  % bar 1 - 3
  re1~ |
  re4 si la2~ |
  la8 do16 si do8 la16 do si8 fad'4 red8 |
  
  % bar 4 - 6
  si8 mi16 re mi fad sol mi la,8 mi'4 dod8 |
  la2~ la8 sold16 la si8 sold |
  }
  \alternative {
    { la8 la4 sold8 mi2 }
    { la8 la4 sold8 mi2 }
  }
  \bar ":|."
  
  % bar 7 - 9
  la2~ la16 si do!8~ do16 si la sol |
  fad sol r4 red'8 mi4. mi,8~ |
  mi4. r8 r16 re'! dod si lad si dod8 |
  
  % bar 10 - 12
  si8 r8 si8 lad fad2 |
  mi8 si' la16 sold la8 sol'4 mi |
  r8 r4 sold,8 la2~ |
  
  % bar 13 - 15
  la8 si16 do si dod re4 dod16 si dod red mi8~ |
  mi8 red16 dod re mi fad8~ fad16 red mi si mi4 |
  r16 dod, mi r fad8 mi' re4. r8 |
  
  % bar 16 - 18
  r2 sol4. r8 |
  r4 mi4 la,4. <sol si>8 |
  <fad la>4 <mi sol> <fad la>2 |
  
  \bar "|."
}

VoiceIII = \relative la' {
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
    { la re, mi mi, la16 si dod re mi sol! fad mi }
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
  la sol la la, re,2 |
  
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
        \VoiceI
        \\
        \VoiceII
        \\
        \VoiceIII
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

