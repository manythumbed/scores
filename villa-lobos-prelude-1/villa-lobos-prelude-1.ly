\version "2.16.1"
\language "english"

\header { 
	title = "Prélude No 1"
	subtitle = "in E minor"
	composer ="Heitor Villa-Lobos"
	tagline = ""
}

top = {
	\override StringNumber #'stencil = ##f
	\partial 4
	s4 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>8 <b e'>8 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>8 <b e'>8 <g b e'>8 |
	r8 <c' e' a'> <c' e' a'> <c' e' a'> r8 <b c'\3 e'> |
	r8 <f'\3 b\2 b\4> <f'\3 b\2 b\4> <f'\3 b\2 b\4> <f'\3 b\2 b\4> <f'\3 b\2 b\4> |
	r8 <as\4 b e'\3> <as\4 b e'\3> <a\4 b e'\3> <a\4 b ds'\3> <a\4 b ds'\3> |
	r8 <ds a b> <ds a b> <ds a b>4 <ds a b>8 |
	r8 <ds b g> <ds b g> <ds b g>4 <ds a b>8 |
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <g b e'> <g b e'> <g b e'> <g b e'> <g b e'> |
	r8 <a'\2 e' e'\3> <a'\2 e' e'\3> <a'\2 e' e'\3> r8 <c'\4 a'\2 e'\3> |
	r8 <a'\2 e' e'\3> <a'\2 e' e'\3> <a'\2 e' e'\3> <a'\2 e' e'\3> <a'\2 e' e'\3> | 
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <cs' e' bf'>8 <cs' e' bf'> <cs' e' bf'> r8 <c' ef' a'> |
	r8 <ds' fs' c''> <ds' fs' c''> <ds' fs' c''> r8 <d' f' b'> |
	r8 <f' gs' d''> r8 <e' g' cs''> r8 <fs' a' ef''> |
	r8 <f' gs' d''> r8 <gs' b' f''> r8 <f' gs' d''> |
	r8 <d' f' b'> r8 <b d' gs'> r8 <gs b f'> |
	<ds a b>8 <a b> <a b> <a b>4 <ds a b>8 | 
	r8 <ds g b> <ds g b> <ds g b> r8 <ds a b> |
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <g b e'> <g b e'> <g b e'>4 <g b e'>8 |
	r8 <b\2 gs' es''> <b\2 a' fs''> <b\2 gs' es''> <b\2 a' fs''> <b\2 gs' es''> |
	r8 <b\2 g' e''> <b\2 af' f''> <b\2 g' e''> <b\2 af' f''> <b\2 g' e''> |
	r8 <b\2 fs' ds''> <b\2 g' e''> <b\2 fs' ds''> <b\2 g' e''> <b\2 fs' ds''> |
	r8 <b\2 es' css''> <b\2 fs' ds''> <b\2 es' css''> <b\2 fs' ds''> <b\2 es' css''> |
	<b\2 fs' ds''> <b\2 es' css''> <b\2 fs' ds''> <b\2 es' css''> <b\2 fs' ds''> <b\2 es' css''> |
	<b\2 fs' ds''> <b\2 es' css''> <b\2 fs' ds''> <b\2 es' css''> <b\2 fs' ds''> <b\2 es' css''> |
	<b\2 fs' ds''>4 r4 r8 <g b e'> ~ |
	<g b e'> <g b e'>4 <g b e'> <g b e'>8 |
}

melody = {
	\override StringNumber #'stencil = ##f
	\partial 4
	b,4 \glissando |
	<e\5>2 <fs\5>4 |
	<g\5>2 <a\4>4 |
	<b\4>2 <b\4>4 \glissando |
	<d'\4>2 <c'\4>4 |
	<b\4>2 <e\4>4 \glissando |
	<b\4>2 <g\5 b\4>4 |
	<fs\5 b\4>2 <e\5 b\4>4 |
	<a\4>2 <e\5>4 \glissando |
	<g\5>2. |
	<fs\5>2 <fs\5>4 |
	b,2 a,4 |
	g,2 b,4 \glissando | 
	<e\5>2 <fs\5>4 |
	<g\5>2 <a\4>4 |
	<b\4>2 <b\4>4 |
	<e'\4>2 <d'\4>4 |
	<cs'\4>2 <g\4>4 |
	<cs'\4>2. |
	<c'\4>2 <fs\5>4 |
	<c'\4>2. |
	<b\4>2 e4 |
	<g\4>2 <fs\4>4 |
	<a\4>2 <gs\4>4 |
	<b\4>4 <as\4> <c'\4> |
	<b\4>4 <d'\4> <b\4> |
	<gs\4>4 <f\4> d |
	b,2 a, 4 |
	g,2 b,4 \glissando |
	<e\5>2 <fs\5>4 |
	<g\5>2 <a\4>4 |
	<b\4>2 <b\4>4 |
	<fs'\4>2 <e'\4>4 | 
	<d'\4>2 <d'\4>4 |
	<cs'\4>2 <cs'\4>4 |
	<c'\4>2 <c'\4>4 |
	<b\4>2 <b\4>4 |
	<b\4>2 <b\4>4 |
	<b\4>2.
	<b\4>8 \glissando <fs\4> <g\4> <ds\5> <e\5> <c\5> |
	<b,\5> a, g, fs, e, g, |
}

empty = {
}

bass = {
	\override StringNumber #'stencil = ##f
	\partial 4
	s4 |
	e,2 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	e,2. |
	s4 s4 s4 |
	a,2 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	s4 s4 fs,4
	e,2. |
	s4 s4 s4 |
	s4 s4 s4 |
	e,2. |
	s4 s4 s4 |
	s4 s4 s4 |
	a,2. |
	s4 s4 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
	fs'2 s4 |
	s2 fs,4 |
	e,2. |
	s4 s4 s4 |
	s4 s4 s4 |
	e,2. |
}

\score {
	\new StaffGroup <<
		\new Staff	{
			\clef "treble_8"
			\key g \major
			\time 3/4
			\tempo "Andantino exprissivo"
			<< \top \\ \melody \\ \empty \\ \bass >>
		}
		\new TabStaff	{
			<< \top \\ \melody \\ \empty \\ \bass >>
		}
	>>
	\layout {
    \context {
      \Score
    }
  }
}
