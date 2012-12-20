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
	<g'-2> <fs'-1> e' |
	e' <g'-1> <b'-4>\glissando |
	<e''-4> e'' e'' |
	e'' <d''-2> <c''-4> |
	\textSpannerUp
	\override TextSpanner #'(bound-details left text) = #"V"
	<c''-4> \startTextSpan <b'-3> a' |
	a' <b'-3> <c''-4> \stopTextSpan |
	\override TextSpanner #'(bound-details left text) = #"VII"
	b' \startTextSpan <c''-3> b' | 
	<ds''-4> <c''-3> b' \stopTextSpan |
	<b'-4> <a'-2> <g'-2> |
	<g'-2> <fs'-1> e' |
	<fs'-4> fs' fs' |
	<fs'-4> <g'-4> <fs'-4> |
	e' e' e' |
	s2. |
}

%\override StringNumber #'add-stem-support = ##t

bass = {
	\voiceTwo
	\shiftOn
	\set fingeringOrientations = #'(down)
	e,2.\mp |
	e, |
	e, |
	e, |
	e, |
	e, |
	a, |
	a, |
	b, |
	b, |
	e, |
	e, |
	b, |
	b, |
	\shiftOnn
	<e-2>4 <b,-1> <g,-3> |
	\set fingeringOrientations = #'(right)
	<e, b,-1 e-2 g b e'>2.\arpeggio |
}

middle = {
	\voiceFour
	\override StringNumber #'add-stem-support = ##t
	\scaleDurations 2/3 {
		b'8 b g b'\< b g b' b g | 
		b' b g\! a' b g g' b g | 
		g' b g\> fs' b g e' b g\! |
		e' b g g' b g b' b g |
		e'' b g e'' b g e'' b g |	
		e'' b g d'' b g c'' b g |
		c'' e'\2 c'\3 b' e' c' a' e' c' | 
		a' e' c' b' e' c' c'' e' c' |
		b' fs'\2 <cs'-2\3> c'' fs' cs' b' fs' cs' |
		ds'' fs'\2 <ds'-2\3> c'' fs' ds' b' fs' ds' |
		b' b g a' b g g' b g |
		g' b g fs' b g e' b g |
		fs' b <a-3> fs' b a fs' b a |
		fs' b a g' b a fs' b a |
		e' b g e' b g e' b g |
		s s s s s s s s s |
	}
	
}

\score {
	\new Staff \with { \consists "Span_arpeggio_engraver" }
	<<
		\clef "treble_8"
		\key g \major
		\time 3/4
		\tempo "Andante"
		\mergeDifferentlyHeadedOn
		\set Staff.connectArpeggios = ##t
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
