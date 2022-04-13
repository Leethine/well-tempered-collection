%! Title: KYRIE Alio modo 
%! Subtitle: de Fiori Musicali
%! Subsubtitle:
%! Type: final
%! Status: done
%! Remark:

\version "2.22.1"
\include "italiano.ly"

%****************************************************************
% Start cut-&-pastable-section

%****************************************************************

\paper {
  % Set paper
  #(set-paper-size "b5")
  indent = 0\mm
  line-width = 145\mm
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
  subtitle = "Kyrie. Alio modo"
  subsubtitle = "Fiori Musicali"
  composer = "G. Frescobaldi"
  %opus = ""
  tagline = "© 2022 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 3/2
MyTempo = \tempo "Adantino"
MyKey = \key do \major
PieceName = "KYRIE. Alio modo"

ManualI = \relative la' {
  % bar 1 - 5
  r2 la si | do1 si2 | la1 sol2 |
  fa2. mi4 fa sol | mi1.~ |
  
  % bar 6 - 11
  mi1. | fa1. | r1. | r1. | r2 la sol | fa la si |
  
  % bar 12 - 16
  do2. re4 mi2 | la,4 si dod re mi2~ | mi re dod |
  re do sib | la2. sol4 fa2 |
  
  % bar 17 - 21
  mi mi' re | do1 si2 | la1 sol2 | fa2. sol4 mi2 |
  \once \override NoteHead.style = #'baroque
  fad\breve*1/2
  
  \bar "|."
}

ManualII = \relative la' {
  % bar 1 - 5
  r1. | r2 la sol | fa mi1~ | mi2 re1 | r2 do re |
  
  % bar 6 - 11
  mi re do | r do1 | re1. | mi1 fa2 | mi1. | re1. |
  
  % bar 12 - 16
  r2 la' sol | fa la dod, | fa1 mi2 |
  fa la sol | fa dod re |
  
  % bar 17 - 21
  mi1 fa2 | mi la sol | fa dod mi~ | mi re dod |
  \once \override NoteHead.style = #'baroque
  re\breve*1/2
  \bar "|."
}

ManualIII = \relative la {
  % bar 1 - 5
  la1.~ | la1.~ | la1.~ | la1.~ | la1.~ |
  
  % bar 6 - 11
  la1.~ | la1.~ | la1.~ | la1.~ | la1.~ | la1.~ | 
  
  % bar 12 - 16
  la1.~ | la1.~ | la1.~ | la1.~ | la1.~ | 
  
  % bar 17 - 21
  la1.~ | la1.~ | la1.~ | la1.~ |
  \once \override NoteHead.style = #'baroque
  la\breve*1/2
  
  \bar "|."
}

PedalI = \relative la, {
  % bar 1 - 5
  r1. | r1. | r1. | r1. | r2 la si |
  
  % bar 6 - 11
  do si la | re la' sol | fa mi re |
  dod la re | re dod1 | re1. | 
  
  % bar 12 - 16
  r1. | r1. | r1. | r1. | fa2 mi re | 
  
  % bar 17 - 21
  dod1 re2 | la1.~ | la1.~ | la1. | 
  \once \override NoteHead.style = #'baroque
  re\breve*1/2
  
  \bar "|."
}
%*****************************************
%  Start Score
%*****************************************

%\markup { \vspace #1 }
\score {
  \header {
    %piece = \PieceName
  }
  \new StaffGroup <<
    \new StaffGroup <<
    \new Staff = "ManualOne" { 
      \clef "treble" 
      \MyTempo
      \MyKey
      \MyMeter
      <<
        \ManualI
        \\
        \ManualII
      >>
    }
    \new Staff = "ManualTwo" { 
      \clef "bass"
      %\MyTempo
      \MyKey
      \MyMeter
      \ManualIII
    }
    >>
    \new Staff = "PedalOrgan" {
      \clef "bass"
      %\MyTempo
      \MyKey
      \MyMeter
      \new Voice {
        \PedalI
      }
    }
  >>
}