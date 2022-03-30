%! Title: Suite B-Dur, HWV 434
%! Subtitle: VI. Menuet
%! Subsubtitle:
%! Type: raw
%! Status: review
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
  title = "Suite B-Dur"
  composer = "G.F. Handel"
  opus = "HWV 434"
  tagline = "© 2022 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 3/4
%MyTempo = \tempo "Allegro ma non troppo" 2. = 76
MyKey = \key sib \major
PieceName = "Minuet"

VoiceI = \relative re'' {
  % bar 1 - 8
  re4 sib'4.\mordent do8 |
  \grace do8( la2\prallprall) la4 |
  la,4 la'4.\mordent sib8 |
  sol2\prallprall sol4 |
  sol,4 sol'4.\mordent la8 |
  fad4 mi8 fad re fad |
  fad( sol) sol( la) la( sib) |
  \grace do8 la4 sol8 fad mi re |
  
  % bar 9 - 16
  re4 sib'8 la sib do |
  la2\prallprall la4 |
  la,4 la'4.\prallprall sib8 |
  sol2\prallprall sol4 |
  sol,4 sol'8 fad sol la |
  fad4.\prallprall re8 sol4~\prallprall |
  sol8 la sib4 la8.\prallprall sol16 |
  <sol re sib>2. |
  
  \bar ":|.|:"
  
  % bar 17 - 24
  re4 re mib\prallprall |
  fa4 lab8 sol fa mib |
  re do si4.\prallprall la16 si |
  do2\mordent do4 |
  do8 re si2\prallprall |
  do2\mordent do4 |
  do8 re si2\prallprall |
  do2\mordent do4 |
  
  % bar 25 - 30
  do8 re mib4 re |
  mib re8 do fa la, |
  sib do la4.\prallprall sib8 |
  sib2\mordent sib4 |
  sib8 do la4.\prallprall sib8 |
  sib2\mordent sib4 |
  
  % bar 31 - 38
  <<
  {
    \voiceOne
    la4 re8 do sib la |
    la4 re8 do sib la |
    la4 re8 do sib la |
    la2\prallprall la4 |
    la8 si! si4.\prallprall la16 si |
    \stemDown do4.\prallprall sib!16 do re4 |
    \stemUp sib8 la sib4\prallprall la8 sol |
  }
  \\
  \new Voice {
    \voiceTwo
    sol2. | fad2. | sol2. | fad2. |
    fa!4 s2 | s2. | sol2 fad4 |
  }
  >>
  
  <sol re sib>2. 
  
  \bar ":|."
}


BassoI = \relative sib {
  % bar 1 - 8
  r4 sib4 mib | r la, mib' | r la, re | r sol, re' |
  r sol, do | r la do | \stemNeutral sib la sol | re re' do |
  
  % bar 9 - 16
  s4 r4 \stemUp mib4 | r4 la, mib' | r la, re | r sol, re' |
  r sol, do | r do sib | \stemNeutral sol re' re, | sol re sol, |
  
  \bar ":|.|:"
  
  % bar 17 - 24
  si'2 do4 | do si do | s2. | s2. | s2. | s2. | s2. |
  
  % bar 25 - 31
  s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |
  
  % bar 32 - 38
  s2. | s2. | s2. | r4 fa,2 | r4 sol2 | s2. | s2. |
  
  \bar ":|."
}

BassoII = \relative sol {
  % bar 1 - 8
  sol2. | fa | fa | mib | mib | re | s2. | s2. |
  
  % bar 9 - 16
  sib'4 sol2 | fa2. | fa | mib | mib | re | s2. | s2. |
  
  \bar ":|.|:"
  
  % bar 17 - 24
  \stemNeutral
  sol4 fa mib | re2 \once \stemDown do4 | fa sol sol, | do re mib |
  fa re sol | do, re mib | fa re sol | do, do' sib |
  
  % bar 25 - 31
  la fa sib | sol la sib | re,8 mib8 fa4 fa, |
  sib do re | mib fa fa, | sib la sol | do do, do' |
  
  % bar 32 - 38
  re re, re' | mib mib, mib' | re la re, | re'2 re4 |
  mib2 sib4 | do re re, | sol' re sol, |
  
  \bar ":|."
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
        \VoiceI
    }
    \new Staff { 
      \clef "bass"
      %\MyTempo
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