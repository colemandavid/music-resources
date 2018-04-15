\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Fantasy"
    composer = "Earth, Wind & Fire"
}

melody = \relative c'  {
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1
}

guitar_melody = \relative c''  {
    % Intro
    r1 | r1 | r1 | r2 r4 r8 r16 g16 | \break

    % Vamp
    s1 | s1 | s1 | s1 | \break
    % Verse 1
    g4 r4 r2 | r1 | r1 | r1 | \break

    g4 r4 r2 | r1 | r1 | r1 | \break
}

guitar_bass = \relative c' {
    % Intro
    e1 | e1 | e1 | e1 |

    % Vamp
    s1 | s1 | s1 | s1 |

    % Verse 1
    a2 b2 | c2 d2 | c2  d2 | e,1 |

    a2 b2 | c2 d2 | c2  d2 | e,1 
}

guitar_chords = {
    \chordmode { 
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        % Intro
        e2:m  b2:m | c2 g2 | a2 b2 | e1:m |

        % Vamp
        e:m | e:m | e:m | e:m |

        % Verse 1
        a2:m b2:m | c2 d2 | c2 d2 | e2:sus4 e2 |

        a2:m b2:m | c2 d2 | c2 d2 | b2:7sus4 b2:7|
      }
    }

\score {
    <<
    \new Staff {
        \melody
    }
    \context ChordNames { \guitar_chords }
    \new Staff  {
        \key e \minor
        << \guitar_melody \\  \guitar_bass >>
    }

    >>
}