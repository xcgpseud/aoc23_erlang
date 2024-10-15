solve () {
	local DAY="$1"
	local PART="$2"

	erl -noshell -s day${DAY}_part${PART} solve -s init stop
}

solve $1 $2
