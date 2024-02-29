bold=$(tput bold)  
normal=$(tput sgr0)   
NONE='\033[00m'  
RED='\033[0;31m'    
YELLOW='\033[01;33m'  
GREEN='\033[01;32m'  
echo -e
${bold} ${NONE}Hello from ${RED}RMM${NONE}. Im ${GREEN}Bizhan Laripour ${NONE}and wish you enjoy with this project.                                                                                                                                                                                                                             "                                                    
declare -a exist=()   
if test -d ./RMM_CONFIG_REPO;then 
exist+=(RMM_CONFIG_REPO)   
fi       
if test -d ./RMM_DISCOVERY;then 
exist+=(RMM_DISCOVERY)  
fi    
if test -d ./RMM_CONFIG_SERVER;then 
exist+=(RMM_CONFIG_SERVER) 
fi      
if test -d ./RMM_AGENT;then  
exist+=(RMM_AGENT) 
fi
if test -d ./RMM_WORKER;then                          
exist+=(RMM_WORKER)    
fi
for ((i=0;i<"${#exist[@]}"; i++));do
number=$(($i +1 ))
echo $number : "${exist[$i]}" exist           
done
                    
