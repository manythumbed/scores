\version "2.16.1"
\language "english"

#(set-global-staff-size 24)

\header { 
	title = "24 Very Easy Exercises"
	subtitle = "Exercise 18"
	composer = "Fernando Sor"
	opus = "Op. 35"
	tagline = ""
}

top = {
	\set fingeringOrientations = #'(up)
	e'4  <fs'-4> |
	<g'-4>  <fs'-4> |
	e' <fs'-4> |
	e' <ds'-4> |
	e' <fs'-4> |
	<g'-4> <fs'-3> |
	e' <ds'-4> |
	<fs'-4> e' |
	<g'-4> g' |
	<fs'-3> <fs'-1> |
	e' e' |
	<ds'-4> <b-0> |	
	e' <fs'-4> |
	<g'-4> e' |
	<fs'-4> <fs'-4> |
	<fs'-4>2 \bar "||"
	e'4 fs' |
	g' fs' |
	e' fs' |
	ds' b |
	e' fs' |
	g' e' |
	<fs'-3> <ds'-4> |
	<g e'>2 |
	<g'-4>4. g'8 |
	<fs'-4>4 r8 <fs'-1>8 |
	e'4. <fs'-4>8 |
	e'4 <ds'-4> |
	e'4 <fs'-4> |
	<g'-4> e' |
	<fs'-4> fs' |
	<fs'-4> s |
	e' fs' |
	g' fs' |
	e' fs' |
	ds' <b-0> |
	e' fs' |
	g' e' |
	<fs'-3> <ds'-4> |
	e'2 \bar "|."
}

bass = {
	\set fingeringOrientations = #'(down)
	<e-2>4 <ds-1> |
	<e-2> <b,-2> |
	<c-3> a, |
	<b,-1> <b,-1> |
	<e-2> ds |
	<e-2> a, |
	b, <b,-1> |
	e, r |	
	<e-2> a, |
	d <g,-3> |
	<c-3> <fs,-2> |
	<b,-1> a, |
	<g,-2> <fs,-2> |
	e, <g,-2> |
	a, <as,-1> |
	<b,-2>2 |
	e4 ds |
	e b, |
	c a, |
	b, a, |
	g, fs, |
	e, <c-3> |
	a, <b,-1> |
	<e-3>8 <b,-2> e,4 |
	<e-2> a, |
	d <g,-4> |
	<c-3> <fs,-2> |
	<b,-1>4. a,8 |
	<g,-2>4 <fs,-2>8 <ds-1> |
	e,4 <g,-3> |
	a, as, |
	b,2 |
	e4 ds |
	e b, |
	c a, |
	b, a, |
	g, fs, |
	e, c |
	a, <b,-1> |
	<e-3>8 <b,-2> e,4 \bar "|."
}

upperMiddle = {
	\set fingeringOrientations = #'(up up)
	s8 <b g> s <b a-3> |
	s <b g> s <ds-1 a-3> |
	s <e-2 g> s <a-2 c'> |
	s <b g> s <fs-2 b-3> |
	s <b g> s <b a-3> |
	s <b g> s <a-2 c'-1> |
	s <b g> s <fs-2 a> |
	\set fingeringOrientations = #'(right right)
	s <ds a> <e-2 g> r |
	\set fingeringOrientations = #'(up up)
	s <b g> s <a-2 c'-1> |
	s <a-2 c'-1> s <b g> |
	s <b g> s <a-3 c'-1> |
	s <fs-2 b-3> s <fs b> |
	s <e-1 b> s <ds b> |
	s <e-1 b> s <e-1 b> |
	s <e-2 c'-1> s <e-2 cs'-3> |
	s <ds-1 b> <a-3> b |
	s <g b> s <a b> |
	s <g b> s <ds a> |
	s <e g> s <a c'> |
	s <fs b> s <fs b> |
	s <e b> s <ds b> |
	\set fingeringOrientations = #'(right right)
	s <e-1 b> s <e c'-1> |
	\set fingeringOrientations = #'(up up)
	s <a-2 c'-1> s <fs-3 a-1> |
	s s s s
	s <g b> <a-2 c'-1> s |
	s <a-2 c'-1> <b g> s |
	s <g b> <a-3 c'-1>4 |
	r8 <fs-2 b-3>4. |
	\set fingeringOrientations = #'(right right)
	s8 <e-1 b> s b16 <a-3> |
	\set fingeringOrientations = #'(up up)
	s8 <e b> s <e b> |
	s <e-2 c'-1> s <e-2 cs'-3>
	s <ds-1 b> <a-3> b |
	s <g b> s <a b> |
	s <g b> s <ds a> |
	s <e g> s <a c'> |
	s <fs b> s <fs b> |
	s <e b> s b16 a |
	s8 <e g> s <e g> |
	s <a-2 c'-1> s <fs-3 a-1> |
	s s s s \bar "|."
}

\score {
	<<
		\clef "treble_8"
		\key g \major
		\time 2/4
		\tempo "Andantino"
		\top \\ \bass \\ \upperMiddle
	>>
	\layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 64)
    }
  }
}
