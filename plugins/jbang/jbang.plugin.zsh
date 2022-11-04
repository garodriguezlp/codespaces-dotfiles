if (( ! $+commands[jbang] )); then
  return
fi

source <(jbang completion)
