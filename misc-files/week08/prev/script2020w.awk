#! /usr/bin/env gawk -f
BEGIN {
    OFS=","
    FS="\t"
    SUM=0
    CNTCHEVY=0
    CNT=0
}
$1 !~ /chevy/ {
    SUM+=$5
    CNTCHEVY+=1
}
NR % 5 == 0 {print $0}
{if (NR % 5 == 0)
    print $0
 else
    next
}
$5 >= 10000 {CNT+=1}
{print toupper($2)}
{arr[$1] += 1}
END{
    print SUM, CNTCHEVY
    print CNT
    for (key in arr) print key, arr[key]
}
