%! Title: Toccata avanti la messa della Domenica
%! Part: I
%! No: 1
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
MyMeter = \time 4/2
MyTempo = \tempo "Adantino"
MyKey = \key do \major
PieceName = "Toccata avanti la messa della Domenica"

PieceIS = \relative re'' {
  % bar 1 - 3
  re2 sib4 la2 sol8 fa sol2~ |
  sol4 fa2 mi4 re sib'4. la8 sol4~ |
  sol4 la8 si! do2 re2. dod4 |
  
  % bar 4 - 6
  do! si2 la4 si1 |
  si2~ si4. si8 dod re mi4 fa8 mi re do! |
  sib la sol fa mi4 re8 mi fa re'4 do8 sib2 | 
  
  % bar 7 - 8
  la2 sol fad mi~ |
  mi4 mi'16\rest sol, la si dod8 re4 dod8
  \once \override NoteHead.style = #'baroque
  re\breve*1/2 |
  
  \bar "|."
}

PieceIA = \relative la' {
  % bar 1 - 3
  la2 fa4. mi8 re2 do~ |
  do4 re2 dod4 re1 |
  mi4 fa2 mi4 fad sol mi2 |
  
  % bar 4 - 6
  mi1 si8\rest si do re mi fad sol mi |
  fad sol la2 sold4 la1 |
  sol4 re dod re~ re la'4. sol16 fa sol mi8. |
  
  % bar 7 - 8
  fad2 do16\rest re mi dod re4~ re do16\rest do re si! do4 re~ |
  re16 dod re mi fa2 mi4
  \once \override NoteHead.style = #'baroque
  fad\breve*1/2 |
  
  \bar "|."
}

PieceIT = \relative fa' {
  % bar 1 - 3
  \change Staff=up \once \stemDown fa2 \change Staff=down re4 do sib2. la8 sol |
  la2 la4. sol8 fa re sol4 fa sib~ |
  sib la sol2 la4 si!2 la4~ |
  
  % bar 4 - 6
  la4 sol do2 sold \clef "treble" si8\rest la si dod |
  re8 mi fa!16 mi mi re mi8 si mi \clef "bass" mi, la si dod la re2~ |
  re2 mi4\rest la,4~ la2 re2~ |
  
  % bar 7 - 8
  re8 do16 si! do la8. sib4~ sib16 la sib sol la2 la16\rest sol la mi fa4~ |
  fa16 mi fa sol la mi fa re mi8 fa16 sol la4
  \once \override NoteHead.style = #'baroque
  la\breve*1/2 |
  
  \bar "|."
}

PieceIB = \relative re {
  % bar 1 - 3
  re1. mi2 | fa la, sib1 |
  do2 do~ do4 si! dod4. re8 |
  
  % bar 4 - 6
  \once \override NoteHead.style = #'baroque
  re\breve*1 |
  s1. re8\rest re mi fa |
  sol8 la sib sol la mi fa dod re1 |
  
  % bar 7 - 8
  re1~ re16 mi fa re la'4 fa,4\rest la16\rest la sib sol |
  la1 \once \override NoteHead.style = #'baroque
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
    \new Staff = "up" {
      \clef "treble" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceIS
        \\
        \PieceIA
      >>
    }
    \new Staff = "down" {
      \clef "bass" 
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceIT
        \\
        \PieceIB
      >>
    }
  >>
}