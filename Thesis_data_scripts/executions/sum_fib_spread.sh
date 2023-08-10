set -x

SCRIPTDIR=$(cd $(dirname "$0") && pwd)

wsk action create sum sum.js -i

wsk action create fib fib.js -i

wsk action create hello hello.js -i

wsk action create fib2 fib.js -i

wsk action create SPREAD_sum sum.js -i

wsk action create SPREAD_fib fib.js -i

wsk action create SPREAD_hello hello.js -i

wsk action create SPREAD_fib2 fib.js -i

