ssh-add -l 2>/dev/null >/dev/null
if [ $? -ge 2 ]; then
  eval $(ssh-agent) >/dev/null
fi
