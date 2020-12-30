\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Handy Man"
    composer = "James Taylor"
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
    \partial 4 a16 b16 d8 
    \repeat volta 4 {
    d1 | a1 | d1 | b1 |
    }
    \break

    % Verse 1/2
    \mark \markup { \box Verse }   
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break 
    s1 | s1 | s1 | s1 |
}

guitar_bass = \relative c {
    \set stringNumberOrientations = #'(down)
    \partial 4 s4
    % Intro
    s1 | s1 | s1 | s1 |

    % Verse
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |

}

guitar_tab = \relative c {
    \partial 4 s4
    % Intro
    s1 | s1 | s1 | s1 |

    % Verse
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

guitar_chords = {
    \chordmode { 
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \partial 4 s4
        % Intro
        d1  | a2 b2:m | d1 | a2 b2:m |
        % Verse
        d1 | d2 d4 a4/cis | b1:m | b2:m b4:m a4 | 
        g1 | a2 g4/b a4/cis | d1 | g2/d a2 |
        d1 | a2 b2:m | e2:m fis2:m | g1/b | 
        g1 |  a2 g4/b a4/cis | d1 | g2/d a2 |

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