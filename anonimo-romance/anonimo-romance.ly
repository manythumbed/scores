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
	<c''-4> <b'-3> a' |
	a' <b'-3> <c''-4> |
	b' <c''-3> b' | 
	<ds''-4> <c''-3> b' |
	<b'-4> <a'-2> <g'-2> |
	<g'-2> <fs'-1> e' |
	<fs'-4> fs' fs' |
	<fs'-4> <g'-4> <fs'-4> |
	e' e' e' |
	s2. \bar ":|"
}

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
	\override DynamicLineSpanner #'staff-padding = #2
	\override StringNumber #'add-stem-support = ##t
	\textSpannerUp
	% Set up barre appearance
	\override TextSpanner #'style = #'line
	\override TextSpanner #'(bound-details right text) =  \markup { \draw-line #'(0 . -1) }
	\override TextSpanner #'(bound-details left-broken text) = ##f
	\override TextSpanner #'(bound-details right-broken text) = ##f

	\scaleDurations 2/3 {
		b'8 b g b'\< b g b' b g | 
		b' b g\! a' b g g' b g | 
		g' b g\> fs' b g e' b g\! |
		e' b g g' b g b' b g |
		e'' b g e'' b g e'' b g |	
		e'' b g d'' b g c'' b g |
		\override TextSpanner #'(bound-details left text) = \markup { \small {V \super { 1 - 3 }}} 
		c'' \startTextSpan e'\2 c'\3 b' e' c' a' e' c' | 
		a' e' c' b' e' c' c'' e' c' \stopTextSpan |
		\override TextSpanner #'(bound-details left text) = \markup { \small { VII }}
		b' \startTextSpan fs'\2 <cs'-2\3> c'' fs' cs' b' fs' cs' |
		ds'' fs'\2 <ds'-2\3> c'' fs' ds' b' fs' ds' \stopTextSpan |
		b' b g a' b g g' b g |
		g' b g fs' b g e' b g |
		fs' b <a-3> fs' b a fs' b a |
		fs' b a g' b a fs' b a |
		\once \override Beam #'positions = #'(-1 . -3)
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
