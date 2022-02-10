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
  line-width = 15\cm
  ragged-right = ##f
  line-width = #(- line-width (* mm 3.000000) (* mm 1))
}

\layout {
  
}

%*****************************************
%  Set Header
%*****************************************
\header {
  title = "Fuga super"
  subtitle = "Allein Gott in der Höh sei Ehr"
  opus = "BWV 716"
  tagline = "© 2022 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 3/2
MyKey = \key sol \major
PieceName = ""

VoiceI = \relative sol' {
  %bar 1 - 16
  r2 sol2 la2 si1 do2 re1 do2 si1 la2 |
  si2 la2 sol2 la2 re1~ re2 dod2 mi2~ mi2 re2 dod2 |
  re1. do1 si2 la2 re2 do2 si2 mi2 re2 | 
  si1 do2 re1 mi2 la,2 si2 do2 re2 mi2 fad2 | 
  
  %bar 17 - 32
  sol1.~ sol2 fad1~ fad2 mi2 re2~ re2 do1~ | 
  do2 si2 la2 si1 dod2 re1.~ re1 do2 | 
  si1 mi2 la,1 re2~ re1 dod2 re1.~ | 
  re2 dod2 do2 si1 dod2 re2 sol1~ sol2 fad4 mi4 re4 do4 | 
  
  %bar 33 - 40
  si2 la4 sol4 la4 si4 do4 re4 do4 si4 la4 re4 |
  si4 sol4 mi4 la4 fad4 re4 sol4 re4 sol1~ | 
  sol2 fad4 mi4 fad4 sold4 la4 mi4 la1~ |
  la2 sol4 fad4 sol4 la4 si4 fad4 si4 la4 si4 do4 | 
  
  %bar 41 - 48
  re2 do4 si4 do4 re4 mi2~ mi4 re4 mi4 fad4 sol2 r2 r2 R1. |
  r2 r2 fad2~ fad2 mi4 re4 mi4 fad4 |
  sol4 la4 sol4 fad4 mi4 la4 fad4 re4 si4 mi4 dod4 la4 |
  
  %bar 49 - 56
  re2. do4 re4 mi4 la,2. sol4 la4 si4 | 
  mi,2. red4 mi4 fad4 si,4 red4 mi4 fad4 sol4 la4 | 
  si4 la4 si4 do4 si4 la4 sol2. fad4 sol4 la4 | 
  si2 fad4 sol4 la4 fad4 sol4 si4 mi4 red4 mi4 fad4 | 
  
  %bar 57 - 64
  sol4 la4 sol4 fad4 mi4 la4 fad4 mi4 fad4 sol4 la4 fad4 | 
  re4 sol4 mi4 do4 do'4 fad,4 sol4 re4 mi4 dod4 re4 mi4 | 
  fad1 sol2 la1 sol2 fad1 mi2 fad2 la,2 re2~ | 
  
  %bar 65 - 70
  re2 do4 si4 do4 re4 mi4 si4 mi1~ | 
  mi2 re4 do4 re4 sol4 do,1.~ | 
  do4 la4 re4 mi4 re4 do4 si2 mi1 | 
  
  %bar 71 - 79
  mi4 re4 sol4 la4 sol4 fad4 mi1.~ | 
  mi2 re4 mi4 fad4 sol4 la4 si4 la4 sol4 fad4 mi4 | 
  red4 si4 mi4 fad4 mi4 re4 do4 si4 la1~ | 
  la2 sol4 fad4 sol4 la4 fad4 sol4 la4 do4 si4 la4 | 
  
  %bar 80 - 89
  sol4 si4 mi1 mi2 re4 do4 si4 re4 | 
  do4 si4 do4 fad4 mi4 re4 mi2 sol,2 la2 | 
  si1 do2 re1 do2 si1 la2 si2. re4 do4 si4 | 
  la4 sol4 fad4 mi4 re2~ | 
  re4 re'4 mi4 do4 la4 fad'4 |
  
  <si, re sol>1. 
  
  \bar "|."
}

