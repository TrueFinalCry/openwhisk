set -x

SCRIPTDIR=$(cd $(dirname "$0") && pwd)

wsk action create sum sum.js -i

wsk action create fib fib.js -i

wsk action create hello hello.js -i

wsk action create fib2 fib.js -i

wsk action create delay delay.js -i

wsk action create SPREAD_sum sum.js -i

wsk action create SPREAD_fib fib.js -i

wsk action create SPREAD_delay delay.js -i

wsk action create SPREAD_hello hello.js -i

wsk action create SPREAD_fib2 fib.js -i


wsk action create sum1 sum.js -i
wsk trigger create sum_trigger1 -i
wsk rule create sum_rule1 sum_trigger1 sum1 -i

wsk action create sum2 sum.js -i
wsk trigger create sum_trigger2 -i
wsk rule create sum_rule2 sum_trigger2 sum2 -i

wsk action create sum3 sum.js -i
wsk trigger create sum_trigger3 -i
wsk rule create sum_rule3 sum_trigger3 sum3 -i

wsk action create sum8 sum.js -i
wsk trigger create sum_trigger8 -i
wsk rule create sum_rule8 sum_trigger8 sum8 -i

wsk action create sum4 sum.js -i
wsk trigger create sum_trigger4 -i
wsk rule create sum_rule4 sum_trigger4 sum4 -i

wsk action create sum5 sum.js -i
wsk trigger create sum_trigger5 -i
wsk rule create sum_rule5 sum_trigger5 sum5 -i

wsk action create sum6 sum.js -i
wsk trigger create sum_trigger6 -i
wsk rule create sum_rule6 sum_trigger6 sum6 -i

wsk action create sum7 sum.js -i
wsk trigger create sum_trigger7 -i
wsk rule create sum_rule7 sum_trigger7 sum7 -i

wsk action create sum9 sum.js -i
wsk trigger create sum_trigger9 -i
wsk rule create sum_rule9 sum_trigger9 sum9 -i

wsk action create delay delay.js -i
wsk trigger create delay_trigger -i
wsk rule create delay_rule delay_trigger delay -i
