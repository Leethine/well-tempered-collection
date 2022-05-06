%! Title: Kyrie della Domenica
%! Part: I
%! No: 2
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
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    \override SpacingSpanner.uniform-stretching = ##t 
  }
}

%*****************************************
%  Set Header
%*****************************************
\header {
  %title = "KYRIE"
  %subtitle = "Kyrie della Domenica"
  %subsubtitle = "Fiori Musicali"
  %composer = "G. Frescobaldi"
  %opus = "F.12/02"
  %tagline = "© 2022 Hautbois Project"
  tagline = ""
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 8/4
MyTempo = \tempo "Adantino"
MyKey = \key do \major
PieceName = "Kyrie della Domenica"

PieceIIS = \relative la' {
  % bar 1 - 3
  la1 sib | la sol | la re, |
  
  % bar 4 - 6
  fa sol | la sib | la sol |
  
  % bar 7 - 9
  fa mi |
  \clef "bass" re do |
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  
  % bar 10 - 12
  \once \override NoteHead.style = #'baroque
  re\breve*1~ | 
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  
  % bar 13 : additional
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  
  \bar "|."
}

PieceIIA = \relative re' {
  % bar 1 - 3
  r1 r4 re re mi |
  fa re fa2~ fa4 mi8 re mi2 |
  fa4 mi8 re dod2 r2 re2~ |
  
  % bar 4 - 6
  re4 do!8 si do2 si4\rest re re mi|
  fa mi re dod re2 mi2 |
  fa4 re fa1 mi2~ |
  
  % bar 7 - 9
  mi4 re8 do re2 r1 |
  r4 la la si do si la sol |
  fa2 sol la fa\rest |
  
  % bar 10 - 12
  fa\rest la2~ la4 sol8 fa sol4 la |
  sib sol sib2~ sib4 la8 sol la2 |
  sib1 la |
  
  % bar 13 : additional
  \once \override NoteHead.style = #'baroque
  la\breve*1 |
  
  \bar "|."
}

PieceIIT = \relative la {
  % bar 1 - 3
  fa2\rest \stemDown la2~ la4 sol8 fa sol2 |
  re'4 do8 si la4 si do sol do2 |
  \stemUp la r4 la4~ la \once \stemDown sol8 \once \stemDown fa sol2 |
  
  % bar 4 - 6
  la1 r1 | r1*2 |
  si4\rest \stemDown la4 la si do si8 la sol4 do |
  
  % bar 7 - 9
  \stemUp la2 sib4 la sol2 la4 sol |
  fa2. mi8 re la'2 mi |
  r4 re re mi fa2 re |
  
  % bar 10 - 12
  sol fa4 mi re1 |
  fa1.\rest la2~ |
  la4 sol8 fa sol1 fad4 mi |
  
  % bar 13 : additional
  \once \override NoteHead.style = #'baroque
  fad\breve*1 |
  
  \bar "|."
}

PieceIIB = \relative la, {
  % bar 1 - 3
  sol1*2\rest | sol1*2\rest | si2\rest la2 sib1 |
  
  % bar 4 - 6
  la2 la' sib la4 sol |
  fa2 mi4\rest la~ la sol8 fa sol2 |
  re1 mi,1\rest |
  
  % bar 7 - 9
  si'2\rest re2~ re4 dod8 si dod2 |
  re1 r2 la2 |
  sib2. la8 sol re'4 do sib la |
  
  % bar 10 - 12
  sib sol re'2 sib2. la4 |
  sol2 si4\rest re re mi fa re |
  sib2. la8 sol re'1~ |
  
  % bar 13 : additional
  \once \override NoteHead.style = #'baroque
  re\breve*1 |
  
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
    \new Staff = "up" {
      \clef "treble" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceIIS
        \\
        \PieceIIA
      >>
    }
    \new Staff = "down" {
      \clef "bass" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceIIT
        \\
        \PieceIIB
      >>
    }
  >>
}