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
  line-width = 14.6\cm
  ragged-right = ##f
  line-width = #(- line-width (* mm 3.000000) (* mm 1))
}

\layout {
  
}

%*****************************************
%  Set Header
%*****************************************
\header {
  title = "N°. 3. Trällerliedchen"
  subtitle = " "
  tagline = "© 2021 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 4/4
%MyTempo = \tempo "Allegro" 4. = 76
MyKey = \key do \major
PieceName = "Nicht schnell"

VoiceI = \relative {
  %bar 1 - 4
  mi''4 re do re
  mi fa sol2
  fa4 sol mi fa
  re fa do re
  
  %bar 5 - 8
  mi re do re
  mi fa sol2
  fa4 sol mi fa
  re2 do4 r
  
  \bar "||"

  %bar 9 - 12
  <<
    \voiceOne {
      si4 la sol la
    }
    \new Voice {
      \voiceTwo
      si8[ re, la' re,]  sol[ re la' re,]
    }
  >>
  <<
    \voiceOne {
      si'4 do { \stemDown re2 }
    }
    \new Voice {
      \voiceTwo
      si8[ sol do sol]  {\hide re'}[ sol, fad sol]
    }
  >>
  <<
    \voiceOne {
      do4 re si do
    }
    \new Voice {
      \voiceTwo
      do8[ sol re' la]  si[ sol do sol]
    }
  >>
  <<
    \voiceOne {
      la4 do sol la
    }
    \new Voice {
      \voiceTwo
      la8[ re, do' re,]  sol[ re la' re,]
    }
  >>
  
  %bar 13 - 16
  <<
    \voiceOne {
      si'4 la sol la
    }
    \new Voice {
      \voiceTwo
      si8[ re, la' re,]  sol[ re la' re,]
    }
  >>
  <<
    \voiceOne {
      si'4 do re mi
    }
    \new Voice {
      \voiceTwo
      si8[ sol do sol]  re'[ sol, mi' sol,]
    }
  >>
  <<
    \voiceOne {
      do4 re si do
    }
    \new Voice {
      \voiceTwo
      do8[ sol re' fad,]  si[ sol do sol]
    }
  >>
  <fad la>2 sol8 si do re
  
  %bar 17 - 20
  \stemDown
  mi4 re do re
  mi fa sol2
  fa4 sol mi fa
  re fa do re
  
  %bar 21 - 24
  mi re do re
  mi fa sol la
  fa sol mi fa
  re2 do4 r

  \bar "|."
  
  
}


BassoI = \relative {
  \clef "treble"
  %bar 1 - 4
  do'8 sol' si, sol' la, sol' si, sol'
  do, sol' re sol mi sol mi sol
  re sol si, sol' do, sol' la, sol'
  si, sol' re sol la, sol' si, sol'
  
  %bar 5 - 8
  do, sol' si, sol' la, sol' si, sol'
  do, sol' re sol mi sol mi sol
  re sol si, sol' do, sol' la, sol'
  si, sol' si, fa' <do mi>4 r
  
  %\bar "||"

  \clef "bass"
  %bar 9 - 12
  sol fad mi fad
  sol la si2
  mi,4 fad sol mi
  fad la mi fad
  
  %bar 13 - 16
  sol fad mi fad
  sol la si do
  la si sol mi
  <re do'>2 <sol si>8 sol la si
  
  \clef "treble"
  %bar 17 - 20
  do8 sol' si, sol' la, sol' si, sol'
  do, sol' re sol mi sol mi sol
  re sol si, sol' do, sol' la, sol'
  si, sol' re sol la, sol' si, sol'
  
  %bar 21 - 24
  do, sol' si, sol' la, sol' si, sol'
  do, sol' re sol mi sol fa sol
  re sol si, sol' do, sol' la, sol'
  si, sol' sol, fa' <do mi>4 r
  %\bar "|."
}


%*****************************************
%  Start Score
%*****************************************

%\markup { \vspace #1 }
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
        \VoiceI
    }
    \new Staff { 
      \clef "bass"
      %\MyTempo
      \MyKey
      \MyMeter
        \BassoI
    }
  >>
}