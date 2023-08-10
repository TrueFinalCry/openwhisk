set -x

SCRIPTDIR=$(cd $(dirname "$0") && pwd)

wsk action create sum sum.js -i
wsk trigger create sum_trigger -i
wsk rule create sum_rule sum_trigger sum -i

wsk action create fib fib.js -i
wsk trigger create fib_trigger -i
wsk rule create fib_rule fib_trigger fib -i

wsk action create hello hello.js -i
wsk action create fib2 fib.js -i

