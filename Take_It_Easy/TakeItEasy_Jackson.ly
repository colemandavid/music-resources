\version "2.22.1"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Take It Easy"
    composer = "Jackson Browne"
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
            g1 | g | c/g | c/g | c/g | c/g | g | g | 

            % Verse 1
            g1 | g | g2 d2 | c1 | g | d | c | g |
            e:m | e:m | c | g | a:m | c | e:m | e:m |

            % Chorus 1
            c | g | c | g |a:m | c | g | g | 

            % Verse 2
            g1 | g | g2 d2 | c1 | g | d | c | g |
            e:m | e:m | c | g | a:m | c | e:m | e:m |

            % Chorus 2
            c1 | g | c | g | a:m | c | g | g | 

            % Solo
            g1  | g   | g2 d2 | c1 | g   | d | c   | g   |
            e:m | e:m | c     | g  | a:m | c | e:m | e:m |
            c   | g   | c     | g  | a:m | c | g   | g   | 

            % Verse 3
            g1  | g   | g2 d2 | c1 | g   | d | c   | g   |
            e:m | e:m | c     | g  | a:m | c | e:m | e:m |

            % Chorus 3
            c | g | c | g |a:m | c | g | g | 

            % Outro
            g | 
        }
        
    }
    \new Staff {
        \clef "treble_8" 
        \key g \major

        \once \override Score.RehearsalMark.self-alignment-X = #LEFT
        \set stringNumberOrientations = #'(up)
        
        % Intro
        \mark \markup { \box Intro }   
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \bar "||" \break
        
        % Verse 1
        \mark \markup { \box Verse1 }   
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \break
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \bar "||" \break

        % Chorus 1
        \mark \markup { \box Chorus1}
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \bar "||" \break

        % Verse 2
        \mark \markup { \box Verse2 }   
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \break
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \bar "||" \break

        % Chorus 2
        \mark \markup { \box Chorus2}
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \bar "||" \break

        % Solo
        \mark \markup { \box Solo }   
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \break
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \break
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \bar "||" \break

        % Verse 3
        \mark \markup { \box Verse3 }   
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \break
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \bar "||" \break
        
        % Chorus 3
        \mark \markup { \box Chorus3}
        s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | \bar "||" \break

        % Outro
        \mark \markup { \box Outro }   
        s1 | \bar "||" 
    }
    >>
    
}