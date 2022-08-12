%! Title: Christe alio Modo
%! Part: I
%! No: 5
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

PieceVS = \relative la' {
  % bar 1 - 4
  r1*2 |
  r4 la8 si do re mi do fa mi re do16 re mi8 re do re |
  sib2 la r2. la4~ |
  la4 sol2 fa4~ fa mi2 re4~ |
  
  % bar 5 - 7
  re dod re8 mi fa sol mi4 la2 sold4 |
  la4 do si2 la4. sol8 fa4 mi~ |
  mi4 re2 dod4
  \once \override NoteHead.style = #'baroque
  re\breve*1/2 |
  
  \bar "|."
}

PieceVA = \relative re' {
  % bar 1 - 4
  re1 do2 sol' | fa2 mi re do |
  re4 re8 mi fa sol la re,~ re do16 si! dod4 re la8 si |
  do8 re mi dod re do!16 si la8 si do sol la sol fad sol la4 |
  
  % bar 5 - 7
  sol2 fa! r1 |
  r4 mi'2 re4~ re do2 si4 |
  la4. sold8 la2
  \once \override NoteHead.style = #'baroque
  la\breve*1/2 |
  
  \bar "|."
}

PieceVT = \relative re {
  % bar 1 - 4
  r2 re8 mi fa sol la mi la sol16 fa mi8 fa sol mi |
  la2 r2 r1 | r2 la2 sol fa |
  mi2 re do re |
  
  % bar 5 - 7
  r2. la'8 si do re mi do re4 re,8 mi|
  fa8 mi la4 r4 re,8 mi fa sol la mi la4 sol |
  fa4. mi16 re mi2
  \once \override NoteHead.style = #'baroque
  fad\breve*1/2 |
  
  \bar "|."
}

PieceVB = \relative fa {
  % bar 1 - 4
  r1*2 | r4 fa8 sol la si do4~ do sib2 la4 |
  sol8 sol, sib do re mi fa4 mi2 re | r1*2 |
  
  % bar 5 - 7
  mi2 re do si |
  la2 sol la1~ |
  la1
  \once \override NoteHead.style = #'baroque
  re\breve*1/2 |
  
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
        \PieceVS
        \\
        \PieceVA
      >>
    }
    \new Staff { 
      \clef "bass" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceVT
        \\
        \PieceVB
      >>
    }
  >>
}