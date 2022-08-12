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
  
  \bar "|."
}

PieceVIIIA = \relative la' {
  % bar 1	- 4
  r2 la sib la~ |
  la2 sol la re, |
  fa!2 sol la si |
  la2~ la4 sol2 fa!2 mi4 |
  
  % bar 5 - 8
  re1 r4 la' sib2 |
  la2 sol la1 |
  re,2 fa! sol la |
  si2 la1 sol2 |
  
  % bar 9 - 13
  fa2 mi re1 |
  r2 la' sib la~ |
  la2 sol la re, |
  fa2 sol la si |
  \once \override NoteHead.style = #'baroque
  la\breve |
  
  \bar "|."
}

PieceVIIIT = \relative re' {
  % bar 1	- 4
  r4 re fa2 re2. do4 |
  sib2. la8 sol fad2 sol |
  \once \override NoteHead.style = #'baroque
  re\breve |
  r4 la' sib2 la sol |
  
  % bar 5 - 8
  la2 re, fa sol |
  la2 r4 sib la sol fad la |
  sib4 sol re'2 sib la |
  re1 r1 |
  
  % bar 9 - 13
  r4 re do si la fa sib la~ |
  la4 sol2 fad4 sol2 fa! |
  sib1 r4 la sib2 |
  la2 sol fad sol~ |
  sol2 fad4 mi
  \once \override NoteHead.style = #'baroque
  fad\breve*1/2 |
  
  \bar "|."
}

PieceVIIIB = \relative la {
  % bar 1	- 4
  r1 r1 | r1 r1 |
  r4 sib la sol fad la2 sol4~ |
  sol4 fad sol2 re1 |
  
  % bar 5 - 8
  \once \override NoteHead.style = #'baroque
  re\breve |
  \once \override NoteHead.style = #'baroque
  re\breve |
  r1 r4 sol fa mi |
  re4 sol2 fa4 sib2. la8 sol |
  
  % bar 9 - 13
  re1. re2 |
  sib4. do8 re2 sol, re'~ |
  re2 mi fad sol |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve |
  
  \bar "|."
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
    \new Staff { 
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
    \new Staff { 
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