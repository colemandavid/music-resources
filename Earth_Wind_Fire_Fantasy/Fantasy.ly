\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Fantasy"
    composer = "Earth, Wind & Fire"
}

guitar_melody = \relative c  {
    \clef "treble_8"
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    % Intro
    \mark \markup { \box Intro }   
    s1 | s1 | s1 | s1 | \break

    \repeat volta 2 {
         % Vamp
        \mark \markup { \box Vamp }   
        s1 | s1 | s1 | s2 s4 s16 e'16 fis16 g16 \bar "||" \break

        % Verse 1
        \mark \markup { \box Verse }   
        s1 | s1 | s1 | s1 | \break

        s1 | s1 | s1 | s1 | \break

        s1 | s1 | s1 | s1 | s1 | \break
    }


    % Chorus
    \mark \markup { \box Chorus }
    s1 | s1 | s1 | s1 | s1 \bar "||" \break

    % Instrumental
    \mark \markup {\box Instr }
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break

    % Chorus
    \repeat volta 2 {
        \mark \markup { \box Chorus }
        s1 | s1 | s1 | s1 | s1 | \break
    }
        

}

guitar_bass = \relative c {
    % Intro
    s1 | s1 | s1 | s1 |

    % Vamp
    s1 | s1 | s1 | s1 |

    % Verse 1
    a2 b2 | s1 | s1 | s1 |

    s1| s1 | s1 | s1 | 

    s1 | s1 | s1 | s1 | s1 |

    % Chorus
    s1 | s1 | s1 | s1 | s1 |

    % Instrumental
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 |

    % Chorus
    e1 | f1 | g1 | a1 | b1 |
}

guitar_tab = \relative c' {
    % Intro
    s1 | s1 | s1 | s1 |

    % Vamp
    s1 | s1 | s1 | s2 s4 s16 e16\0 fis16\2 g16\2 |

    % Verse 1
    <<g4\2 a,,4\6>> <<g'16\4 c16\3>> <<g16\4 c16\3>> a'16\2 g16\2 fis4\2 b,,8\6 << a'8\4 d8\3 >> << a8\4 d8\3 >> e16\0 fis16\2 g16\2 | s1 | s1 | s1 |
    a,8\5 << c''8\2 a8\3 >> << b8\2 g8\3 >> << a8\2 fis8\3 >> b2\6 | s1 | s1 | s1 | 

    s1 | s1 | s1 | s1 |

    % Chorus
    s1 | s1 | s1 | s1 | s1 |

    % Instrumental
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 |

    % Chorus
    s1 | s1 | s1 | s1 | s1 |
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

        a2:m b2:m | c2 d2 | c2 d2 | b2:7sus4 b2:7 |

        e4:m fis4:m g4 g8 fis8:m | e4:m fis4:m g4 g8 fis8:m |

        e4:m fis4:m g4 g8 a8 | b1:sus4 | b1 |

        % Chorus
        e2:m7 a2:m7 | c2/d2 g2:maj7 | b2:m7 c2:maj7 | a2:m fis2:7/ais2 | b1:7

        % Instrumental
        g2:m  d2:m | ees2 bes2 | c2 d2 | g1:m | 
        e1:m | e2:m e4:m a4 | b1:sus4 | b1 | 

        % Chorus
        e2:m7 a2:m7 | c2/d2 g2:maj7 | b2:m7 c2:maj7 | a2:m fis2:7/ais2 | b1:7

        
      }
    }

\score {
    <<
    \context ChordNames { \guitar_chords }
    \new Staff  {
        \key e \minor
        << \guitar_melody \\  \guitar_bass >>
    }
    \new TabStaff {
        \guitar_tab
    }

    >>
}