\version "2.22.1"
\header {
  title = "D Chords"
  composer = "David Coleman"
}

%% Relevant ly docs:
%%  https://lilypond.org/doc/v2.21/Documentation/snippets/fretted-strings
%%  https://lilypond.org/doc/v2.22/Documentation/notation/common-notation-for-fretted-strings
%%  https://lilypond.org/doc/v2.22/Documentation/notation/instrument-specific-markup
%%  https://lilypond.org/doc/v2.22/Documentation/notation/displaying-chords
%%  https://lilypond.org/doc/v2.22/Documentation/notation/layout-properties - shows all properties for fret-diagram-details

%% (fret-label-vertical-offset . -0.3) moves the fret number up & down, -0.3 puts it center of the fret

<<
  \new ChordNames {
    \chordmode {
      d1 d d d d \break d/a d/a d:4  d/a  d/a \break  d:5 d:5/a d:5
    }
  }
  \new Staff {
    \clef "treble_8"
    \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight)
                     (fret-label-vertical-offset . -0.3)))
    %% D major, 1st position
    <d a d' fis'>1^\markup {
        \fret-diagram-terse "x;x;o;2;3;2;"
    }

    %% D, barred on fifth fret, A shape 5th string root barre chord
    <d a d' fis' a'>1^\markup {
        \fret-diagram "c:1-5-5;6-x;5-5;4-7;3-7;2-7;1-5;"
        }
    }    
    %<d a d' fis' a'>1^\markup {
    %    \override #'(fret-diagram-details . (
    %                 (number-type . arabic)
    %                 (barre-type . straight)
    %                 (fret-label-vertical-offset . -0.3))) {
    %    \fret-diagram "c:1-5-5;6-x;5-5;4-7;3-7;2-7;1-5;"
    %    }
    %}

    %% D, 3 note chord at the fifth fret
    <d' fis' a'>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight)
                     (fret-label-vertical-offset . -0.3))) {
        \fret-diagram "6-x;5-x;4-x;3-7;2-7;1-5;"
        }
    }
    %% D, barred on 10th fret, E shape 6th string root barre chord
    <d a d' fis' a' d''>1^\markup {
        \override #'(fret-diagram-details . (
                    (number-type . arabic)
                    (barre-type . straight)
                    (fret-label-vertical-offset . -0.3))) {
        \fret-diagram-verbose #'((place-fret 6 10)
                                (place-fret 5 12)
                                (place-fret 4 12)
                                (place-fret 3 11)
                                (place-fret 2 10)
                                (place-fret 1 10)
                                (barre 6 1 10))
        }
    }

    %% D, 3 note chord at the 10th fret
    <d fis a>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight)
                     (fret-label-vertical-offset . -0.3))) {
        \fret-diagram "6-10;5-9;4-7;3-x;2-x;1-x;"
        }
    }

    %% D/A, 3 string chord
    <a d' fis'>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight))) {
        \fret-diagram "6-x;5-x;4-x;3-2;2-3;1-2;"
        }
    }

    %% D/A, 5 string chord
    <a, d a d' fis'>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight))) {
        \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;"
        }
    }

    %% Dadd4, 5 string chord
    <d fis g d' a'>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight)
                     (fret-label-vertical-offset . -0.3))) {
        \fret-diagram "6-x;5-5;4-4;3-o;2-3;1-5;"
        }
    }

    %% D/A, barred on 5th fret
    <a, d a d' fis' a'>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight)
                     (fret-label-vertical-offset . -0.3))) {
        \fret-diagram-terse "5-(;5;7;7;7;5-);"
        }
    }

    %% D/A, 4 note chord at the 5th fret
    <a d' fis' a'>1^\markup {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (barre-type . straight)
                     (fret-label-vertical-offset . -0.3))) {
        \fret-diagram "6-x;5-x;4-7;3-7;2-7;1-5;"
        }
    }

    %% D5 power chord, 5th string
    <d a>1^\markup {
        \override #'(fret-diagram-details . (
                    (number-type . arabic)
                    (fret-label-vertical-offset . -0.3))) {
        \fret-diagram "6-x;5-5;4-7;3-x;2-x;1-x"
        }
    }

    %% D5 power chord, 6th string
    <a, d>1^\markup {
        \override #'(fret-diagram-details . (
                    (number-type . arabic)
                    (fret-label-vertical-offset . -0.3))) {
        \fret-diagram "6-10;5-o;4-x;3-x;2-x;1-x"
        }
    }

    %% D5 power chord, 6th string
    <d a>1^\markup {
        \override #'(fret-diagram-details . (
                    (number-type . arabic)
                    (fret-label-vertical-offset . -0.3))) {
        \fret-diagram "6-10;5-12;4-x;3-x;2-x;1-x"
        }
    }
  }
>>