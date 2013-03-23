\version "2.16.1"
\language "english"

\header { 
	title = "Prelude No 1"
	subtitle = "in E minor"
	tagline = ""
}

top = {
	\partial 4
	s4 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>4 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>8 <b e'>8 <g b e'>8 |
	r8 <g b e'>8 <g b e'>8 <g b e'>8 <b e'>8 <g b e'>8 |
}

melody = {
	\partial 4
	b,4\glissando |
	<e\5>2 <fs\5>4 |
	<g\5>2 <a\4>4 |
	<b\4>2 <b\4>4\glissando |
	<d'\4>2 <c'\4>4 |
	<b\4>2 <e\4>4\glissando |
	<b\4>2 <g\5 b\4>4 |
	<fs\5 b\4>2 <e\5 b\4>4 |
	<a, a\4>2 <e\5>4 \glissando |
	<g\5>2. |
}

empty = {
}

bass = {
	\partial 4
	s4 |
	e,2 s4 |
	s4 s4 s4 |
	s4 s4 s4 |
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