VoiceII = \relative re' {
  %bar 1 - 16
  R1.*4 r2 re2 mi2 fad1 sol2 la1 sol2 | 
  fad1 mi2 fad2 mi2 re2 mi2 sol1~ | 
  sol2 fad2 la2~ la2 sol2 fad2 sol1.~ | 
  sol2 fad2 mi2 fad2 sol2 la2~ la2 sol2 do2 | 
  
  %bar 17 - 29
  re2 do2 si2 do1 re2 sol,1 fad2 sol1 la2 | 
  re,1 re2 sol2 fad2 mi2 fad2 mi2 re2 mi1 fad2 | 
  sol1.~ sol1 fad2 mi2 fad2 sol2~ | 
  sol2 fad4 mi4 re4 mi4 fad2 mi4 re4 mi4 fad4 | 
  
  %bar 30 - 39
  sol4 la4 sol4 fad4 mi4 la4 fad4 re4 si4 mi4 dod4 la4 | 
  re4 dod4 re4 mi4 fad4 re4 sol2 fad2 fa2 | 
  mi1 fad2 sol2 do,1~ do2 si4 la4 si4 dod4 | 
  re4 la4 re1~ re2 do4 si4 do4 re4 mi4 si4 mi1~ |
  
  %bar 40 - 47
  mi2 re4 do4 re4 mi4 fad4 sol4 la2. la4 | 
  sol4 fad4 sol2 do2~ do4 si4 do4 mi4 re4 do4 | 
  si4 la4 si4 re4 dod4 mi4 la,4 sol4 la4 dod4 si4 re4 | 
  sol,4 fad4 sol4 la4 sol4 fad4 mi2 s2*2 |
  
  %bar 48 - 52 
  s2*15 | 
  
  %bar 53 - 63
  s1 fad2~ fad4 si,4 mi1~ mi2 red1 | 
  mi2. fad4 sol4 la4 si1 do2 re1 do2 si1 la2 |  
  si2 r2 r4 dod,4 re4 mi4 re4 dod4 si4 mi4 | 
  dod4 si4 dod4 re4 mi4 dod4 la4 re4 si4 sol4 sol'4 dod,4 | 
  
  %bar 64 - 71
  re4 dod4 re4 mi4 fad4 sol4 | 
  la4 mi4 la1~ la2 sol4 fad4 sol4 la4 | 
  si4 fad4 si1~ si4 mi,4 la4 si4 la4 sol4 fad1. |  
  sol4 fad4 sol4 si4 la4 sol4 fad2 re2 sol2~ | 
  
  %bar 72 - 79
  sol4 mi4 la4 si4 la4 sol4 fad4 mi4 fad4 sol4 la4 si4 | 
  mi,2 fad4 sol4 la2~ la2 sol4 fad4 sol2~ | 
  sol2 fad4 sol4 fad4 mi4 red4 si4 mi1~ | 
  mi2 red1 mi4 fad4 sol4 si4 la4 sol4 |  
  
  %bar 80 - 89
  fad4 mi4 fad2 sold2 la2 mi4 re4 do4 si4 | 
  la4 sol4 fad4 mi4 fad4 la4 sol4 si4 re4 sol4 fad4 mi4 | 
  fad4 sol4 la4 fad4 re4 fad4 sol4 re4 mi4 si4 do4 fad,4 | 
  sol4 mi4 do'1~ do4 mi4 re4 do4 si4 la4 si2 do1 | 
  
  <si re sol>1. 
  
  %\bar "|."
}

BassoI = \relative sol {
  %bar 1 - 12
  R1.*12 | 
  
  %bar 13 - 28
  r2 sol2 la2 si1 do2 re1 do2 si1 la2 | 
  si2 la2 sol2 la1 si2 do2 do,2 re2 mi1 fad2 | 
  sol1 fad2 mi1 la2 re,2 do2 si2 | 
  do2 si2 la2 mi'2 re2 dod2 fad2 mi2 re2 la'1 la,2 re1. |
  
  %bar 29 - 39
  R1.*11 |
  
  %bar 40 - 52
  r2 r2 si'2 si2 la2 si2 do2 si2 la2 sol2 mi2 fad2 | 
  R1.*3 | 
  r2 la1~ la2 sol1 fad4 re4 sol1~ sol2 fad4 mi4 fad4 sol4 | 
  la4 mi4 la1~ la2 sol4 la4 si4 do4 | 
  
  %bar 53 - 69
  fad,1 s2*19 s2 sol4 la4 si4 s4 | 
  R1.*9 |  
  
  %bar 70 - 69
  sol,1. si1. do1. re1. do1. si1. la1. si1. | 
  R1. si1. si1. la1. do1. si1. la1. sol1. | 
  mi1. fad1. sol1.~ | 
  
  <sol sol'>1. 
  
  %\bar "|."
}

BassoII = \relative sol {
  %bar 1 - 43
  s1*18 s2*33 s2*27 s2*21 s1*6 | 
  
  %bar 44 - 51
  sol2 fad2 mi2 fad2 mi2 re2 | 
  mi1 re2 dod2 re2 la2 | 
  si2 mi2 la,2 si2. la4 si4 do4 |
  re4 la4 re1~ re2 dod4 si4 dod4 red4 | 
  
  %bar 52 - 
  mi4 si4 mi1 mi2 re1 |
  mi2 do2 do'2 sol4 la4 si2 si,2 | 
  mi,1.~ mi1 la2 re,2 mi2 fad2 sol2 do,2 re2 |  
  sol2 s1*10 s1*12 s2*21 s1*12 
  
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
      <<
        \VoiceI
        \\
        \VoiceII
      >>
    
  }
  \new Staff { 
    \clef "bass"
    \MyKey
    \MyMeter
      <<
        \BassoI
        \\
        \BassoII
      >>
  }
  >>
}

