%! Title: Menuet a-moll, HWV549
%! Subtitle:
%! Subsubtitle:
%! Type: raw
%! Status: done
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
  line-width = 14.5\cm
  ragged-right = ##f
  line-width = #(- line-width (* mm 3.000000) (* mm 1))
}

\layout {
  
}

%*****************************************
%  Set Header
%*****************************************
\header {
  title = "Menuet a-Moll"
  composer = "G.F. Handel"
  opus = "HWV 549"
  tagline = "© 2022 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 3/4
MyKey = \key la \minor
PieceName = "Minuet"

VoiceI = \relative {
  %bar 1 - 4
  mi''4 la, sold
  la8 do si2
  do4 re8 do si la
  sold4 fad8 sold mi4

  %bar 5 - 8
  mi' re8 do si la
  re4 do8 si la sold
  la si do4 si8 la
  la2.
  
  \bar ":|.:"
  
  %bar 9 - 12
  sol4 do8 si do4
  sol4 re'8 do re4
  sol,4 fa' mi8 fa
  re2.

  %bar 13 - 16
  mi8 fa re mi do re
  si do la si sol4
  fa8 mi re4. do8
  do2.
  
  %bar 17 - 20
  do'8 re mi4 sold,
  la8 do si2
  do4 re8 do si la
  sold4 fad8 sold mi4

  %bar 21 - 24
  mi4 la8 sold la4
  re,4 la'8 sold la4
  do,4 re8 do si do
  la2.
  
  \bar ":|."
}


BassoI = \relative {
  %bar 1 - 4
  la2.
  la4 sold mi
  la2 re,4
  mi si mi,

  %bar 5 - 8
  la do mi
  si re mi
  la re, mi
  la mi la,
  
  %\bar ":|.:"
  
  %bar 9 - 12
  mi' re do
  si la sol
  do2 fa,4
  sol la si

  %bar 13 - 16
  do si la
  sol fa mi
  fa sol2
  do4 sol do,
  
  %bar 17 - 20
  la''2.
  la4 sold mi
  la2 re,4
  mi si mi,

  %bar 21 - 24
  la do mi
  si re mi
  la re, mi
  la,2.
  
  %\bar ":|.:"
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
      %\MyTempo
      \MyKey
      \MyMeter
        \VoiceI
    }
    \new Staff { 
      \clef "bass"
      %\MyTempo
      \MyKey
      \MyMeter
        \BassoI
    }
  >>
}
