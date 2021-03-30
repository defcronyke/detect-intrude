#!/bin/bash

detect_intrude() {
targ=${targ:-"0.0.0.0"} && if [ $# -ge 1 ]; then targ="$1"; fi && pfx='intrusion-detection' && dir="$pfx" && mkdir -p $dir && rm $dir/$pfx.*.txt 2>/dev/null; i=1 && while true; do nmap $targ | grep open | cut -d/ -f1 | rev | cut -d' ' -f1 | rev | tee $dir/$pfx.$i.txt $dir/$pfx.0.txt >/dev/null && i=$(( i+1 )) && sus=$(diff $dir/$pfx.$(( i-2 )).txt $dir/$pfx.$(( i-1 )).txt) || mail -s 'POSSIBLE INTRUSION' $USER <<< $sus; sleep 10; done
}

detect_intrude $@

