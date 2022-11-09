if (( ! $+commands[jbang] )); then
  return
fi

z4h source <(jbang completion)
