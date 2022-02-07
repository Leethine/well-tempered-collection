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
  title = "Jesus bleibet meine Freude"
  subtitle = "extrait de cantate «Herz und Mund un Tat und Leben»"
  arranger = "BWV 147"
  tagline = "© 2021 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 3/4
MyTempo = \tempo "Allegro"
MyKey = \key sol \major
PieceName = "Chorale"

ViolinI = \relative sol' {
  \omit TupletBracket
  \omit TupletNumber
  % bar 1 - 4
  \times 2/3 {r8 sol la} \times 2/3 {si( re do)} \times 2/3 {do( mi re)}
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)}
  \times 2/3 {do( re mi)} \times 2/3 {re( do si)} \times 2/3 {la( si sol)}
  \times 2/3 {fad( sol la)} \times 2/3 { re,( fad la)} \times 2/3 {do( si la)}
  
  % bar 5 - 
  \times 2/3 {si( sol la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)}
  \times 2/3 {mi,( re' do)} \times 2/3 {si( la sol)} \times 2/3 {re( sol fad)} 
  \times 2/3 {sol( si re)} \times 2/3 {sol( re si)} \times 2/3 {sol( si re)} 
  
  % bar 9 - 11
  sol4 r4 r4 
  r2.
  r2.
  
  % bar 12 - 15
  \times 2/3 {r8 re, mi} \times 2/3 {fad( la sol)} \times 2/3 {la( do si)}
  \times 2/3 {do( la fad)} \times 2/3 {re( fad la)} \times 2/3 {do( si la)}
  \times 2/3 {si( sol la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  
  % bar 16 - 19
  \times 2/3 {mi,( re' do)} \times 2/3 {si( la sol)} \times 2/3 {re( sol fad)} 
  \times 2/3 {sol( si la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  \times 2/3 {do( re mi)} \times 2/3 {re( do si)} \times 2/3 {la( si sol)} 
  
  % bar 20 - 23
  \times 2/3 {fad( sol la)} \times 2/3 {re,( fad la)} \times 2/3 {do( si la)} 
  \times 2/3 {si( sol la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  \times 2/3 {mi,( re' do)} \times 2/3 {si( la sol)} \times 2/3 {re sol fad} 
  
  % bar 24 - 26
  sol'4 r4 r4 
  r2. 
  r2.
  
  % bar 24 - 27
  \times 2/3 {r8 re, mi} \times 2/3 {fad( la sol)} \times 2/3 {la( do si)} 
  \times 2/3 {do( la fad)} \times 2/3 {re( fad la)} \times 2/3 {do( si la)} 
  \times 2/3 {si( sol la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  
  % bar 2 - 31
  \times 2/3 {mi,( re' do)} \times 2/3 {si( la sol)} \times 2/3 {re( sol fad)} 
  \times 2/3 {sol( si la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  \times 2/3 {do( re mi)} \times 2/3 {re( do si)} \times 2/3 {la( si sol)} 
  
  % bar 32 - 35
  \times 2/3 {fad( sol la)} \times 2/3 {re,( fad la)} \times 2/3 {do( si la)}
  \times 2/3 {si( sol la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  \times 2/3 {mi,( re' do)} \times 2/3 {si( la sol)} \times 2/3 {re sol fad} 
  
  % bar 36 - 39
  \times 2/3 {sol( si re)} \times 2/3 {sol( re si)} \times 2/3 {sol( si dod)} 
  \times 2/3 {re( re, mi)} \times 2/3 {fad( la sold)} \times 2/3 {sold( si la)} 
  \times 2/3 {la( do si)} \times 2/3 {do( la mi)} \times 2/3 {do( re mi)} 
  \times 2/3 {fa( re' do)} \times 2/3 {re( si sold)} \times 2/3 {mi( fad sold)} 
  
  % bar 40 - 43
  \times 2/3 {la( do si)} \times 2/3 {do( mi re)} \times 2/3 {re( fa mi)} 
  \times 2/3 {mi la sold} \times 2/3 {la( mi do)} \times 2/3 {la( si do)} 
  \times 2/3 {fa mi re} \times 2/3 {do si la} \times 2/3 {mi( la sold)} 
  \times 2/3 {la do mi} \times 2/3 {la r r} \times 2/3 { r4.} 
  
  % bar 44 - 47
  \times 2/3 {r8 do, re} \times 2/3 {mi( sol fa)} \times 2/3 {sol( sib la)} 
  \times 2/3 {la( do si)} \times 2/3 {do( la fa)} \times 2/3 {re( mi fa)} 
  \times 2/3 {mi( sol fa)} \times 2/3 {sol( mi do)} \times 2/3 {sol( la sib)} 
  \times 2/3 {la do si} \times 2/3 {do( la fa)} \times 2/3 {re mi fa} 
  
  % bar 4 - 31
  \times 2/3 {mi( do re)} \times 2/3 {mi( sol fad)} \times 2/3 {sol( si la)} 
  \times 2/3 {si( sol la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  \times 2/3 {do( re mi)} \times 2/3 {re( do si)} \times 2/3 {la( si sol)} 
  
  % bar 32 - 35
  \times 2/3 {fad( re mi)} \times 2/3 {fad( la sol)} \times 2/3 {la( do si)} 
  \times 2/3 {do( la fad)} \times 2/3 {re fad la} \times 2/3 {do( si la)} 
  \times 2/3 {si( sol la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  
  % bar 36 - 39
  \times 2/3 {mi,( re' do)} \times 2/3 {si( la sol)} \times 2/3 {re( sol fad)} 
  \times 2/3 {sol( si re)} \times 2/3 {sol( re si)} \times 2/3 {sol( si re)} 
  \times 2/3 {fa( re si)} \times 2/3 {sol( si re)} \times 2/3 {mi( do la)} 
  \times 2/3 {fad( la do)} \times 2/3 {re( si sol)} \times 2/3 {mi( sol si)} 
  
  % bar 40 - 43 
  \times 2/3 {do( la fad)} \times 2/3 {re( fad la)} \times 2/3 {do( si la)} 
  \times 2/3 {si( sol la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  \times 2/3 {do( re mi)} \times 2/3 {re( do si)} \times 2/3 {la( si sol)} 
  
  % bar 44 - 4
  \times 2/3 {fad( sol la)} \times 2/3 {re,( fad la)} \times 2/3 {do( si la)} 
  \times 2/3 {si( sol la)} \times 2/3 {si( re do)} \times 2/3 {do( mi re)} 
  \times 2/3 {re( sol fad)} \times 2/3 {sol( re si)} \times 2/3 {sol( la si)} 
  \times 2/3 {mi,( re' do)} \times 2/3 {si( la sol)} \times 2/3 {re( sol fad)} 
  sol2.\fermata 
  
  \bar "|."
}


ViolinII = \relative sol' { 
  % bar  - 
  r4 sol8. fad16 sol8. la16 
  si8. la16 si8. sol16 mi8. re16 
  mi8. fad16 sol8. re16 mi8. si16 
  la8. re16  la'8. sol16 la8. fad16 
  
  % bar  - 
  re8. fad16 sol8. fad16 sol8. la16 
  si8. la16 si8. sol16 mi8. sol16 
  la8. fad16 sol8. mi16 la,8. do16 
  si8. sol'16 si8. re16 sol8. re16 
  
  % bar  - 
  si4 r r 
  r2.
  r2.
  r4 re,8. mi16 fad8. sol16 
  
  % bar  - 
  la8. do16 la8. fad16 re8. fad16 
  sol8. re16 sol8. fad16 sol8. la16 
  si8. la16 sol8. fad16 mi8. sol16 
  la8. sol16 fad8. sol16 la8. do,16 
  
  % bar  - 
  si8. re16 sol8. fad16 sol8. la16 
  si8. la16 si8. sol16 mi8. re16 
  mi8. fad16 sol8. re16 mi8. si16 
  la8. re16 la'8. sol16 la8. fad16 
  
  % bar  - 
  re8. fad16 sol8. fad16 sol8. la16 
  si8. la16 si8. sol16 mi8. sol16 
  la8. fad16 sol8. mi16 la,8. do16 
  si'4 r r
  
  % bar  - 
  r2.
  r2.
  r4 re,8. mi16 fad8. sol16 
  la8. do16 la8. fad16 re8. fad16 
  
  % bar  - 
  sol8. re16 sol8. fad16 sol8. la16 
  si8. la16 sol8. fad16 mi8. sol16 
  la8. sol16 fad8. sol16 la8. do,16 
  si8. re16 sol8. fad16 sol8. la16 
  
  % bar  - 
  si8. la16 si8. sol16 mi8. re16 
  mi8. fad16 sol8. re16 mi8. si16 
  la8. re16 la'8. sol16 la8. fad16 
  re8. fad16 sol8. fad16 sol8. la16 
  
  % bar  - 
  si8. la16 si8. sol16 mi8. sol16 
  la8. fad16 sol8. mi16 la,8. do16 
  si8. sol'16 si8. re16 sol8. sol,16 
  la8. sol16 la8. re16 re,8. do16 
  
  % bar  - 
  do8. re16 mi8. do16 la8. do16 
  re8. mi16 fa8. re16 si8. re16 
  do8. mi16 la8. sold16 la8. si16 
  do8. si16 do8. la16 fa8. la16 
  
  % bar  - 
  la8. sold16 la8. fad16 si,8. re16 
  do4 r4 r4 
  r4 do'8. re16 mi8. do16 
  fa,8. sol16 la8. re16 si8. re16 
  
  % bar  - 
  do8. sol16 do8. sol16 mi8. re16 
  do8. mi16 fa8. la16 si8. re16 
  do8. sol16 do8. la16 re8. fad,16 
  sol8. re16 sol8. fad16 sol8. la16 
  
  % bar  - 
  si8. la16 si8. sol16 mi8. re16 
  mi8. fad16 sol8. re16 mi8. si16 
  la8. dod16 re8. mi16 fad8. sol16 
  la8. do16 la8. fad16 re8. fad16 
  
  % bar  - 
  sol8. re16 sol8. fad16 sol8. la16 
  si8. la16 sol8. fad16 mi8. sol16 
  la8. sol16 fad8. sol16 la8. do,16 
  si8. sol'16 si8. re16 sol8. re16 
  
  % bar  - 
  si8. sol16 re'8. si16 do4~
  do8. la16 si4~ si8. sol16 
  la4~ la8. fad16 re8. fad16 
  sol8. re16 sol8. fad16 sol8. la16 
  
  % bar  - 
  si8. la16 si8. sol16 mi8. re16 
  mi8. fad16 sol8. re16 mi8. si16 
  la8. re16 la'8. sol16 la8. fad16 
  re8. fad16 sol8. fad16 sol8. la16 
  
  % bar  - 
  si8. la16 si8. sol16 mi8. sol16 
  la8. fad16 sol8. mi16 la,8. do16
  si2.\fermata 
  
  %\bar "|." 
}

BassoContinuo = \relative sol, {
  % bar  - 
  sol4 sol' mi
  si mi mi,
  la si do
  re fad re

  % bar  -   
  sol mi do
  si mi re
  do dod re
  sol, r8 r16 sol'16 re8. si16
  
  % bar  - 
  sol4 fad' mi
  fad( mi) re
  mi( fad) sol
  re r8 r16 re16 re8. re16
  
  % bar  - 
  re,4 r8 r16 re'16 re8. re16
  sol4 fad mi
  si' si, mi
  do re re,
  
  % bar  - 
  sol sol' mi
  si mi mi,
  la si do
  re fad re
  
  % bar  - 
  sol mi do
  si mi re
  do dod re
  sol, fad' mi
  
  % bar  - 
  fad( mi) re
  mi( fad) sol
  re r8 r16 re16 re8. re16
  re,4 r8 r16 re'16 re8. re16
  
  % bar  - 
  sol4 fad mi
  si' si, mi
  do re re,
  sol sol' mi
  
  % bar  - 
  si mi mi,
  la si do
  re fad re
  sol mi do
  
  % bar  - 
  si mi re
  do dod re
  sol, r8 r16 sol'16 fad8. mi16
  re4 do4 si4
  
  % bar  - 
  la4 la'8 sol8 fa8 mi8
  re4 si mi
  la, fa' re
  do fa mi

  % bar  - 
  re red mi
  la, la' si
  do la mi
  fa re sol
  
  % bar  - 
  do, mi do
  fa re sol
  do, r8 r16 do16 si8. re16
  sol,4 sol' mi
  
  % bar  - 
  si mi mi,
  la si do
  re r8 r16 re16 re8. re16
  re,4 r8 r16 re'16 re8. re16
  
  % bar  - 
  sol4 fad mi
  si' si, mi
  do re re,
  sol2.~
  
  % bar  - 
  sol2.~
  sol2.~
  sol2.~
  sol4 sol' mi
  
  % bar  - 
  si mi mi,
  la si do
  re fad re
  sol mi do
  
  % bar  - 
  si mi re
  do dod re
  sol,2.\fermata
  %\bar "|."

}


% The score definition
\score {
  \new PianoStaff 
  <<
    \new Staff {
      \clef "treble" 
      \MyTempo
      \MyKey
      \MyMeter
      \ViolinI
    }
    \new Staff {
      \clef "treble" 
      \MyTempo
      \MyKey
      \MyMeter
      \ViolinII
    }
    \new Staff {
      \clef "bass" 
      \MyTempo
      \MyKey
      \MyMeter
      \BassoContinuo
    }
  >>
}
