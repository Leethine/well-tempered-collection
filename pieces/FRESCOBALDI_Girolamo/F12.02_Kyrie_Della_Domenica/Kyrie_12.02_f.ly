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
  subtitle = "Kyrie della Domenica"
  subsubtitle = "Fiori Musicali"
  composer = "G. Frescobaldi"
  opus = "F.12/02"
  tagline = "© 2022 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 8/4
MyTempo = \tempo "Adantino"
MyKey = \key do \major
PieceName = "KYRIE. della Domenica"

ManualI = \relative la' {
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

ManualII = \relative re' {
  % bar 1 - 3
  r1 r4 re re mi |
  fa re fa2~ fa4 mi8 re mi2 |
  fa4 mi8 re dod2 r2 re2~ |
  
  % bar 4 - 6
  re4 do!8 si do2 r4 re re mi|
  fa mi re dod re2 mi2 |
  fa4 re fa1 mi2~ |
  
  % bar 7 - 9
  mi4 re8 do re2 r1 |
  r4 la la si do si la sol |
  fa2 sol la r |
  
  % bar 10 - 12
  r la2~ la4 sol8 fa sol4 la |
  sib sol sib2~ sib4 la8 sol la2 |
  sib1 la |
  
  % bar 13 : additional
  \once \override NoteHead.style = #'baroque
  sol\breve*1 |
  
  \bar "|."
}

ManualIII = \relative la {
  % bar 1 - 3
  r2 la2~ la4 sol8 fa sol2 |
  re'4 do8 si la4 si do sol do2 |
  la r4 la4~ la sol8 fa sol2 |
  
  % bar 4 - 6
  la1 r1 | r1*2 |
  r4 la4 la si do si8 la sol4 do |
  
  % bar 7 - 9
  la2 sib4 la sol2 la4 sol |
  fa2. mi8 re la'2 mi |
  r4 re re mi fa2 re |
  
  % bar 10 - 12
  sol fa4 mi re1 |
  r1. la'2~ |
  la4 sol8 fa sol1 fad4 mi |
  
  % bar 13 : additional
  \once \override NoteHead.style = #'baroque
  fad\breve*1 |
  
  \bar "|."
}

PedalI = \relative la, {
  % bar 1 - 3
  r1*2 | r1*2 | r2 la2 sib1 |
  
  % bar 4 - 6
  la2 la' sib la4 sol |
  fa2 mi4\rest la~ la sol8 fa sol2 |
  re1 r1 |
  
  % bar 7 - 9
  r2 re2~ re4 dod8 si dod2 |
  re1 r2 la2 |
  sib2. la8 sol re'4 do sib la |
  
  % bar 10 - 12
  sib sol re'2 sib2. la4 |
  sol2 r4 re' re mi fa re |
  sib2. la8 sol re'1~ |
  
  % bar 13 : additional
  \once \override NoteHead.style = #'baroque
  re\breve*1 |
  
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