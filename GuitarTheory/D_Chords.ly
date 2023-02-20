\version "2.22.1"
\header {
  title = "D Chords"
  composer = "David Coleman"
}

\storePredefinedDiagram #default-fret-table \chordmode { <d a d' fis' a'> }
                        #guitar-tuning
                        #"x;5-(;7;7;7;5-);"
%% Relevant ly docs:
%%  https://lilypond.org/doc/v2.21/Documentation/snippets/fretted-strings
%%  https://lilypond.org/doc/v2.22/Documentation/notation/common-notation-for-fretted-strings
%%  https://lilypond.org/doc/v2.22/Documentation/notation/instrument-specific-markup
%%  https://lilypond.org/doc/v2.22/Documentation/notation/displaying-chords
%%  https://lilypond.org/doc/v2.22/Documentation/notation/layout-properties - shows all properties for fret-diagram-details
%% https://lilypond.org/doc/v2.22/Documentation/snippets/tweaks-and-overrides?msclkid=5fbda3f1b82211ecbed3357f1c53e931#tweaks-and-overrides-customizing-fretboard-fret-diagrams

%% (fret-label-vertical-offset . -0.3) moves the fret number up & down, -0.3 puts it center of the fret
notes = {   
            %% D major, 1st position
            <d a d' fis'>1 
            %% D, barred on fifth fret, A shape 5th string root barre chord
            <d a d' fis' a'>
            %% D, 3 note chord at the fifth fret
            <d' fis' a'>
            %% D, barred on 10th fret, E shape 6th string root barre chord
            <d a d' fis' a' d''>
            %% D/A, 3 string chord, 1st position
            <a d' fis'>
            %% D/A, 5 string chord
            <a, d a d' fis'>            
        }

    <<
    \new ChordNames {
        \chordmode {
            d1 d d d d/a d/a
        }
    }

    \new FretBoards {
        \override FretBoard.fret-diagram-details.number-type = #'arabic
        \override FretBoard.fret-diagram-details.barre-type = #'straight
        \override FretBoard.fret-diagram-details.fret-label-vertical-offset = #'-0.3
        \override FretBoard.fret-diagram-details.fret-label-horizontal-offset = #'0.2
        \override FretBoard.fret-diagram-details.label-dir = #'-1

        \chordmode {
            \notes
        }
    }
    \new Staff {
        \clef "treble_8"
        \new Voice {
            \notes
        }
    }
    >>

 