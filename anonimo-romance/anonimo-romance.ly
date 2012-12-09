\version "2.16.1"
\language "english"

#(set-global-staff-size 24)

\header { 
	title = "Romance Anonimo"
	subtitle = "Para Guitarra"
	composer = "Miguel Llobet"
	tagline = ""
}

top = {
	\voiceOne
	<b'-4>4  b' b' |
	b' <a'-2> <g'-1> |
	<a'-2> <fs'-1> e' |
	e' <g'-2> <b'-4>\glissando |
	<e''-4> e'' e'' |
	e'' <d''-2> <c''-4> |
}

bass = {
	\voiceTwo
	\shiftOn
	e,2.\mp |
	e, |
	e, |
	e, |
}

middle = {
	\voiceFour
	\scaleDurations 2/3 {
		b'8 b g b'\< b g b' b g | 
		b' b g\! a' b g g' b g | 
	}
}

\score {
	\new Staff <<
		\clef "treble_8"
		\key g \major
		\time 3/4
		\tempo "Andante"
		\mergeDifferentlyHeadedOn
		\new Voice = "first" \top
		\new Voice = "second" \bass
		\new Voice = "third" \middle
	>>
	\layout {
    \context {
      \Score
    }
  }
}
