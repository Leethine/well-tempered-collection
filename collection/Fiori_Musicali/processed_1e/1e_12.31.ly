%! Title: Toccata per l'Elevazione
%! Part: II
%! No: 31
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
  %subtitle = "Kyrie. Alio modo"
  %subsubtitle = "Fiori Musicali"
  %composer = "G. Frescobaldi"
  %opus = "F.12/13"
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
PieceName = "Toccata per l'Elevazione"

PieceXXXIS = \relative si' {
  % bar 1 - 4
  si2 mi1 mi2~ | mi4 re8 do re1 si2~ |
  si2 la4 sol la1~ | la1 re,1 |
  
  % bar 5 - 8
  re'2\rest re2~ re8. mi16 re8. mi16 re8. do16 si la sol fad |
  sold2 la sib2. la8.\trill sold16 | la1 sol1~ |
  sol2 fa8. sol16 fa8. sol16 la8. si16 la8. si16 do8 la si do |
  
  % bar 9 - 12
  re8. mi16 do8. re16 si8 do re16 do do si do4 si la2~ |
  la4 sol fa!2~ fa8 mi fa sol la si do si |
  dod re mi re~ re4 do! si la2 sol8 fad |
  sold2 mi'~ mi4 re16 do si la si4 do16 si la sold! |
  
  % bar 13 - 16
  la4 fa'2 mi16 re mi fa re4 re, mi2 |
  si'1*2\rest | si1\rest si4\rest si2 la16 sol fa mi |
  fa2 re
  \once \override NoteHead.style = #'baroque
  re\breve*1/2~ |
  
  % bar 17 - 20
  \once \override NoteHead.style = #'baroque
  re\breve*1/2 mi2 fa16 sol la si do re mi fa |
  sold,8 la16 si mi,8 fa16 sol! la2~ la1 |
  sib2 la~ la4 re2 do4~ |
  do fa2 mib4 re1 |
  
  % bar 21 - 24
  do2 si1\rest si2~ |
  si4. mi,8 sol2~ sol4 fad sold la |
  si do8 re mi2~ mi8. re16 do si la sold la2~ |
  la2 sold4.\trill fad8 
  \once \override NoteHead.style = #'baroque
  sold\breve*1/2~ |
  
  \bar "|."
}

PieceXXXIA = \relative sol' {
  % bar 1 - 4
  sold1~ sold4 la2 sold4 |
  la2 fa4\rest la4~ la4 sol8 fad sol2 |
  mi1. mi2 | re2. do4 sib1 |
  
  % bar 5 - 8
  \change Staff=down \stemDown la1 si2 la2 \change Staff=up \stemDown |
  si4\rest mi2 re8. do16 \change Staff=down \stemUp si2 \change Staff=up \stemDown mi~ |
  mi re4 do re2 dod2 | re1 \change Staff=down \stemDown la |
  
  % bar 9 - 12
  \change Staff=up \stemDown mi'1\rest mi8\rest mi fad sol la dod, re si |
  do4 mi2 re4~ re8[ dod re mi] fa4 mi |
  la,2 mi'2~ mi8 si do re mi2 |
  mi1 r2. mi4~ |
  
  % bar 13 - 16
  mi4 mi2\rest do4~ do si2 la4 |
  re2. mi16 re do si do2 re |
  do2 si8 do re do si2 mi~ |
  mi4 re16 do si la sib2 la1 |
  
  % bar 17 - 20
  si1 dod2 re2~ |
  re4 do!~ do8 re16 mi la,8 si16 do re4 mi~ mi8 fa16 dod re8.\trill dod16 |
  re8 mi16 fa sol2 fad8 mi fad2 sold8 la16 si  mi,8 fa!16 sol! |
  la2 sol sol1 |
  
  % bar 21 - 24
  mi2. re8 dod red4 mi2 re4~ |
  re do2 si4 dod re2 do!4 |
  \change Staff=down \stemUp si la \once \stemDown sold \change Staff=up \stemDown mi'~ mi2 re4 do8 re |
  mi1
  \once \override NoteHead.style = #'baroque
  si\breve*1/2~ |
  
  \bar "|."
}

PieceXXXIT = \relative mi' {
  % bar 1 - 4
  mi2~ mi8 re do si do2 si |
  la1 si2 re~ | re do la sol~ |
  sol4 fad la1 sol2~ |
  
  % bar 5 - 8
  \once \stemUp sol fad re' re~ |
  re do4 si8.\trill la16 \once \stemDown sold2 do2~ |
  do la sib la4.\trill sol8 | la1 mi2 la~ |
  
  % bar 9 - 12
  la2 sold la4 sol!2 fa!4 |
  mi2 la8\rest mi fa sol la2. sol4~ |
  sol4 fad sold la~ la8 sold la si do4 si8 la |
  si2. do16 si la sold la2 sol! |
  
  % bar 13 - 16
  re'4\rest re16 do si la si4 la2\rest sol2 la16 sol fa mi |
  fad2 sold la si4 si4~ |
  si8 fad sold la~ la4 la2 sold!4 la2 |
  la2. sol4~ sol4 fad8 mi fad2 |
  
  % bar 17 - 20
  sol1 si1\rest | si1\rest si2.\rest fa4~ |
  fa4 mi8 fa16 sol dod,4 la'~ la8 si16 do fad,8 sol16 la r4 do~ |
  do8 re16 mi la,8 si16 do si4 do4~ do si8 la si2~ |
  
  % bar 21 - 24
  si4 la8 sold la2~ la4 sol!2 fad4~ |
  fad mi re2 mi2. fad4 |
  \once \stemDown sold la si2 la1 |
  do2 si4.\trill la8
  \once \override NoteHead.style = #'baroque
  si\breve*1/2~ |

  \bar "|."
}

PieceXXXIB = \relative mi {
  % bar 1 - 4
  mi1. mi2 | fa fad si,2. la8 sol |
  do1 dod |
  \once \override NoteHead.style = #'baroque
  re\breve*1~ |
  
  % bar 5 - 8
  re1 re |
  \once \override NoteHead.style = #'baroque
  mi\breve*1 |
  fa1. mi2 | re1 dod2 do |
  
  % bar 9 - 12
  si1 la1~ | la8 la si dod re2 si1\rest |
  si2\rest si8\rest si do re mi1 | mi1 fa2. mi4 |
  
  % bar 13 - 16
  fa2 sol1 do,2~ |
  do2 si la4 la'2 sol16 fa mi re |
  mi2. re4 mi2 dod |
  re1~ re |
  
  % bar 17 - 20
  sol,2 sol'~ sol fa |
  mi fa~ fa8 sol16 la dod,8 re16 mi la,2 |
  sol2 mi2\rest re' mi | fa sol sol1 |
  
  % bar 21 - 24
  do,2. si8 la si1 | sol1 mi |
  mi' fa mi~ 
  \once \override NoteHead.style = #'baroque
  mi\breve*1/2~ |
  
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
        \PieceXXXIS
        \\
        \PieceXXXIA
      >>
    }
    \new Staff = "down" {
      \clef "bass"
      %\MyTempo
      \MyKey
      \MyMeter
      <<
        \PieceXXXIT
        \\
        \PieceXXXIB
      >>
    }
  >>
}