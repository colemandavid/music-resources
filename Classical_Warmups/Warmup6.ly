\version "2.22.1"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Warmup 6 (Exercise 33)"
    composer = "Frederick Noad"
}

% lilypond documentation on the paper block: 
% https://lilypond.org/doc/v2.24/Documentation/notation/the-paper-block
% https://lilypond.org/doc/v2.24/Documentation/notation/paper-size-and-automatic-scaling

% lilypond documentation on horizontal spacing:
% https://lilypond.org/doc/v2.23/Documentation/notation/changing-horizontal-spacing-globally
% https://lilypond.org/doc/v2.23/Documentation/snippets/spacing

% Documentation on fingering & chord placements
% https://lilypond.org/doc/v2.24/Documentation/snippets/fretted-strings#fretted-strings-controlling-the-placement-of-chord-fingerings
% https://lilypond.org/doc/v2.22/Documentation/notation/common-notation-for-fretted-strings#right_002dhand-fingerings

#(define RH rightHandFinger)
% RH = \rightHandFinger \etc

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
    % \override Score.SpacingSpanner.spacing-increment = #8
    \set fingeringOrientations = #'(left)
    \set strokeFingerOrientations = #'(up)
    \repeat volta 2 {<a,-0>4 <e'-0> <c'-1> <a-2> e' c' | a,4 e' c' a e' c' | e,4 e' b g e' b | e,4 e' b g e' b}
}

fingering = \lyricmode {
    p m i p m i | p m i p m i | p m i p m i | p m i p m i
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