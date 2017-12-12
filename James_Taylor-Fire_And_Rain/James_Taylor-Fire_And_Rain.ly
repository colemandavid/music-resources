\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Fire and Rain"
    composer = "James Taylor"
}

melody = \relative c'  {
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1
}

guitar_melody = \relative c''  {
    b8( cis8 a'4 e4 cis) |
    cis8( b8 g'4 d b) |
    r8 <<a8 d8 e8\noBeam(>> fis8\noBeam) <<a,4 d4 e4>> <<a,4 d4 fis4>> <<a,4 cis4 e4>>
}

guitar_bass = \relative c' {
    a1 | a1 | d1 | a1
}

guitar_chords = {
    \chordmode { \set noChordSymbol = "" 
    % Intro
    e4:m7 a4 s4 s4 | a4 e4:m7 s4 s4 | d1 | a1
    }
    }

\score {
    <<
    \new Staff {
        \melody
    }
    \context ChordNames { \guitar_chords }
    \new Staff  {
        \key a \major
        << \guitar_melody \\  \guitar_bass >>
    }
    >>
}