%! Title: Kyrie alio Modo
%! Part: I
%! No: 9
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

PieceIXS = \relative re' {
  % bar 1	- 5
  r1 r1 |
  r1 r1 |
  r2 re2 sib' la4 sol |
  la4 mi fa sol la1~ |
  la1 r1 |
  
  % bar 6	- 10
  r2 la2 fa' mi4 re |
  mi4 la, do re mi mi, la2~ |
  la4 sol8 fa sol2 la sib4 la |
  sol4 fad sol1 la2 |
  r2 la la la |
  
  % bar 11	- 15
  do2. si8 la sol2 la |
  r2 re,2 sib' la4 sol |
  la si do re mi mi, la2~ |
  la2 sold4 fad sold la si sold |
  \once \override NoteHead.style = #'baroque
  la\breve |
  
  % bar 16	- 20
  r1 r1 |
  r2 la2 fa' mi4 re |
  mi4 la, do si la sol la2 |
  r1 la2 la2 |
  la2 fa2. mi8 re mi2 |
  \once \override NoteHead.style = #'baroque
  fad\breve |
  
  \bar "|."
}

PieceIXA = \relative re' {
  % bar 1	- 5
  \once \override NoteHead.style = #'baroque
  re\breve |
  \once \override NoteHead.style = #'baroque
  fa\breve |
  \once \override NoteHead.style = #'baroque
  re\breve |
  \once \override NoteHead.style = #'baroque
  do\breve |
  \once \override NoteHead.style = #'baroque
  re\breve |
  
  % bar 6	- 10
  \once \override NoteHead.style = #'baroque
  la\breve |
  \once \override NoteHead.style = #'baroque
  do\breve |
  \once \override NoteHead.style = #'baroque
  re\breve |
  \once \override NoteHead.style = #'baroque
  mi\breve |
  \once \override NoteHead.style = #'baroque
  fa\breve |
  
  % bar 11	- 15
  \once \override NoteHead.style = #'baroque
  mi\breve |
  \once \override NoteHead.style = #'baroque
  re\breve |
  \once \override NoteHead.style = #'baroque
  do\breve |
  \once \override NoteHead.style = #'baroque
  si\breve |
  \once \override NoteHead.style = #'baroque
  la\breve |
  
  % bar 16	- 20
  \once \override NoteHead.style = #'baroque
  sol\breve |
  \once \override NoteHead.style = #'baroque
  la\breve~ |
  \once \override NoteHead.style = #'baroque
  la\breve~ |
  \once \override NoteHead.style = #'baroque
  la\breve~ |
  \once \override NoteHead.style = #'baroque
  la\breve~ |
  \once \override NoteHead.style = #'baroque
  la\breve |
  
  \bar "|."
}

PieceIXT = \relative re {
  % bar 1	- 5
  r2 re2 sib' la4 sol |
  la4 re, fa sol la2 sib~ |
  sib4 la sol fa sol2 sib |
  la2. sol4 fa2 mi |
  la1 sib2. la8 sol |
  
  % bar 6	- 10
  fa4 sol la2 fa1 |
  r2 la2 la2 la2 |
  sib2. la8 sol fad2 sol |
  r2 r4 mi4 do'2 si4 la |
  re4 re, fa sol la re, re'2 |
  
  % bar 11	- 15
  r2 mi,2 do' si4 la |
  sib2 la4 sol fa2 sib |
  la2. sol8 fad sol2 r2 |
  r2 mi'2 mi mi |
  fa2. mi8 re do2 re |
  
  % bar 16	- 20
  si2 mi2. re8 do si2 |
  dod2 re1 do4 si |
  do1 r2 r4 la4 |
  fa'2 mi4 re do2 re |
  mi2 re1 dod2 |
  \once \override NoteHead.style = #'baroque
  re\breve |
  
  \bar "|."
}

PieceIXB = \relative la, {
  % bar 1	- 5
  r1 r1 |
  r1 r1 |
  r1 r1 |
  r1 r2 la2 |
  fa'2 mi4 re sol sol, sib do |
  
  % bar 6	- 10
  re4 mi fa dod re1 |
  la'1 r1 |
  r1 r1 |
  r1 r1 |
  r1 r1 |
  
  % bar 11	- 15
  r1 r1 |
  r2 re,2 re re |
  fad2. mi8 re do2. re4 |
  \once \override NoteHead.style = #'baroque
  mi\breve |
  r2 la,2 fa' mi4 re |
  
  % bar 16	- 20
  mi4 si do re mi fa sol2~ |
  sol2 fa4 sol la1 |
  r1 r2 re,2 |
  re2 re fa2. mi8 re |
  dod2 re la1 |
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
        \PieceIXS
        \\
        \PieceIXA
      >>
    }
    \new Staff { 
      \clef "bass" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceIXT
        \\
        \PieceIXB
      >>
    }
  >>
}