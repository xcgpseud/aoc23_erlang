solve () {
	local DAY="$1"

	erl -noshell -s day${DAY} solve -s init stop
}

solve $1