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
  title = "N°. 2. Soldatenmarsch"
  subtitle = " "
  tagline = "© 2021 Hautbois Project"
}

%*****************************************
% Start Voice
% Write the voices here
%*****************************************
MyMeter = \time 2/4
%MyTempo = \tempo "Allegro" 4. = 76
MyKey = \key sol \major
PieceName = "Munter und straff"

VoiceI = \relative {
  \set fingeringOrientations = #'(up)
  
  %bar 1 - 4
  <sol'-1 si-2>8. <sol do>16 <sol re'>8 r 
  <sol mi'-5>8 r <sol re'-4> r
  <fad-2 do'-5> r <sol-3 si-5> r
  <fad-2 la-4> r sol-1 r
  
  %bar 5 - 8
  <sol-1 si-2>8. <sol do>16 <sol re'>8 r
  <sol mi'>8 r <sol re'> r
  <mi'-3 sol-5> r <re-2 fad-4> r
  <dod-2 mi-4> r <re-3> r

  %bar 9 - 12
  <sol,-1 si-2>8. <sol do>16 <sol re'>8 r 
  <sol mi'>8 r <sol re'> r
  <fad do'> r <sol si> r 
  <fad la> r sol r 
  
  %bar 13 - 16
  <sol si>8.  <sol do>16 <sol re'>8 r
  <sol mi'>8 r <sol re'> r
  <mi' sol>  r <re fad> r
  <dod-2 mi-4> r <re> r 

  \bar ".|:"
  %second part
  
  %bar 17 - 20
  re,8.  mi16 fad4
  mi re
  <fad mi'>8 r <sol re'> r
  <la do> r <sol si> r
  
  %bar 21 - 24
  <re fad la>8. mi16 fad4
  mi re
  <la' do>8 r <sol si> r
  <fad la> r <sol si> r
  
  %bar 25 - 28
  <sol si>8. <sol do>16 <sol re'>8 r8
  <sol mi'> r <sol re'> r
  <fad do'> r <sol si> r
  <fad la> r sol r

  
  %bar 29 - 32
  do,8. re16 mi4
  re do
  re8 r <la' re fad> r
  <si re sol> r r4
  
  \bar ":|."

}


BassoI = \relative {
  \set fingeringOrientations = #'(up)

  %bar 1 - 4
  sol8.-4 la16 si8 r
  do r si r
  la r sol r 
  <re  do'> r <sol si> r
  
  %bar 5 - 8
  sol8.-5 la16 si8 r
  do r si-3 r
  dod-2 r re r 
  \clef "treble" <la sol'> r <re-3 fad-2> r 

  %bar 9 - 12
  \clef "bass"
  sol,8.-4 la16 si8 r
  do r si r
  la r sol r 
  <re  do'> r <sol si> r
  
  %bar 13 - 16
  sol8.-5 la16 si8 r
  do r si r
  dod-2 r re r 
  \clef "treble" <la sol'> r <re fad> r
  
  %second part
  %bar 17 - 20
  \clef "bass" re,8. mi16 fad4
  mi re
  do'8 r si r
  <fad re'> r <sol re'> r 
  
  %bar 21 - 24
  re8. mi16 fad4
  mi re
  <fad re'>8 r <sol re'> r
  <re re'> r <sol re'> r
  
  %bar 25 - 28
  sol8. la16 si8 r
  do r si r
  la r sol r
  <re do'> r <sol si> r
  
  
  %bar 29 - 32
  do,8. re16 mi4
  re do
  re8 r re' r
  sol, r r4
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
