\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header {
    title = "Handy Man"
    composer = "James Taylor"
    poet = "C"
    arranger = "Mike Stoican"
    meter = "capo 2"
}

\layout {
    indent = 0
}

guitar_melody =  \relative c  {
    \clef "treble_8"
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \set stringNumberOrientations = #'(up)
    % Intro
    \mark \markup { \box Intro }   
    \partial 8 g16 a16  
    \repeat volta 4 {
    r8 a'8 c8 e8~ e2 | <<d,4. g4. b4.>> <<e,2 a2 c2>> g,16 a16 | 
    r8 a'8 c8 e8~ e2 | <<d,4. g4. b4.>> <<e,2 a2 c2>> g,16 a16 |
    }
    \break

    % Verse 
    \mark \markup { \box Verse }   
    r4 g''4 g2 | g8 a8 r8 e2 r8 | r8 c8 c8 a8 c8 e4 c8 | e8 e4 d8 c4 r4 | \break
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break 
    s1 | s1 | s1 | s4 s4 s4 s4 | \break

    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break

    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break
    
}


guitar_bass = \relative c {
    \set stringNumberOrientations = #'(down)
    \partial 8 s8
    % Intro
    c1 | g2 a2 | c1 | g2 a2 |

    % Verse 
    c1~ | c2. b4 | a1~ | a2. g4 | \break
    f1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break 
    s1 | s1 | s1 | s4 s4 s4 s4 | \break

    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break

    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | \break

}

guitar_tab = \relative c {
    \partial 8 s8
    % Intro
    s1 | s1 | s1 | s1 |

    % Verse
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 |
}

guitar_chords = {
    \chordmode { 
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \partial 8 s8
        % Intro
        c1  | g2 a2:m | c1 | g2 a2:m |
        % Verse
        c1 | c2 c4 g4/b | a1:m | a2:m a4:m g4 | 
        f1 | g2 f4/a g4/b | c1 | f2/c g2 |
        c1 | g2 a2:m | d2:m e2:m | a1:m | 
        f1 | g2 f4/a g4/b | c1 | f2/c c4 g4 |

        f1 | f2:sus2 f2 | g2 f4/a g4/b | c1 |
        f1 | f2:sus2 f2 | d2:7 d4:7/e d4:7/fis | g2 d4:7 d4:7/e |

        f2 g2 | c2 c4 g4/b | a1:m | a2:m a4:m g4 |
        f1 | g2 f4/a g4/b | c1 | f2/c g2 |
      }
    }

\score {
    <<
    \context ChordNames { \guitar_chords }
    \new Staff  {
        << \new Voice = "melody" \guitar_melody \\  \guitar_bass >>
    }
%    \new TabStaff {
%        \guitar_tab
%    }
   \new Lyrics \lyricsto "melody" {\skip 8 \skip 1 \skip 1 \skip 1 \skip 1 \skip 8 help me please}
    >>
 
    
}