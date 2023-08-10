set -x

SCRIPTDIR=$(cd $(dirname "$0") && pwd)

rm openwhisk/invoker/logs/invoker-local_logs.log
rm openwhisk/invoker1/logs/invoker-local_logs.log
rm openwhisk/invoker2/logs/invoker-local_logs.log
rm openwhisk/invoker3/logs/invoker-local_logs.log
rm openwhisk/invoker4/logs/invoker-local_logs.log
rm openwhisk/controller/logs/controller-local_logs.log

