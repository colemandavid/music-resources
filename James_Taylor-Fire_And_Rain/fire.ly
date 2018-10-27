\version "2.18.2"
\header {
    title = "Fire and Rain"
    composer = "James Taylor"
}


  


guitar_chords = {
    \chordmode { \set noChordSymbol = "" 
    % Intro
    a1 | e1:m7 | d1 | a1 | s1 | e1 | g1:maj7 | s1
    }
    }
    
\score {
    <<
    \new Staff \new Voice = "melody" {
        \time 4/4
        \key c \major \relative c'
       { 
       % Intro
       s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1
}
    }
    \new Lyrics \lyricsto "melody" {I}
    \context ChordNames { \guitar_chords }
    \new Staff {
        \time 4/4
        \key c \major \relative c'
            <<
            {
            %Intro
             d8^\markup{ \fret-diagram #"6-x;5-o;4-x;3-6;2-5;1-5;"}( e8 c'4 g4 e4) | 
             e8^\markup{ \fret-diagram #"6-o;5-x;4-x;3-8;2-7;1-7;"}( d8 bes'4 f4 d4)
              }
            {
            %Intro 
            a1 | a1 | d2. a4 | a1 | a2. a4 | e2. e4 | g2. g4 | g2. g4
            }
            >>
    }
    >>
}

\layout {
    indent = #0
}
   
