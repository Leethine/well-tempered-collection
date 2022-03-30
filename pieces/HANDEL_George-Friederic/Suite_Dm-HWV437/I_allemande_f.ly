%! Title: Suite d-moll, HWV 437
%! Subtitle: I. Allemande
%! Subsubtitle:
%! Type: final
%! Status: review
%! Remark: review fingering

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
  subtitle = "Suite N°.4 Ré mineur"
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
  la4~-3 la16-3 la sib sol la4~ la16 la-2 sib do |
  re4~-5 re16 fa-5 mi re re8 dod s4 |
  
  %bar 4 - 6
  fa16 la, mi' la, re sol, do fa, sib sol la fa sol mi do' mi,-1 |
  fa mi fa sol la8 sol la fa <mi sol do>4 |
  r16 sib'-4 la sol re'4 r16 do si la mi'4 |
  
  %bar 7 - 9
  \stemDown si16\rest la fa' fa \stemUp sol, mi' mi mi re fa, fa fa mi do' do do |
  r16 do-5 si-4 la-3 sold8-2 la-3 si-1 do16 re si8.-1 la16-4 |
  la4-4 r16 la8 sold16 la4 s4
  
  \bar ":..:" \break
  
  %bar 10 - 13
  s1 | mi'4~-4 mi16 mi fa re mi4. mi8-4 |
  fa4~-5 fa16 la sol fa fa8 mi r16 do fa-5 mi |
  re4~ re16 re mi sib do4~-5 do16 do-2 fa mi |
  
  %bar 14 - 17
  re16 do-1 sib-3 la sol sib-5 re, fa-5 <mi^1 do^2 sol^4>4 fa16\rest do fa mi |
  re16-1 la' sol fa mi sib' la sol fa4 sol8 la |
  la8 sol16 fa mi8.\prallprall fa16 fa4 r16 \stemDown do' fa mi \stemUp |
  <re sib fa>4 r16 \stemDown fa mi re \stemUp <dod^4 la^3 mi^1>4 r16 \stemDown fa mi re |
  
  %bar 18 - 21
  sib'4 re,16\rest mi re do la'4 r16 fa fa fa |
  \stemDown sol,16 mi' mi mi \stemUp re fa, fa fa mi do' do do sib re, re re |
  do la' la la sol sib, sib sib la fa' mi re dod8.\prallprall re16-4 |
  re4 fa16\rest re8 dod16 re4. 
  
  \bar ":|."
  
}

VoiceII = \relative sol' {
  %bar 1 - 3
  s1 |
  r16 sol fa-1 mi-2 fa4-1 r16 sol fa mi fa4 |
  r16 la-2 sol-1 fa-2 sol4-1 s4 fa'16\rest dod re mi |
  
  %bar 4 - 6
  s1 |
  s1 |
  re,4 <fa la> mi si'! |
  
  %bar 7 - 9
  s1 |
  fa4-1 mi-1 s2 |
  \stemUp <dod mi>4 \stemNeutral r8 si!8_\markup {\tiny L1	} \stemUp <dod mi>4 s8 r8 \stemNeutral
  
  %\bar ":|."
  
  %bar 10 - 13
  s2 s4. mi'8 |
  s16 re dod si dod4 s16 re dod si 
  << { \voiceOne dod4 } 
     \new Voice { \voiceTwo r16 sol fa mi }
  >> |
  la16\rest \stemDown la si do!-3 si4_1 do s4 |
  la16\rest la sib fa sol4_( sol16) sol la mi-2 fa4_1 |
  
  %bar 14 - 21
  s1 s1 s1 s1
  s1 s1 s1 |
  
  %\bar ":|."
  
}

VoiceIII = \relative re' {
  %bar 1 - 3
  s1 |
  \stemDown re8 la re, sol re' la r do |
  sib la sib sol la mi' \change Staff = "up" la \change Staff = "down" dod, |
  
  %bar 4 - 6
  re8-1 do-2 sib-3 la-3 sol-4 fa-5 do' sib |
  re sib do-1 do,-5 fa4-2 r16 mi re do |
  sol'4-2 r16 fa mi re la'4 r16 sold fad mi |
  
  %bar 7 - 9
  do'8-2 re si do fa, sol-2 la-1 la,-5 |
  r8 re'~ re16 do-1 si-2 la-1 sold-2 mi-4 la-1 re,-5 r8 sold |
  la8 la, dod mi-2 \stemUp <la, mi' la>4 s8 r8 
  
  %\bar ":|."
  
  %bar 10 - 13
  s2 s4. r8 s1 s1 s1
  %bar 14 - 17
  s1 |
  s4 s4 r16 do'-1 sib-2 la-2 sol8 fa-1 |
  s4 sol8-2 sib la8-3 sib-2 do-1 la |
  s1 |
  
  %bar 18 - 21
  s1 s1 |
  s4 s4 s4 mi8-2 sol |
  <la fa>4 r8 mi8-1 <la fa>4.
  
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
  re4-5 \stemUp mi s4 \stemDown mi |
  s1
  
  %\bar ":|."
  
  %bar 10 - 13
  s1 |
  \change Staff = "up" la'8 \change Staff = "down" mi la, re \change Staff = "up" la' \change Staff = "down" mi la,4 |
  re8^1 re, sol si do, do' la fa |
  sib^1 sib, sib' la16 sol la8^1 la, la' sol16 fa |
  
  %bar 14 - 17
  sib4 \stemUp	sib,4~ sib16 re do sib^4 la8^5 la' |
  \stemDown sib, sib' do, do' re,4 mi8 fa |
  sib,8^5 sib' do,4 fa8-5 sol-4 la-3 fa |
  r16 sib, sib' la sol4 re16\rest mi la sol fa8 sib |
  
  %bar 18 - 21
  fa16\rest sol^4 la sib do8 do, fa16\rest sol fa mi re8 re' |
  sib8 do fa, sol la^1 la, re mi |
  fa8^1 fa, sib do re sol, la4 |
  re8 re, fa la-2 <re, re'>4.
  
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
    \new Staff = "up" { 
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
    \new Staff = "down" { 
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
