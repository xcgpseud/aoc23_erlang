rm *.beam

HELPERS="src/helpers"
DAYS="src/days"

erlc "${HELPERS}/file_helper.erl"
erlc "${HELPERS}/list_helper.erl"
erlc "${HELPERS}/type_helper.erl"
erlc "${DAYS}/1/day1_part1.erl"
