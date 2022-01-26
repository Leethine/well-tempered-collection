\version "2.23.5"
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
  title = "Album für die Jugend"
  subtitle = "No.1"
  subsubtitle = "( für Hammerklavier )"
  composer = "Robert Schumann"
  arranger = ""
  %arranger = "Tzu'An Lee"
  %opus = ""
  tagline = "© 2021 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 4/4
%MyTempo = \tempo "Allegro" 4. = 76
MyKey = \key do \major
PieceName = "Melodie"

VoiceI = \relative {
  %bar 1 - 4
  mi''4( re do si
  la8 do si re do4 sol)
  sol'( fa mi do
  si <la fad> sol) r
  %\bar ":|.:"  
  \bar ":|."
}


BassoI = \relative {
  %bar 1 - 4
  do'8( sol' fa sol mi sol do, mi
  fa re sol fa mi fa mi re)
  mi( sol re sol do, sol' mi sol
  re sol do, re si re sol,4)
}


%*****************************************
%  Start Score
%*****************************************

%\markup { \vspace #1 }
\score {
  \header {
    piece = \PieceName
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
      %\clef "bass"
      \clef "treble"
      %\MyTempo
      \MyKey
      \MyMeter
        \BassoI
    }
  >>
}
