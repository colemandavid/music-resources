\version "2.22.1"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "O Come O Come Emmanuel"
    composer = "Kim Walker-Smith"
}

\layout {
    indent = 0
}


\score {
    <<
    \new ChordNames{  
        \chordmode   {
        \set noChordSymbol = "" 
            % Intro
            c1 | e:m/g | a:m | f1 |

            % Verse 1
            c1 | e:m/g | a:m | a:m |
            c1 | e:m/g | f | f |
            d:m7 | a:m7 | e:m7/g | e:m7/g |
            d:m7 | f | a:m7 | e:m7/g |

            % Chorus
            c1 | c:maj7/g | a:m7 | f/a |
            c | e:m7/g | f:maj7 | f | 

            % Instrumental
            c1 | c:maj7/g | a:7 | f |
        }
        
    }
    \new Staff {
        \key c \clef "treble_8" 
        \once \override Score.RehearsalMark.self-alignment-X = #LEFT
        \set stringNumberOrientations = #'(up)
        
            % Intro
            \mark \markup { \bold \box Intro }   
            s1 | s1 | s1 | s1 | \bar "||" \break
            
            % Verse
            \mark \markup { \bold \box Verse }   
            s1 | s1 | s1 | s1 | \break
            s1 | s1 | s1 | s1 | \break
            s1 | s1 | s1 | s1 | \break
            s1 | s1 | s1 | s1 | \bar "||" \break

            % Chorus
            \mark \markup { \bold \box Chorus }
            s1 | s1 | s1 | s1 | \break
            s1 | s1 | s1 | s1 | \bar "||" \break

            % Instrumental
            \mark \markup {\bold \box Instr }
            s1 | s1 | s1 | s1 | \break
                  
    }
    >>
    
}