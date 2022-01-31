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
  title = "N°. 5 Stückchen"
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
  
  %bar 1 - 9
  { \omit r2 }  mi''4 \p ( fa
  sol la re, mi
  fa2) do4( re
  mi mi re la
  do si) mi( fa
  sol la re, mi
  fa2) do4( re
  mi mi re si
  re do) { \omit r2 }
  
  \bar "||"
  
  %bar 10 - 17
  { \omit r2 } si4 \p ( do
  re mi do re
  mi2) \crescTextCresc do4 \< ( re \!
  mi fa re mi
  fa re) mi( fa
  sol la re, mi
  fa2) do4( re
  
  %bar 18 - 21
  mi \dimTextDim mi \> re \! si
  re do) si \p ( do
  re mi do re
  mi2) \crescTextCresc do4 \< ( re \!
  
  %bar 22 - 25
  mi fa re mi
  fa re) mi( fa
  sol la re, mi
  fa2) do4( re
  mi \dimTextDim mi \> re \! si
  re do) { \omit r2 }
  
  \bar "|."

}


BassoI = \relative {
  
  \clef "treble" 
  %bar 1 - 4
  { \omit r2 } do'8( sol' re sol
  mi sol fa sol si, sol' do, sol'
  re sol re sol) la, sol' si,( sol'
  do, sol' do, sol' re fad re fad
  
  %bar 5 - 9
  sol, sol' sol, sol') do, sol' re( sol
  mi sol fa sol si, sol' do, sol'
  re sol re sol) la, sol' si,( sol'
  do, sol' mi sol fa, fa' sol, re')
  <<
    { \voiceOne fa4( mi) }
    \new Voice { 
      \voiceTwo
      do2 { \omit r2 }
    }
  >>
  
  %\bar "||"
  
  %bar 10 - 13
  { \omit r2 } \slurDown sol8 ( sol' la, sol'
  si, sol' do, sol' la, sol' si, sol'
  do, sol') do, sol' la,( sol' si, sol'
  do, sol' re sol si, sol' do, sol'
  
  %bar 14 - 17
  re sol si, sol') do,( sol' re sol
  mi sol fa sol si, sol' dod, sol'
  re sol) re sol la,( sol' si, sol'
  do, sol' mi sol fa, fa' sol, re')
  
  %bar 18
  <<
    { \voiceOne fa4( mi) }
    \new Voice { 
      \voiceTwo
      do2
    }
  >>
  \slurDown sol8 ( sol' la, sol'
  
  %bar 19 - 25
  si, sol' do, sol' la, sol' si, sol'
  do, sol') do, sol' la,( sol' si, sol'
  do, sol' re sol si, sol' do, sol'
  re sol si, sol') do,( sol' re sol
  mi sol fa sol si, sol' dod, sol'
  re sol) re sol la,( sol' si, sol'
  do, sol' mi sol fa, fa' sol, re')
  
  %bar 26
  <<
    { \voiceOne fa4( mi) }
    \new Voice { 
      \voiceTwo
      do2 { \omit r2 }
    }
  >>
  
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
      %\clef "bass"
      \clef "treble"
      %\MyTempo
      \MyKey
      \MyMeter
        \BassoI
    }
  >>
}
