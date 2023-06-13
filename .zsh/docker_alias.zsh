### Docker Command
alias di='docker image '
alias dils='docker image ls'
alias dirm='docker rmi -f'

alias dcn='docker container '
alias dcnls='docker container ls'

alias ds='docker stop'
alias dex='docker exec '
alias dcp='docker cp '
alias dprune='docker system prune -f'

function dlog() {
  # parse option
  while getopts "h" opt; do
    case $opt in
      h)
        echo "Help option activated."
        echo "Usage: dlog [container]"
        echo "Example: dlog app ==> docker logs -f --tail 100 app"
        ;;
      \?)
        echo "Invalid option: -$OPTARG" >&2
        exit 1
        ;;
    esac
  done
  if [ $# -eq 1 ]; then
    docker logs -f --tail 100 $1
  else
    echo "invalid arguments: number of argument must be 1"
    exit 1
  fi
}


### Docker Compose
alias dcm='docker compose '
alias dcmd='docker compose down'

function dcmu() {
  # parse option
  while getopts "h" opt; do
    case $opt in
      h)
        echo "Help option activated."
        echo "Usage: dcmup [options]"
        echo "Example: dcmu --build ==> docker compose up --build"
        ;;
      \?)
        echo "Invalid option: -$OPTARG" >&2
        exit 1
        ;;
    esac
  done
  # parse arguments and do process
  if [ $# -eq 0 ]; then
    docker compose up -d
  elif [ $# -eq 1 ]; then
    docker compose up -d $1 
  else
    echo "invalid arguments: number of argument must be 0 or 1"
    exit 1
  fi
}

function dcme() {
  # parse option
  while getopts "h" opt; do
    case $opt in
      h)
        echo "Help option activated."
        echo "Usage: dcme [container]"
        echo "Example: dcme app ==> docker compose exec app bash"
        ;;
      \?)
        echo "Invalid option: -$OPTARG" >&2
        exit 1
        ;;
    esac
  done
  # parse arguments and do process
  if [ $# -eq 1 ]; then
    docker compose exec $1 bash
  else
    echo "invalid arguments: number of argument must be 0 or 1"
    exit 1
  fi
}
