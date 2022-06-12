%! Title: Kyrie alio Modo
%! Part: I
%! No: 8
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
MyMeter = \time 4/2
MyTempo = \tempo "Adantino"
MyKey = \key do \major
PieceName = "Kyrie alio Modo"
MyFinalBar = \bar "||"

PieceVIIIS = \relative re'' {
  % bar 1	- 4
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |

  % bar 5 - 8
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  
  % bar 9 - 13
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve |
  
  \MyFinalBar
}

PieceVIIIA = \relative la' {
  % bar 1	- 4
  mi2\rest la sib la~ |
  la2 sol la re, |
  fa!2 sol la sib |
  la2~ la4 sol2 fa!2 mi4 |
  
  % bar 5 - 8
  re1 mi4\rest la sib2 |
  la2 sol la1 |
  re,2 fa! sol la |
  sib2 la1 sol2 |
  
  % bar 9 - 13
  fa2 mi re1 |
  mi2\rest la sib la~ |
  la2 sol la re, |
  fa2 sol la sib |
  \once \override NoteHead.style = #'baroque
  la\breve |
  
  \MyFinalBar
}

PieceVIIIT = \relative re' {
  % bar 1	- 4
  la4\rest re fa2 re2. do4 |
  sib2. la8 sol fad2 sol |
  \once \override NoteHead.style = #'baroque
  re\breve |
  re'4\rest la sib2 la sol |
  
  % bar 5 - 8
  la2 re, fa sol |
  la2 do4\rest sib la sol fad la |
  sib4 sol re'2 sib la |
  re1 re1\rest |
  
  % bar 9 - 13
  do4\rest re do sib la fa sib la~ |
  la4 sol2 fad4 sol2 fa! |
  sib1 re4\rest la sib2 |
  la2 sol fad sol~ |
  sol2 fad4 mi
  \once \override NoteHead.style = #'baroque
  fad\breve*1/2 |
  
  \MyFinalBar
}

PieceVIIIB = \relative la {
  % bar 1	- 4
  sol,1\rest sol1\rest | sol1\rest sol1\rest |
  fa4\rest sib' la sol fad la2 sol4~ |
  sol4 fad sol2 re1 |
  
  % bar 5 - 8
  \once \override NoteHead.style = #'baroque
  re\breve |
  \once \override NoteHead.style = #'baroque
  re\breve |
  sol,1\rest do4\rest sol' fa mi |
  re4 sol2 fa4 sib2. la8 sol |
  
  % bar 9 - 13
  re1. re2 |
  sib4. do8 re2 sol, re'~ |
  re2 mi fad sol |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve |
  
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
        \PieceVIIIS
        \\
        \PieceVIIIA
      >>
    }
    \new Staff = "down" {
      \clef "bass" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceVIIIT
        \\
        \PieceVIIIB
      >>
    }
  >>
}