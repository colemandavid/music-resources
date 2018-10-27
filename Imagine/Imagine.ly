\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Imagine"
    composer = "John Lennon"
}

\layout {
    indent = 0
}

guitar_melody = \relative c  {
    \clef "treble_8"
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \set stringNumberOrientations = #'(up)
    % Intro
    \mark \markup { \box Intro }   
    %1
    <<e4 g4>> <<e4 g4>> <<e4 g4>> <<b4 g4>> |
    %2
    <<a4 f4>> <<a4 f4>> <<a4 f4>> <<a4 f4>> | 
    %3
    s1 |
    %4
    s1 | \bar "||" \break
    % Verse 1
    \mark \markup { \box Verse 1 }   
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

guitar_bass = \relative c {
    \set stringNumberOrientations = #'(down)
    % Intro
    r8 ^\markup {\fret-diagram #"f:1;6-x;5-3-2;4-2-1;3-o;2-o;1-o;" } c4 c4 c4 c8~ | c8 ^\markup { \fret-diagram #"f:1;6-x;5-3-2;4-3-3;3-2-1;2-x;1-x;" } c4 c4 c4 c8 | c1 | c1 |

    % Verse 1
    c1 | c1 | c1 | c1 | c1 | c1 | c1 | c1 | 
}

guitar_tab = \relative c' {
    % Intro
    s1 | s1 | s1 | s1 |

    % Verse 1
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

guitar_chord_symbols = {
    s1 ^\markup {\fret-diagram #"f:1;6-x;5-3-2;4-2-1;3-o;2-o;1-o;" } |
    s1 ^\markup { \fret-diagram #"f:1;6-x;5-3-2;4-3-3;3-2-1;2-x;1-x;" } |
    s1 | s1 |
    % Verse 1
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}
guitar_chords = {
    \chordmode { 
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        % Intro
        c1:maj7  | f1/c | c1:maj7 | f1/c

        % Verse 1
        c1:maj7 | f1/c | c1:maj7 | f1/c | c1:maj7 | f1/c | c1:maj7 | f1/c |

      }
    }

\score {
    <<
    \context ChordNames { \guitar_chords }
    \new Staff  {
        << \guitar_melody \\  \guitar_bass >>
    }
    \new TabStaff {
        \guitar_tab
    }
    >>
    
}