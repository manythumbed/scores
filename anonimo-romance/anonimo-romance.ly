\version "2.16.1"
\language "english"

%#(set-global-staff-size 24)

\header { 
	title = "Romance Anonimo"
	subtitle = "Para Guitarra"
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

	% second section
	\key e \major

	<gs'-4>4 gs' gs' |
	gs' <fs'-2> e' | 
	e' <ds'-4> ds' |
	ds' <cs'-2> ds' |
	<cs''-3> cs'' cs'' |
	cs'' <ds''-4> cs'' |
	<cs''-4> b' b' |
	<b'-1> <cs''-4> <ds''-4> |
	<e''-4> e'' e'' |
	e'' <ds''-3> <d''-2> |
	<cs''-4> cs'' cs'' |
	cs'' b' a' |
	gs' gs' gs' |
	<gs'-4> <a'-4> fs' |
	e' e' e' |
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
	\once \shiftOnn
	<e-2>4 <b,-1> <g,-3> |
	\set fingeringOrientations = #'(right)
	<e, b,-1 e-2 g b e'>2.\arpeggio \bar ":|:"
	
	% second section
	\key e \major
	e, |
	e, |
	fs, |
	fs, |
	b, |
	b, |
	e, |
	e, |
	e, | 
	e, |
	a, |
	a, |
	e, |
	b, |
	<e-3>4 <b,-2> <fs,-3> |
	<e, b,-2 e-3 gs-1 b e'>2. \arpeggio \bar ":|"
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
		e'' b g e'' \cresc b g e'' b g |	
		e'' b g d'' b g c'' b g |
		\override TextSpanner #'(bound-details left text) = \markup { \small {V \super { 1 - 3 }}} 
		c'' \startTextSpan e'\2 c'\3 b' \> e' c' a' e' c' \! | 
		a' e' c' b' e' c' c'' e' c' \stopTextSpan |
		\override TextSpanner #'(bound-details left text) = \markup { \small { VII }}
		b' \startTextSpan fs'\2 <cs'-2\3> \< c'' fs' cs' b' fs' cs' |
		ds'' fs'\2 <ds'-2\3>\! c'' fs' ds' b' fs' ds' \stopTextSpan |
		b' b g a' b g g' b g |
		g' b g fs' \> b g e' b g \! |
		fs' b <a-3> fs' b a fs' b a |
		fs' b a g' b a fs' b \> a |
		\once \override Beam #'positions = #'(-1 . -3)
		e' b g e' b g e' b g \! \p |
		s s s s s s s s s |

		% second section
		\key e \major

		gs' b <gs-1> gs' b gs gs' b gs |
		gs' b gs <fs'-2> b gs e' b gs |
		\override TextSpanner #'(bound-details left text) = \markup { \small { II }}
		<e'-4\2> \startTextSpan a <fs-3> ds' a fs ds' a fs |
		ds' a fs <cs'-2> a fs ds' a fs \stopTextSpan |
		\override TextSpanner #'(bound-details left text) = \markup { \small { VII }}
		<cs''-3\2> \startTextSpan <fs'-2> <ds'\3> cs'' fs' ds' cs'' fs' ds' |
		cs'' fs' ds' <ds''-4> fs' ds' cs'' fs' ds' \stopTextSpan |
		cs'' <gs'-3\2> <e'-2\3> b' gs' e' b' gs' e' |
		<b'-1> gs' e' <cs''-4> gs' e' ds'' gs' e' |
		\override TextSpanner #'(bound-details left text) = \markup { \small { IX }}
		<e''-4> \startTextSpan gs' e' e'' gs' e' e'' gs' e' |
		e'' gs' e' ds'' gs' e' d'' gs' e' \stopTextSpan |
		\override TextSpanner #'(bound-details left text) = \markup { \small { V }}
		cs'' \startTextSpan <e'\2> <cs'-2\3> cs'' e' cs' cs'' e' cs' |
		cs'' e' cs' <b'-3> e' cs' a' e' cs' \stopTextSpan |
		<gs'-4> b <gs-1> gs' b gs gs' b gs |
		\override TextSpanner #'(bound-details left text) = \markup { \small { II }}
		<gs'-4> \startTextSpan <ds'-3> a a' ds' a fs' ds' a \stopTextSpan |
		\once \override Beam #'positions = #'(0 . -3)
		e' b <gs-1> e' b gs e' b gs |
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
