%! Title: Menuet a-moll, HWV549
%! Subtitle:
%! Subsubtitle:
%! Type: final
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
%MyTempo = \tempo "Allegro ma non troppo" 2. = 76
MyKey = \key la \minor
PieceName = "Minuet"

VoiceI = \relative {
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" }

  %bar 1 - 4
  mi''4-5 la,-1 sold-2
  la8-1 do si2-2\trill
  do4-3 re8 do si la-1
  sold4-3 fad8-2 sold mi4-1
  \breathe

  %bar 5 - 8
  mi'-5\prall re8 do si la-1
  re4-4\prall do8 si la-1 sold-2
  la-1 si do4\prall si8 la
  la2.
  
  \bar ":|.:"
  
  %bar 9 - 12
  sol4-1 do8 si do4
  sol4-1 re'8 do re4
  sol,4-1 fa'-5 mi8 fa
  re2.-2\trill

  %bar 13 - 16
  mi8-3 fa-4 re-2 mi-3 do-1 re-4
  si-2 do-3 la-1 si-3 sol4-1
  fa8-4 mi re4. do8
  do2.
  \bar "||"
  
  %bar 17 - 20
  do'8-3 re mi4-5\prall sold,-2
  la8-1 do si2-2\trill
  do4-3 re8 do si la
  sold4-3 fad8-2 sold mi4-1
  \breathe

  %bar 21 - 24
  mi4 la8 sold la4
  re,4 la'8 sold la4
  do,4-1 re8-4 do si do
  la2.-1
  
  \bar ":|."
}


BassoI = \relative {
  %bar 1 - 4
  la2.-1
  la4 sold mi
  la2-1 re,4
  mi-1 si mi,-5

  %bar 5 - 8
  la do mi-1
  si-5 re-3 mi-2
  la-1 re,-3 mi-2
  la-1 mi la,-5
  
  %\bar ":|.:"
  
  %bar 9 - 12
  mi'-1 re-2 do-3
  si-1 la sol
  do2-1 fa,4-5
  sol la si-2

  %bar 13 - 16
  do-1 si-2 la-1
  sol fa mi
  fa sol2
  do4-1 sol do,-5
  
  %bar 17 - 20
  la''2.-1
  la4 sold mi
  la2-1 re,4
  mi-1 si mi,

  %bar 21 - 24
  la do mi-1
  si-5 re-3 mi-2
  la-1 re,-3 mi-2
  la,2.-5
  
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
