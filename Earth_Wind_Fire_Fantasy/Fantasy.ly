\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Fantasy"
    composer = "Earth, Wind & Fire"
}

guitar_melody = \relative c''  {
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    % Intro
    \mark \markup { \box Intro }   
    s1 | s1 | s1 | s2 s4 s8 s16 g16 | \break

    \repeat volta 2 {
         % Vamp
        \mark \markup { \box Vamp }   
        s1 | s1 | s1 | s1 \bar "||" \break

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

guitar_bass = \relative c' {
    % Intro
    e1 | e1 | e1 | e1 |

    % Vamp
    s1 | s1 | s1 | s1 |

    % Verse 1
    s1 | s1 | s1 | s1 |

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

    >>
}