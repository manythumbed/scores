\version "2.16.1"
\language "english"

\header { 
	title = "Prelude No 1"
	subtitle = "in E minor"
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
