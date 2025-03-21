while read line; do ((++i)); echo "line$i,$line,"; done < /etc/os-release | xargs -n 2 -d ',' sh -c 'a=$(echo "$0" | tr -cd "[:print:]\n"); echo "$1" > "$a"' 2>/dev/null

