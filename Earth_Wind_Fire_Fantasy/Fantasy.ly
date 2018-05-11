\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Fantasy"
    composer = "Earth, Wind & Fire"
}

guitar_melody = \relative c  {
    \clef "treble_8"
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \set stringNumberOrientations = #'(up)
    % Intro
    \mark \markup { \box Intro }   
    e'4\1 ^\markup {\fret-diagram #"6-o;5-2;4-2;3-o;2-o;1-o;" } b8\2 e8\1
    fis4\1 ^\markup { \fret-diagram #"c:5-1-2;6-x;5-2;4-4;3-4;2-3;1-2;" } e8\1 d8\2 | 
    e4\1 ^\markup {\fret-diagram #"6-x;5-3;4-2;3-o;2-1;1-o;" } c8\2 e8\1
    d4\2 ^\markup {\fret-diagram #"f:2;6-3-3;5-2-2;4-o;3-o;2-3-4;1-x;" } c8\2 b8\2 |
    cis4\2 ^\markup {\fret-diagram #"f:2;6-x;5-o;4-2-2;3-2-3;2-2-4;1-o;" } b8\2 cis8\2
    dis4\2 ^\markup { \fret-diagram #"f:2;c:5-1-2;6-x;5-2-1;4-3-2;3-3-3;2-3-4;1-2-1;" } cis4\2 | 
    a'2\1 ^\markup { \fret-diagram #"f:2;c:3-1-4;6-o;5-x;4-o;3-4-1;2-4-1;1-5-2;" } gis4\1 fis4\2-4 | 
    \autoBeamOff \grace g,16\4 <<gis2\4~ gis'2\1~>> <<gis,4\4~ gis'4\1~>> <<gis,8\4 gis'8\1>> \autoBeamOn r8 | \break

    \repeat volta 2 {
         % Vamp
        \mark \markup { \box Vamp }   
        s1 | s1 | s1 | s2 s4 s16 e16\6 fis16\5 g16\5 \bar "||" \break

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
    \set stringNumberOrientations = #'(down)
    % Intro
    e,2\6 b'2\5 | c2\5 g2\6 | a2\5 b2\5 | e,1\6 | r2 e2\6 |

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
        e2:m  b2:m | c2 g2 | a2 b2 | e2:sus4 e2 | e1:m |

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