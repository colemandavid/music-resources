\version "2.22.1"
\header {
  title = "C"
  composer = "David Coleman"
}

%% Relevant ly docs:
%%  https://lilypond.org/doc/v2.21/Documentation/snippets/fretted-strings
%%  https://lilypond.org/doc/v2.22/Documentation/notation/common-notation-for-fretted-strings
%%  https://lilypond.org/doc/v2.22/Documentation/notation/instrument-specific-markup
%%  https://lilypond.org/doc/v2.22/Documentation/notation/displaying-chords

<<
  \new ChordNames {
    \chordmode {
      c1 c/g c c/g c c c/e c/g c:5 c:5
    }
  }
  \new Staff {
    \clef "treble_8"
    %% C major, 1st position
    <c e g c' e'>1^\markup {
        \fret-diagram-terse "x;3;2;o;1;o;"
    }

    %% C/G, 3 string chord
    <g c' e'>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight))) {
        \fret-diagram "6-x;5-x;4-x;3-o;2-1;1-o;"
        }
    }

    %% C, barred on third fret, A shape 5th string root barre chord
    <c g c' e' g'>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight))) {
        \fret-diagram "c:1-5-3;6-x;5-3;4-5;3-5;2-5;1-3;"
        }
    }
    %% C/G, barred on 3rd fret
    <g, c g c' e' g'>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight))) {
        \fret-diagram-terse "3-(;3;5;5;5;3-);"
        }
    }

    %% C, barred on 8th fret, E shape 6th string root barre chord
    <c g c' e' g' c''>1^\markup {
        \override #'(fret-diagram-details . (
                    (number-type . arabic)
                    (barre-type . straight))) {
        \fret-diagram-verbose #'((place-fret 6 8)
                                (place-fret 5 10)
                                (place-fret 4 10)
                                (place-fret 3 9)
                                (place-fret 2 8)
                                (place-fret 1 8)
                                (barre 6 1 8))
        }
    }

    %% C, 8th fret, partial E shape
    <c' e' g' c''>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic))) {
        \fret-diagram-verbose #'((mute 6)
                                (mute 5)
                                (place-fret 4 10)
                                (place-fret 3 9)
                                (place-fret 2 8)
                                (place-fret 1 8)) 
        }

    }

    %% C/E, 8th fret, partial E shape, 3 string chord
    <e' g' c''>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic))) {
        \fret-diagram-verbose #'((mute 6)
                                (mute 5)
                                (mute 4)
                                (place-fret 3 9)
                                (place-fret 2 8)
                                (place-fret 1 8)) 
        }
    }

    %% C/G, 8th fret, partial E shape, 2 string chord
    <g' c''>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic))) {
        \fret-diagram-verbose #'((mute 6)
                                (mute 5)
                                (mute 4)
                                (mute 3)
                                (place-fret 2 8)
                                (place-fret 1 8)) 
        }
    }

    %% C5 power chord, 6th string
    <c g>1^\markup {
        \override #'(fret-diagram-details . (
                    (number-type . arabic))) {
        \fret-diagram "6-8;5-10;4-x;3-x;2-x;1-x"
        }
    }

    %% C5 power chord, 5th string
    <c g>1^\markup {
        \override #'(fret-diagram-details . (
                    (number-type . arabic))) {
        \fret-diagram "6-x;5-3;4-5;3-x;2-x;1-x"
        }
    }

  }
>>