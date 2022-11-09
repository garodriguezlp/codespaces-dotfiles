if (( ! $+commands[glab] )); then
  return
fi

z4h source <(glab completion)
