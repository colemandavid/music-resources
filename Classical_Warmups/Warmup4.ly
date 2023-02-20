\version "2.22.1"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Warmup 4 (Exercise 15)"
    composer = "Frederick Noad"
}

% lilypond documentation on the paper block: 
% https://lilypond.org/doc/v2.24/Documentation/notation/the-paper-block
% https://lilypond.org/doc/v2.24/Documentation/notation/paper-size-and-automatic-scaling

% lilypond documentation on horizontal spacing:
% https://lilypond.org/doc/v2.23/Documentation/notation/changing-horizontal-spacing-globally
% https://lilypond.org/doc/v2.23/Documentation/snippets/spacing

\paper {
%        #(set-paper-size "a6" )
%        #(set-paper-size '(cons (* 100 mm) (* 25 mm)))
    paper-height = 2\in
}

\layout {
    indent = #0
}

melody = {
    \clef "treble_8"
    \time 6/4
    \override Score.SpacingSpanner.spacing-increment = #4

    \repeat volta 2 {e,4 e' b g b e' | e,4 e' b g b e' }
}

fingering = \lyricmode {
    p a m i m a | p a m i m a
}

\score {
    \new Staff  {
        <<
        \new Voice = "one" {
            \melody
        }
        \new Lyrics \lyricsto "one" {
            \fingering
        }

        >>
    }  
}