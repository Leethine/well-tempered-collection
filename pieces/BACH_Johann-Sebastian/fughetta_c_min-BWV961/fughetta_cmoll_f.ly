%! Title: Fughetta c-moll, BWV961
%! Subtitle:
%! Subsubtitle:
%! Type: final
%! Status: review
%! Remark:

\version "2.22.1"
%% Generated by lilypond-book
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=14.5\cm,noragged-right,papersize=a5,quote]
%\include "lilypond-book-preamble.ly"
\include "italiano.ly"

%****************************************************************
% Start cut-&-pastable-section

%****************************************************************

\paper {
  % Set paper
  #(set-paper-size "b5")
  indent = 0\mm
  line-width = 14.5\cm
  ragged-right = ##f
  line-width = #(- line-width (* mm 3.000000) (* mm 1))
}

\layout {
  
}

%*****************************************
%  Set Header
%*****************************************
\header {
  title = "FUGHETTA"
  subtitle = "C-moll"
  opus = "BWV 961"
  tagline = "© 2022 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 12/8
MyKey = \key do \minor
PieceName = ""



VoiceI = \relative sol' {
  %bar 1 - 4
  R1.*3 |
  sol8 la sib! do re mib re do sib la! sib do |
  
  %bar 5 - 8
  sib8\prall la sol sol' fad sol mib\prall re do sol' fad sol |
  re\prall do sib sol' fad sol do, re mib la, re do |
  sib16 re do mib re fa mib4.~\mordent mib8 re do re4.~\mordent |
  re8 do si do re mib fa sol lab re, sol fa |
  
  %bar 9 - 12
  mib8 fa sol do, fa mib re mib fa sib,! mib reb |
  do4.\mordent re!4.\trill mib8 re do sib do lab |
  sol4 r4 r1 |
  mib8 fa sol lab sib do sib lab sol fa sol lab |
  
  %bar 13 - 16
  sol8 la sib do re mib re do sib la! sib do |
  sib do re mib fa sol fa mib re do re mib |
  re16 fa mib sol fa lab! sol4 sib,8 lab sol lab~ lab fa'sol, |
  lab4.\prall \stemUp sol16 sib lab do sib reb 
  \stemNeutral do sib lab sol fa mi fa lab sol sib lab do |
  
  %bar 17 - 20
  sib16 lab sol fa mi re mi sol fa lab sol sib lab do fa do sib lab sol sib mi sib lab sol |
  fa8 sol lab sib do reb do sib lab sol lab sib |
  lab8\prall sol fa fa' mi fa reb\prall do sib fa' mi! fa |
  do8\prall sib lab fa' mi! fa sib, do reb sol, do sib |
  
  %bar 21 - 23
  lab16 sol lab do re! mib! fa lab, fa' lab, fa' lab, sol fa sol sib do re mib re do sib lab sol |
  fa16 mib fa la si do re si fa re' si fa mib4 do'8 \grace {sib16(} lab!4) fa'8 |
  \grace {do16} si4 do8~ do si16 la si8 do4.~ do16 mib re fa mib do |
  
  %bar 24 - 27
  fa,4.~ \stemUp fa16 mib' re fa mib do mib,4.~ mib16 mib' re fa mib do \stemNeutral |
  lab'16 sol fa mib re do si re mib fa mib re sol fa mib re do sib lab do re mib re do |
  fa4.~\mordent fa16 lab sol fa mib re sol8 fa16 mib re do sol8 do si\trill |
  do1.\fermata
  
  \bar "|."
}

VoiceII = \relative do {
  %bar 1 - 4
  do8 re mib fa sol lab sol fa mib re mib fa |
  mib8\prall re do do' si do lab\prall sol fa do' si! do |
  sol8\prall fa mib do' si do fa, sol lab re, sol fa |
  mib4.~ mib4 la,8 sib!4 do8 re4 re,8 |
  
  %bar 5 - 8
  sol4.~ sol8 la sib do4. do8 sib la |
  sib4. sib8 la sol mib'4\mordent do8 re4 re,8 |
  sol8 la sib do re mib fa sol lab! sib do re |
  \clef "treble"
  mib fa sol lab4.~\mordent lab4 fa8 sol4 \clef "bass" sol,8 |
  
  %bar 9 - 12
  do4 sib!8 lab4 fa8 sib4 lab8 sol4 mib8 |
  lab8 sib do fa, sib lab sol4 lab8 sib4 sib,8 |
  mib8 fa sol lab sib do sib lab sol fa sol lab |
  sol4.~ sol8 fa mib re4 mib8 lab,4 sib8 |
  
  %bar 13 - 16
  mib,4. mib'4 la,8 sib4 do8 re4 re,8 |
  sol4. sol8 la sib la4 sib8 mib4 fa8 |
  sib,8 do re mib fa sol fa mib re do re mib |
  re8 do sib mib fa sol lab sib do re, mi fa |
  
  %bar 17 - 20
  sol8 lab sib do, re mi fa lab reb sib sol do |
  reb,4.~ reb4 sol,8 lab4 sib8 do4 do,8 |
  fa4. fa'8 sol lab sib4.~ sib8 lab sol |
  lab4.~ lab8 sol fa sol4 fa8 mi4 do8 |
  
  %bar 21 - 23
  fa4 mib!8 re!4 sib8 mib4 re8 do4 mib8 |
  re4 do8 si4 sol8 do8 re mib fa sol lab! |
  sol8 fa mib re mib fa mib\prall re do do' si do |
  
  %bar 24 - 27
  lab8\prall sol fa do' si do lab\prall sol fa do' si! do |
  fa, sol lab re, sol fa mib16 sol do sol mib sol fa4 mib8 |
  re16 fa lab fa re fa si,4 sol'8 mib8 lab fa sol4 sol,8 |
  do,1._\fermata
  
  %\bar "|."
}

%*****************************************
%  Start Score
%*****************************************

%\markup { \vspace #1 }
\score {
  \header {
  %piece = \PieceName
  }
  \new PianoStaff <<
  \new Staff { 
    \clef "treble" 
    \MyKey
    \MyMeter
      \VoiceI
    
  }
  \new Staff { 
    \clef "bass"
    \MyKey
    \MyMeter
      \VoiceII
  }
  >>
}
