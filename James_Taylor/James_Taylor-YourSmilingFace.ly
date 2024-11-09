\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Your Smiling Face"
    composer = "James Taylor"
}

\layout {
    indent = 0
}

melody = \relative c'  {
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1
}



guitar_chords = {
    
    \chordmode { \set noChordSymbol = "" 
    % Verse
    \mark \markup { \box Verse 1 }
    e4 b4/d cis4:m7 e4/b \break
    a e/gis fis:m7 a/b e cis:m7 fis:m7 a/b \break
    e b/dis cis:m7 e/b \break
    a e/gis fis:m7 \break
    a/b e cis:m7 fis:m7 b gis:7/c \break

    %Chorus
    \mark \markup { \box Chorus 1 }
    cis:m gis:m a ais:dim b gis:7/c cis:m7 e/b \break
    a   e/gis fis:m7 a b \break
    gis:m cis \break

    % Verse - key change
    \mark \markup { \box Verse 2 }
    fis cis/f dis:m7 fis/cis \break
    b fis/ais gis:m7 b/cis \break
    fis dis:m7 gis:m7 b/cis \break
    fis cis/f dis:m7 fis/cis \break
    b fis/ais gis:m7 b/cis \break
    fis dis:m7 gis:m7 cis bes:7/d \break

    % Chorus
    \mark \markup { \box Chorus 2 }
    dis:m ais:m b c:dim cis bes:7/d dis:m7 fis/cis \break
    b fis / ais gis:m7



    }
    }

\score {
    <<
        \new ChordNames {

            \chordmode { 
                \set noChordSymbol = "" 
                % Verse
                | e4 b4/dis cis4:m7 e4/b  | 
                | a4 e4/gis fis4:m7 a4/b | 
                | e2 cis2:m7 | fis2:m7 a2/b | 
                | e4 b4/dis cis4:m7 e4/b  | 
                | a4 e4/gis fis4:m7 a4/b | 
                | e2 cis2:m7 | fis2:m7 b4 gis4:7/c | 

                %Chorus
                | cis4:m gis4:m a4 ais4:dim |
                | b4 gis4:7/c cis4:m7 e4/b |
                | a2   e2/gis | fis4:m7 gis4:m7 a2 | 
                | b2 gis2:m | cis2  | 

                % Verse - key change
                | fis4 cis4/f dis4:m7 fis4/cis | 
                | b4 fis4/ais gis4:m7 b4/cis | 
                | fis2 dis2:m7 | gis2:m7 b2/cis |
                | fis4 cis4/f dis4:m7 fis4/cis |
                | b4 fis4/ais gis4:m7 b4/cis |
                | fis2 dis2:m7 | gis2:m7 cis4 bes4:7/d |

                % Chorus
                | dis4:m ais4:m b4 c4:dim |
                | cis4 bes4:7/d dis4:m7 fis4/cis | 
                | b2 fis2/ais | gis4:m7 ais4:m7 b2 | 
                | cis2 ais2:m | dis2 |
            }
        }


        \new Staff {
            \clef "treble_8" 
            \once \override Score.RehearsalMark.self-alignment-X = #LEFT
            \set stringNumberOrientations = #'(up)

            % Verse
            \mark \markup { \box Verse1 }
            | r4 r4 r4 r4 | r4 r4 r4 r4 | r2 r2 | \break 
            | r2 r2  | r4 r4 r4 r4 | r4 r4 r4 r4 | \break 
            | r2 r2 | r2 r4 r4 | \bar "||" \break

            %Chorus
            \mark \markup { \box Chorus1 }
            | r4 r4 r4 r4 | r4 r4 r4 r4 | r2 r2  | \break 
            | r4 r4 r2 | r2 r2 |  \time 2/4 | r2 | \bar "||" \break

            % Verse - key change
            \mark \markup { \box Verse2 }
            \time 4/4 
            | r4 r4 r4 r4 | r4 r4 r4 r4 | r2 r2 | \break 
            | r2 r2 | r4 r4 r4 r4 | r4 r4 r4 r4 | \break 
            | r2 r2 | r2 r4 r4 | \bar "||" \break
            
            % Chorus
            \mark \markup { \box Chorus2 }
            | r4 r4 r4 r4 | r4 r4 r4 r4 | r2 r2  | \break 
            | r4 r4 r2 | r2 r2 |  \time 2/4 | r2 | \bar "||" \break           

        }    


    >>
    }
