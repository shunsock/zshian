# TARBALL SETTING
# * pretend from adding .files to .tar
# $#                    : the number of argment
# -lt                   : operator that mean <
# env                   : custom enviroment
# COPYFILE_DISABLE      : tells tar to avoid copying special metadata files that macOS
#                       : =1 mean =true
# tar                   : handling archive files
# tar option z          : compress the archive using gzip
# tar option c          : create new archive files
# tar option v          : list the file it is processing
# tar option f          : make file name of archive with following argument
# "$1"                  : argument when you run some program on console
# --exclude=".DS_Store" : exclude .DS_Store file from files collected for archive
# "${@:2}"              : The @ symbol represents all of the arguments passed to the script. The :2 is a slice that starts at the second argument. so "${@:2} is command line 2nd argument
targz() {
  if [ $# -lt 2 ]; then
    echo "Error: the number of argument is invalid"
  else
    xattr -rc "${@:2}" && \
    env COPYFILE_DISABLE=1 tar zcvf "$1" --exclude=".DS_Store" "${@:2}"
  fi
}
