%! Title: Christe alio Modo
%! Part: I
%! No: 6
%! Remark:

\version "2.22.1"
\include "italiano.ly"

%****************************************************************
% Start cut-&-pastable-section

%****************************************************************

\paper {
  % Set paper
  #(set-paper-size "a4landscape")
  indent = 0\mm
  line-width = 250\mm
  ragged-right = ##f
  line-width = #(- line-width (* mm 3.000000) (* mm 1))
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    \override SpacingSpanner.uniform-stretching = ##t
  }
}
%*****************************************
%  Set Header
%*****************************************
\header {
  %title = "KYRIE"
  %subtitle = "Kyrie"
  %subsubtitle = "Fiori Musicali"
  %composer = "G. Frescobaldi"
  %opus = "F.12/03"
  %tagline = "© 2022 Hautbois Project"
  tagline = ""
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 3/2
MyTempo = \tempo "Adantino"
MyKey = \key do \major
PieceName = "Christe alio Modo"
MyFinalBar = \bar "||"

PieceVIS = \relative la' {
  % bar 1	- 5
  la1. | sol1. | re'1. | do1. | re1. |
  
  % bar 6 - 10
  do1. | sib1. | la1. | sol1. | la1. |
  
  % bar 11 - 15
  la1. | sol1. | fa1. | mi1. | \clef "bass" re1. |
  
  % bar 16 - 20
  do1.~ | do1.~ | do1. | re1.~ | re1.~ |
  \once \override NoteHead.style = #'baroque
  re\breve*1/2 s2|
  
  \MyFinalBar
}

PieceVIA = \relative re' {
  % bar 1	- 5
  si2\rest re2 fa | mi2 re4 do re2 | mi2\rest re fa~ |
  fa4 mi la sol fa mi | fa2. sol4 la2 |
  
  % bar 6 - 10
  sol2. fa4 sol mi | re2. mi4 fa sol |
  la2 fa mi | re1 mi2 | fa2. sol8 fa mi2 |
  
  % bar 11 - 15
  fa1. | la,1.\rest | sol2\rest la do~ |
  do4 si8 la sol2. la4 | sib1 sol2 |
  
  % bar 16 - 20
  la1. | do,,1.\rest | re'2\rest sol1 | sib1 \once \stemUp la2 | sib1. |
  \once \override NoteHead.style = #'baroque
  la\breve*1/2 s2 |
  
  \MyFinalBar
}

PieceVIT = \relative la {
  % bar 1	- 5
  fa1\rest la2 | do2 si4 la sib sol |
  sib2. la8 sol fa4 sol |
  la2 la do | sib1 la2 |
  
  % bar 6 - 10
  do2 sol1 | do1.\rest | do2\rest la2 do |
  si2 la4 sol do do, | fa4 sol la si dod la |
  
  % bar 11 - 15
  re1 la2 | do2 si2. \change Staff="up" \stemDown dod4 |
  re1 \change Staff="down" \stemUp la2\rest | fa1.\rest | si1\rest re,2 |
  
  % bar 16 - 20
  fa2 mi2. \change Staff="up" \stemDown fa4 | sol2 la fa |
  \change Staff="down" \stemUp mi2. re4 mi do | \change Staff="up" \stemDown sol'1 la2 |
  \change Staff="down" \stemUp re,2 \change Staff="up" \stemDown sol1 |
  \once \override NoteHead.style = #'baroque
  fad\breve*1/2 s2 |
  
  \MyFinalBar
}

PieceVIB = \relative re {
  % bar 1	- 5
  sol,1.\rest | sol1.\rest | sol1.\rest |
  sol1.\rest | si2\rest re fa |
  
  % bar 6 - 10
  mi2. re4 mi do |
  sol' sol, sib do re mi |
  fa1. | sol,1.\rest | sol1.\rest |
  
  % bar 11 - 15
  si2\rest re fa | mi2. fa4 sol2 |
  re2. do8 si la4 si | do2. re4 mi fa |
  sol2 sol, sib |
  
  % bar 16 - 20
  la2. si!4 do2 | mi,2 fa4 sol la si |
  do1. | sol2\rest sol fad | sol2. la4 sib sol |
  \once \override NoteHead.style = #'baroque
  re'\breve*1/2 s2 |
  
  \MyFinalBar
}

%*****************************************
%  Start Score
%*****************************************

\markup { \vspace #1 }
\score {
  \header {
    piece = \PieceName
  }
  \new PianoStaff <<
    \new Staff = "up" { 
      \clef "treble" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceVIS
        \\
        \PieceVIA
      >>
    }
    \new Staff = "down" {
      \clef "bass" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceVIT
        \\
        \PieceVIB
      >>
    }
  >>
}