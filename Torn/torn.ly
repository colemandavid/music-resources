\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Torn"
    composer = "Natalie Imbruglia"
}

\layout {
    indent = 0
}

song_melody = {
    % Intro
    \mark \markup { \box Intro }   
    s1 | s1 | s1 | s1 \break

    % Verse 1
    \mark \markup { \box Verse 1 }   
    % C
    s1 | s1 | \break 
    % Em
    s1 | s1 | \break
    % F
    s1 | s1 | \break
    % C
    s1 | s1 | \break 
    % Em
    s1 | s1 | \break
    % F
    s1 | s1 | \break
}
song_chords = {
    \chordmode { 
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        % Intro
        c1 | f1 | c1 | d1:m 

        % Verse 1
        c1 | c1 | e1:m | e1:m | f1 | f1 |
        c1 | c1 | e1:m | e1:m | f1 | f1 |
      }
}

song_lyrics = \lyricmode {
    % Intro
    \skip 1 \skip 1 \skip 1 \skip 1

    % Verse 1
    % C
    \skip 2 \skip 4 \skip 16
    I 16 thought 16 I 16 saw 8 a 8 man 4 brought 8 to 8 life 4 |
    % Em
    \skip 2 \skip 4 \skip 16
    He16 was 16 warm16 \skip 8 he 8 came8 around4 like8 he8 was8  |
    % F
    dignified 1 |
    he 8 showed 8 me 8 what 8 it 8 was 8 to 8 cry 8 |

    % C
    \skip 2 \skip 4 \skip 16
    Well 16 you 16 could- 16 |  n't 8 be 8 that 8 man 4 I 8 ado- 8  red 8 |
    % Em
    \skip 2 \skip 4
    You 16 don't 16 seem 16 to 16 | know 16 \skip 16   Don't 8 seem 8 to 8 care 4 what 8 your 8  |
    % F
    heart 8 is 8 for 4 \skip 4 \skip 16 But 16 I 16 don't 16 | know 8 him 8 anymore 4 \skip 2 |

}

\score {
    <<
        \context ChordNames { \song_chords }
        \new Voice = "one" {
            \song_melody
        }
        \new Lyrics {
            \song_lyrics
        }
    >>
    
}

