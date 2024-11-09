\version "2.18.0"

\book {
    \score {
        \new staff {
            <<
            \chords { g1 ees d:/fis d g1 ees d:/fis d}
            \new Voice \with {
                \consists "Pitch_squash_engraver"
                } 
            \relative c'' { 
                \override NoteHead.style = #'slash
                g4 g4 g4 g4 | g4 g4 g4 g4 | g4 g4 g4 g4 | g4 g4 g4 g4 
                }
            >>
        }
    }
}
