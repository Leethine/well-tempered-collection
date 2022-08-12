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

PieceVIIS = \relative la' {
  % bar 1	- 5
  r2 la2 sol re'~ |
  re2 do sib la~ |
  la2 sol la1 |
  r1 r2 la~ |
  la2 sol re' do |
  
  % bar 6	- 10
  sib2 la1 sol2 |
  la1 r1 | r1 r2 la~ |
  la2 sol fa2. mi4 |
  re4 mi8 fa sol2 sib2. la8 sol |
  
  % bar 11	- 14
  fa2 la1 sol2 |
  fa2. mi4 re2 re'~ |
  re4 do sib la sol fad sol2 |
  \once \override NoteHead.style = #'baroque
  fad\breve |
  
  \bar "|."
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
  
  % bar 11	- 14
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  \once \override NoteHead.style = #'baroque
  re\breve~ |
  
  \bar "|."
}

PieceVIIT = \relative la {
  % bar 1	- 5
  r2 re4 do sib la sib la8 sol |
  fad1 sol2 fad4 mi |
  re1 r2 la'4 sol |
  fa4 mi fa mi8 re sib'2 la |
  sib2. la8 sol fad1 |
  
  % bar 6	- 10
  sol2 la re,1 |
  r2 re'4 do sib la sib la8 sol |
  fa4 mi fa2 re1 |
  r1 r1 |
  r2 sib'4 la sol fa sol fa8 mi |
  
  % bar 11	- 14
  re4 mi fa2 re1 |
  r2 la'4 sol fa mi fa sol8 la |
  sib4 la re do sib la sib2 |
  \once \override NoteHead.style = #'baroque
  la\breve~ |
  
  \bar "|."
}

PieceVIIB = \relative re {
  % bar 1	- 5
  r1 r1 | r1 r2 re4 do |
  sib4 la sib la8 sol fa4 fa'2 mi4 |
  re4 dod re2 sol fad |
  sol1 r1 |
  
  % bar 6	- 10
  r2 re4 do sib la sib2 |
  fad'1 sol |
  r2 la4 sol fa mi fa mi8 re |
  sib'4 sib,2 do4 re la sib2~ |
  sib4 la4 sol2 r1 |
  
  % bar 11	- 14
  r2 re'4 do sib la sib la8 sol |
  \once \override NoteHead.style = #'baroque
  re'\breve |
  \once \override NoteHead.style = #'baroque
  re\breve |
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
        \PieceVIIS
        \\
        \PieceVIIA
      >>
    }
    \new Staff { 
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