\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Fantasy"
    composer = "Earth, Wind & Fire"
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
    e'2 ^\markup {\fret-diagram #"6-o;5-2;4-2;3-o;2-o;1-o;" } b4 e4 |
    %2
    fis2 ^\markup { \fret-diagram #"c:5-1-2;6-x;5-2;4-4;3-4;2-3;1-2;" } e4 d4 | 
    %3
    e2 ^\markup {\fret-diagram #"6-x;5-3;4-2;3-o;2-1;1-o;" } c4 e4 |
    %4
    d2 ^\markup {\fret-diagram #"f:1;6-3-3;5-2-2;4-o;3-o;2-3-4;1-x;" } c4 b4 |
    %5
    cis2 ^\markup {\fret-diagram #"f:1;6-x;5-o;4-2-2;3-2-3;2-2-4;1-o;" } b4 cis4 |
    %6
    dis2 ^\markup { \fret-diagram #"f:1;c:5-1-2;6-x;5-2-1;4-4-2;3-4-3;2-4-4;1-2-1;" } cis2 | 
    %7
    a'1 ^\markup { \fret-diagram #"f:1;c:3-1-4;6-o;5-x;4-o;3-4-1;2-4-1;1-5-2;" }  |
    %8
    gis2 fis2 | 
    \autoBeamOff \grace g,16 <<gis1~ gis'1~>> | <<gis,2~ gis'2~>> <<gis,4 gis'4>> \autoBeamOn r4 | \break

    \repeat volta 2 {
         % Vamp
        \mark \markup { \box Vamp }   
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s2 s8 e8\6 fis\5-7 g8\5-8~ \bar "||" \break

        % Verse 1
        \mark \markup { \box Verse }  
        % Am 
        g2\5-8 ^\markup { \fret-diagram #"f:1;c:6-1-5;6-5-1;5-5-1;4-5-1;3-5-1;2-5-1;1-5-1;" } a4\5-10 g8\5-8 fis8\5-7~ | 
        % Bm
        fis2 ^\markup { \fret-diagram #"f:1;c:6-1-7;6-7-1;5-7-1;4-7-1;3-7-1;2-7-1;1-7-1;" } \autoBeamOff r8 \autoBeamOn e8\6 fis8\5-7 g8\5-8~ | 
        % C
        g2\5-8 ^\markup { \fret-diagram #"f:1;6-8-1;5-x;4-9-4;3-9-3;2-8-1;1-x;" } a4\5-10 g8\5-8 fis8\5-7~ | 
        % D
        fis2 ^\markup { \fret-diagram #"f:1;6-10-4;5-x;4-7-1;3-7-1;2-7-1;1-7-1;" } \autoBeamOff r8 \autoBeamOn e8\6 fis8\5-7 g8\5-8~ | \break
        % C
        g2\5-8 ^\markup { \fret-diagram #"f:1;6-8-1;5-x;4-9-4;3-9-3;2-8-1;1-x;" } a4\5-10 g8\5-8 fis8\5-7~ | 
        % D
        fis2. ^\markup { \fret-diagram #"f:1;6-10-4;5-x;4-7-1;3-7-1;2-7-1;1-7-1;" } r4 | 
        
        % Esus4
        <<a8 e8>> <<a8 e8>> r8 <<a8 e8>> <<a8 e8>> <<a8 e8>> r8 <<a8 e8>> | 
        
        % E
        <<gis8 e8>> <<gis8 e8>> r8 <<gis8 e8>> <<gis8 e8>> \autoBeamOff <<g8\5-8 e8\4-9>> <<a8\5-10 fis8\4-11>>  <<b8\5-12~ g8\4-12~>> | \break

        % Am
        <<b2\5-12 g2\4-12>> <<c4\5-13 a4\4-14>> <<b8\5-12 g8\4-12>> <<a8\5-10~ fis8\4-11~>> | 
        
        % Bm
        <<a2\5-10 fis2\4-11>> r8 <<g8\5-8 e8\4-9>> <<a8\5-10 fis8\4-11>>  <<b8\5-12~ g8\4-12~>> | 
        
        % C
        <<b2\5-12 g2\4-12>> c4\1-8 b8\2-12 <<a8\5-10~ fis8\4-11~>> | 

        % D
        <<a2\5-10 fis2\4-11>> r2 | \break

        % C
        s1 | 
        
        % D
        s1 | 
        
        % B7sus4
        s1 | 
        
        % B7
        s1 | \break

        s1 | s1 | s1 | s1 | s1 | \break
    }


    % Chorus
    \mark \markup { \box Chorus }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1  \bar "||" \break

    % Instrumental
    \mark \markup {\box Instr }
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break

    % Chorus
    \repeat volta 2 {
        \mark \markup { \box Chorus }
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |\break
    }
        

}

guitar_bass = \relative c {
    \set stringNumberOrientations = #'(down)
    % Intro
    e,1 | b'1 | c1 | g1 | a1 | b1 | e,1 | r1 | e1 | e1 |

    % Vamp
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |

    % Verse 1
    a1\6-5 | b1\6-7 | c1\6-8 | d1\6-10 | 

    c1\6-8 | d1\6-10 | s1 | s1 | 

    a1\5-0 | b1\6-7 | c1\6-8 | d1\4-0 | 

    s1 | s1 | s1 | s1 | 

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
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |

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
        e1:m | b1:m | c1 | g1 | a1 | b1 | e1:sus4 | e1 | e1:m | e1:m |

        % Vamp
        e:m | e:m | e:m | e:m | e:m | e:m | e:m | e:m |

        % Verse 1
        a1:m | b1:m | c1 | d1 | c1 | d1 | e1:sus4 | e1 |

        a1:m | b1:m | c1 | d1 | c1 | d1 | b1:7sus4 | b1:7 |

        e4:m fis4:m g4 s8 fis8:m | e4:m fis4:m g4 s8 fis8:m |

        e4:m fis4:m g4 s8 a8 | b1:sus4 | b1 |

        % Chorus
        e1:m7 | a1:m7 | c1/d1 | g1:maj7 | b1:m7 | c1:maj7 | a1:m | fis1:7/ais1 | b1:7

        % Instrumental
        b1:m | fis1:m | g1 | d1 | e1 | fis1 | b1:sus4 | 
        e1:m | e1:m | e1:m | e2:m e4:m a4 | b1:sus4 | b1 | 

        % Chorus
        e1:m7 | a1:m7 | c1/d1 | g1:maj7 | b1:m7 | c1:maj7 | a1:m | fis1:7/ais1 | b1:7

        
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