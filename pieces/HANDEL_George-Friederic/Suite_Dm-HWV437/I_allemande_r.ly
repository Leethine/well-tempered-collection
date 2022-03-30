%! Title: Suite d-moll, HWV 437
%! Subtitle: I. Allemande
%! Subsubtitle:
%! Type: raw
%! Status: done
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
  \context {
    \Score
    %\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    %\override SpacingSpanner.uniform-stretching = ##t
    
  }
}

%*****************************************
%  Set Header
%*****************************************
\header {
  title = "I. Allemande"
  subtitle = "Suite Ré mineur"
  composer = "G.F. Handel"
  opus = "HWV 437"
  tagline = "© 2022 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 4/4
MyKey = \key re \minor
PieceName = "Allemande"

VoiceI = \relative la' {
  %bar 1 - 3
  s2 s4. la8 |
  la4~ la16 la sib sol la4~ la16 la sib do |
  re4~ re16 fa mi re re8 dod s4 |
  
  %bar 4 - 6
  fa16 la, mi' la, re sol, do fa, sib sol la fa sol mi do' mi, |
  fa mi fa sol la8 sol la fa <mi sol do>4 |
  r16 sib' la sol re'4 r16 do si la mi'4 |
  
  %bar 7 - 9
  r16 la, fa' fa sol, mi' mi mi re fa, fa fa mi do' do do |
  r16 do si la sold8 la si do16 re si8. la16 |
  la4 r16 la8 sold16 la4 s4
  
  \bar ":..:" \break
  
  %bar 10 - 13
  s1 | mi'4~ mi16 mi fa re mi4. mi8 |
  fa4~ fa16 la sol fa fa8 mi r16 do fa mi |
  re4~ re16 re mi sib do4~ do16 do fa mi |
  
  %bar 14 - 17
  re16 do sib la sol sib re, fa <mi do sol>4 fa16\rest do fa mi |
  re16 la' sol fa mi sib' la sol fa4 sol8 la |
  la8 sol16 fa mi8.\prallprall fa16 fa4 r16 \stemDown do' fa mi |
  \stemUp <re sib fa>4 \stemDown r16 fa mi re \stemUp <dod la mi>4 \stemDown r16 fa mi re |
  
  %bar 18 - 21
  sib'4 r16 mi, re do la'4 r16 fa fa fa |
  sol,16 mi' mi mi \stemNeutral re fa, fa fa mi do' do do sib re, re re |
  do la' la la sol sib, sib sib la fa' mi re dod8.\prallprall re16 |
  re4 r16 re8 dod16 re4. 
  
  \bar ":|."
  
}

VoiceII = \relative sol' {
  %bar 1 - 3
  s1 |
  r16 sol fa mi fa4 r16 sol fa mi fa4 |
  r16 la sol fa sol4 s4 r16 dod re mi |
  
  %bar 4 - 6
  s1 |
  s1 |
  re,4 <fa la> mi si'! |
  
  %bar 7 - 9
  s1 |
  fa4 mi s2 |
  <dod mi>4 r8 si!8 <dod mi>4 s8 r8 
  
  %\bar ":|."
  
  %bar 10 - 13
  s2 s4. mi'8 |
  r16 re dod si dod4 r16 re dod si 
  << { \voiceOne dod4 } 
     \new Voice { \voiceTwo r16 sol fa mi }
  >> |
  \stemDown la16\rest la si do! si4 do s4 |
  la16\rest la sib fa sol4_( sol16) sol la mi fa4 \stemNeutral |
  
  %bar 14 - 21
  s1 s1 s1 s1
  s1 s1 s1 |
  
  %\bar ":|."
  
}

VoiceIII = \relative re' {
  %bar 1 - 3
  s1 |
  \stemDown re8 la re, sol re' la r do |
  sib la sib sol la mi' la dod, |
  
  %bar 4 - 6
  re8 do sib la sol fa do' la |
  re sib do do, fa4 r16 mi re do |
  sol'4 r16 fa mi re la'4 r16 sold fad mi |
  
  %bar 7 - 9
  do'8 re si do fa, sol la la, |
  r8 \stemUp re'~ re16 do si la sold mi la re, r8 sold |
  la8 la, dod mi \stemNeutral <la, mi' la>4 s8 r8 
  
  %\bar ":|."
  
  %bar 10 - 13
  s2 s4. r8 s1 s1 s1
  %bar 14 - 17
  s1 |
  s4 s4 r16 do' sib la \stemUp sol8 fa |
  s4 s4 la8 sib do la |
  s1 |
  
  %bar 18 - 21
  s1 s1 |
  s4 s4 s4 mi8 sol |
  <la fa>4 r8 mi8 <la fa>4.
  \stemNeutral
  
  %\bar ":|." 
}

VoiceIV = \relative re {
  %bar 1 - 3
  s1 |
  s2. re4 |
  s1 |
  
  %bar 4 - 6
  s1 | s1 | s1 |
  
  %bar 7 - 9
  s1 |
  re4 mi s4 mi |
  s1
  
  %\bar ":|."
  
  %bar 10 - 13
  s1 |
  la'8 mi la, re la' mi la,4 |
  re8 re, sol si do, do' la fa |
  sib sib, sib' la16 sol la8 la, la' sol16 fa |
  
  %bar 14 - 17
  sib4 	sib,4~ sib16 re do sib la8 la' |
  sib, sib' do, do' re,4 mi8 fa |
  sib,8 sib' do,4 fa8 sol la fa |
  r16 sib, sib' la sol4 r16 mi la sol fa8 sib |
  
  %bar 18 - 21
  r16 sol la sib do8 do, r16 sol' fa mi re8 re' |
  sib8 do fa, sol la la, re mi |
  fa8 fa, sib do re sol, la4 |
  re8 re, fa la <re, re'>4.
  
  %\bar ":|."
  
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
      %\MyTempo
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
      %\MyTempo
      \MyKey
      \MyMeter
        <<
          \VoiceIII
          \\
          \VoiceIV
        >>
    }
  >>
}