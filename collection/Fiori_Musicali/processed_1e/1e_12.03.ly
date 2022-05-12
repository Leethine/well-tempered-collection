%! Title: Kyrie
%! Part: I
%! No: 3
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
MyMeter = \time 8/4
MyTempo = \tempo "Adantino"
MyKey = \key do \major
PieceName = "Kyrie"

PieceIIIS = \relative la' {
  % bar 1 - 4
  si1*2\rest | si1*2\rest | re1*2\rest | si1*2\rest |
  
  % bar 5 - 8
  si1\rest la1 | sib2 la1 sol2 |
  \once \override NoteHead.style = #'baroque
  la\breve*1 | 
  re2\rest la do re |
  
  % bar 9 - 12
  mi2 fa4 mi re1 | do1 si1 |
  la1 re2\rest la2~ | la sib la sol |
  
  % bar 13 - 16
  la1 re,1 | re2 fa sol la |
  sib la1 sol2 | fa mi mi1 |
  
  % bar additional
  \once \override NoteHead.style = #'baroque
  fad\breve*1 |
  
  \bar "|."
}

PieceIIIA = \relative la {
  % bar 1 - 4
  do1*2\rest | do1\rest la2 \once \stemUp do |
  \once \stemUp re2. mi4 \once \stemUp fa2 \once \stemUp mi | \once \stemUp re1 do1 |
  
  % bar 5 - 8
  \once \stemUp si1 la2 do2\rest | re fa1 re2 |
  do2 re \change Staff=down fa,1\rest \change Staff=up \stemDown | mi'2 fa~ fa4 mi \change Staff=down \stemUp re2 |
  
  % bar 9 - 12
  do1 si! \change Staff=up \stemDown | mi1 do1\rest |
  la2 do re mi | fa1 \change Staff=down \stemUp do4\rest la \change Staff=up \stemDown sib2 |
  
  % bar 13 - 16
  \change Staff=down \stemUp la2 \change Staff=up \stemDown re4 do sib la sib2 | sol2\rest re'1 fa2 |
  re dod re1~ | re2 dod4 si dod re2 dod4 |
  
  % bar additional
  \once \override NoteHead.style = #'baroque
  re\breve*1 |
  
  \bar "|."
}

PieceIIIT = \relative la {
  % bar 1 - 4
  la1 sib2 la | sol1 fa2 \change Staff=up \once \stemDown la_( |
  \once \stemDown la) \change Staff=down sold \change Staff=up \stemDown la do_( | do) si1 la2_( |
  
  % bar 5 - 8
  la) \change Staff=down \stemUp sold la1 | do1*2\rest |
  do2\rest la \change Staff=up \stemDown do re \change Staff=down \stemUp | fa,1\rest la2 \once \stemDown sib_( |
  
  % bar 9 - 12
  \once \stemDown \once\omit Accidental sib2) la1 \once \stemDown sold2 | la4 mi la1 sold2 |
  \once \override NoteHead.style = #'baroque
  la\breve*1 |
  la2\rest re, \once \stemDown fa \once \stemDown sol~ |
  
  % bar 13 - 16
  \once \stemDown sol fad sol1 | re1 \change Staff=up \stemDown sib'2 \change Staff=down \stemUp la |
  re2\rest la sib1 | la2 sol~ sol4 fa mi la |
  
  % bar additional
  \once \override NoteHead.style = #'baroque
  la\breve*1 |
  
  \bar "|."
}

PieceIIIB = \relative re {
  % bar 1 - 4
  si2\rest re1 fa2~ | fa mi re do |
  si1 la2 la'4 sol | fa mi re2 mi do |
  
  % bar 5 - 8
  re mi fa4 re fa2 | sol la sib1 |
  la2 fa1 mi4 re | dod2 re sol,1\rest |
  
  % bar 9 - 12
  s1*2 | la2 do re mi |
  fa2. mi4 re2 dod |
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  
  % bar 13 - 16
  re1 sol,2\rest sol | sib2. la4 sol2 re' |
  sol la re, mi | fa sol4 sol, la1 |
  
  % bar additional
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  
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
        \PieceIIIS
        \\
        \PieceIIIA
      >>
    }
    \new Staff = "down" { 
      \clef "bass" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceIIIT
        \\
        \PieceIIIB
      >>
    }
  >>
}