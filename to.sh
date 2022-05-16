to() {
  if [[ $1 == "-h" || $1 == "--help" ]]; then
    echo "Usage: to [-c] [-e extension] [filename]"
    return
  fi

  if [[ $1 == "-c" ]]; then
    dir="$(pwd)"
    shift
  else
    dir="$HOME/Desktop"
  fi

  if [[ $1 == "-e" ]]; then
    ext="$2"
    shift 2
  else
    ext="txt"
  fi

  if [[ -z $1 ]]; then
    name="untitled"
    if [[ -e $name.$ext || -L $name.$ext ]]; then
      i=1
      while [[ -e $name-$i.$ext || -L $name-$i.$ext ]]; do
        ((i++))
      done
      name=$name-$i.$ext
    else
      name=$name.$ext
    fi
  elif [[ $1 == *"."* ]]; then
    name=$1
  else
    name=$1.$ext
  fi

  touch "${dir}/${name}"
  open "${dir}/${name}"
}
