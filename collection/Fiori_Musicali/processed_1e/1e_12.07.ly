%! Title: Christe alio Modo
%! Part: I
%! No: 7
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
PieceName = "Christe alio Modo"
MyFinalBar = \bar "||"

PieceVIIS = \relative la' {
  % bar 1	- 5
  re2\rest la2 sol re'~ |
  re2 do sib la~ |
  la2 sol la1 |
  re1\rest re2\rest la~ |
  la2 sol re' do |
  
  % bar 6	- 10
  sib2 la1 sol2 |
  la1 si1\rest | si1\rest si2\rest la~ |
  la2 sol fa2. mi4 |
  re4 mi8 fa sol2 sib2. la8 sol |
  
  % bar 11	- 14
  fa2 la1 sol2 |
  fa2. mi4 re2 re'~ |
  re4 do sib la sol fad sol2 |
  \once \override NoteHead.style = #'baroque
  fad\breve |
  
  \MyFinalBar
}

PieceVIIA = \relative re' {
  % bar 1	- 5
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  
  % bar 6	- 10
  \slurDotted
  \once \override NoteHead.style = #'baroque
  re\breve( |
  \once \override NoteHead.style = #'baroque
  re\breve~) |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \slurDotted
  \once \override NoteHead.style = #'baroque
  re\breve( |
  
  % bar 11	- 14
  \once \override NoteHead.style = #'baroque
  re\breve~) |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  
  \MyFinalBar
}

PieceVIIT = \relative la {
  % bar 1	- 5
  la2\rest re4 do sib la sib la8 sol |
  fad1 sol2 fad4 mi |
  re1 la'2\rest la4 sol |
  fa4 mi fa mi8 re sib'2 la |
  sib2. la8 sol fad1 |
  
  % bar 6	- 10
  sol2 la re,1 |
  do'2\rest re4 do sib la sib la8 sol |
  fa4 mi fa2 re1 |
  s1 fa1\rest |
  la2\rest sib4 la sol fa sol fa8 mi |
  
  % bar 11	- 14
  re4 mi fa2 re1 |
  la'2\rest la4 sol fa mi fa sol8 la |
  sib4 la re do sib la sib2 |
  \once \override NoteHead.style = #'baroque
  la\breve~ |
  
  \MyFinalBar
}

PieceVIIB = \relative re {
  % bar 1	- 5
  sol,1\rest sol1\rest | sol1\rest sib2\rest re4 do |
  sib4 la sib la8 sol fa4 fa'2 mi4 |
  re4 dod re2 sol fad |
  sol1 sol,1\rest |
  
  % bar 6	- 10
  si2\rest re4 do sib la sib2 |
  fad'1 sol |
  sol,2\rest la'4 sol fa mi fa mi8 re |
  sib'4 sib,2 do4 re la sib2~ |
  sib4 la4 sol2 sol1\rest |
  
  % bar 11	- 14
  sol2\rest re'4 do sib la sib la8 sol |
  \once \override NoteHead.style = #'baroque
  re'\breve |
  \once \override NoteHead.style = #'baroque
  re\breve |
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
        \PieceVIIS
        \\
        \PieceVIIA
      >>
    }
    \new Staff = "down" {
      \clef "bass" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceVIIT
        \\
        \PieceVIIB
      >>
    }
  >>
}