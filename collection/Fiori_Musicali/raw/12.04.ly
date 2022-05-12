%! Title: Christe
%! Part: I
%! No: 4
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
MyMeter = \time 8/4
MyTempo = \tempo "Adantino"
MyKey = \key do \major
PieceName = "Christe"

PieceIVS = \relative la' {
  % bar 1 - 3
  r1*2 | r1 r4 la do2~ |
  do4 si8 la si4 sol do mi, la2~ |
  
  % bar 4 - 6
  la4 sol8 fa sol2 la2. si!4 |
  do2 sol r1 |
  r4 la do2~ do4 si8 la  si4 sol |
  
  % bar 7 - 9
  la1 r1 | r1*2 |
  r4 la sib2~ sib4 la8 sol la4 re, |
  
  % bar 10 - 12
  fad2 sol1 fad2 |
  sol r4 sib2. la4 sol |
  fa4 sol la1 r2 |
  
  % bar 13 - 15
  r2 r4 re, sib'2. la8 sol |
  la2. sol8 fa sol2 fad4 mi
  \once \override NoteHead.style = #'baroque
  fad\breve*1 |
  
  \bar "|."
}

PieceIVA = \relative re' {
  % bar 1 - 3
  r1*2 | r1*2 | r1*2 |
  
  % bar 4 - 6
  r1 r4 re fa2~ |
  fa4 mi8 re mi4 do fa sol la mi |
  fa2. mi8 re mi2 re4 mi |
  
  % bar 7 - 9
  fa2 la sol r4 mi |
  fa2. mi8 re mi4 la, mi'2~ |
  mi2 re re1 |
  
  % bar 10 - 12
  r4 la sib2~ sib4 la8 sol la4 re |
  sib4 do re2 re1 |
  r2. re4 fa2. mi8 re |
  
  % bar 13 - 15
  fa4 sol la2~ la4 sol8 fa sol2~ |
  sol4 fa8 mi re2 re1~ |
  \once \override NoteHead.style = #'baroque
  re\breve*1 |
  
  \bar "|."
}

PieceIVT = \relative la {
  % bar 1 - 3
  la1 sol | re' do | re do |
  
  % bar 4 - 6
  sib la | sol la | la sol |
  
  % bar 7 - 9
  fa mi | re dod |
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  
  % bar 10 - 12
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  \once \override NoteHead.style = #'baroque
  re\breve*1~
  
  % bar 13 - 15
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  \once \override NoteHead.style = #'baroque
  re\breve*1 |
  
  \bar "|."
}

PieceIVB = \relative re {
  % bar 1 - 3
  r4 re fa2~ fa4 mi8 re mi4 do |
  fa2 sol la2. mi4 |
  fad2 sol la4 sol fa mi |
  
  % bar 4 - 6
  re2 mi fa1 | do1 r1 | r1*2 |
  
  % bar 7 - 9  
  r4 la' do2~ do4 si8 la si4 do |
  fa, sol la1 sol2 |
  fad2 sol1 fad2 |
  
  % bar 10 - 12
  r1*2 | sol,2 sib~ sib4 la8 sol sib4 do |
  re mi fa sol la fa sib2~ |
  
  % bar 13 - 15
  sib4 la8 sol fad2 r1 |
  r4 la sib1 la4 sol
  \once \override NoteHead.style = #'baroque
  la\breve*1 |
  
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
        \PieceIVS
        \\
        \PieceIVA
      >>
    }
    \new Staff { 
      \clef "bass" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceIVT
        \\
        \PieceIVB
      >>
    }
  >>
}