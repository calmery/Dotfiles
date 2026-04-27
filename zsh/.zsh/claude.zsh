claude() {
  local dir="$PWD"
  while [ "$dir" != "/" ]; do
    if [ -d "$dir/.devcontainer" ]; then
      echo "[claude-wrapper] devcontainer detected at $dir"
      devcontainer up --workspace-folder "$dir" >/dev/null || {
        echo "[claude-wrapper] devcontainer up failed, falling back to host claude" >&2
        command claude "$@"
        return $?
      }
      exec devcontainer exec --workspace-folder "$dir" \
        claude --dangerously-skip-permissions "$@"
    fi
    dir="$(dirname "$dir")"
  done
  command claude "$@"
}

claude-host() {
  command claude "$@"
}

claude-prebuild() {
  local dir="$PWD"
  while [ "$dir" != "/" ]; do
    if [ -d "$dir/.devcontainer" ]; then
      devcontainer up --workspace-folder "$dir"
      return $?
    fi
    dir="$(dirname "$dir")"
  done
  echo "no .devcontainer found from $PWD" >&2
  return 1
}
