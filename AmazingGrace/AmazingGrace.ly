\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Amazing Grace"
    composer = "John Newton 1779"
}

melody = \relative c'  {
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1
}

guitar_melody = \relative c'  {
    \partial 4 d4 |
    << b2 d2 g2>> b8 g8 | b2 a4 | g2 e4 | d2 d4 | \break
    g2 b8 g8 | b2 a4 | d2.~ | d2 b4 | \autoBeamOff d4. ( b8) \autoBeamOn d8 b8 | g2 d4 | \break
    \autoBeamOff e4. ( g8 ) \autoBeamOn g8 e8 | d2 d4 | g2 b8 g8 | b2 a4 | g2. | \partial 2 g2 | \bar "|."
}

guitar_bass = \relative c' {
    s4 | g2 s4 | d'2 s4 | b2 s4 | b2 s4 | g2 s4 |
    d'2 s4 | d2.~ | d2 s4 | d2 s4 | b2 s4 | c4. s8 s4 | b2 s4 | g2 s4 | g'2 fis4 | g,2.~ | \partial 2 g2 |
}

guitar_chords = {
    \chordmode { \set noChordSymbol = "" 
    % Intro
    g4 | g2. | g2. | c2. | g2. | g2. | g2. | d2. | d2. | g2. | g2. | c2. | g2. | g2. | d2. | g2. | g2 |
    }
    }

\score {
    <<
    \context ChordNames { \guitar_chords }
    \new Staff  {
        \key g \major
        \time 3/4
        << \guitar_melody \\  \guitar_bass >>
    }
    >>
}