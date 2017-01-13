# source general config
source ${HOME}/.bash/config

# source config like aliases and functions
for i in ${HOME}/.bash/config.d/*; do
	source ${i}
done

# source os specific settings
# Note: Files can also be provided from other homesick castle
case "$OSTYPE" in
	linux*)		for i in ${HOME}/.bash/os.d/linux/*    ; do source $i; done ;;
	darwin*)	for i in ${HOME}/.bash/os.d/osx/*      ; do source $i; done ;;
	win*)		for i in ${HOME}/.bash/os.d/windows/*  ; do source $i; done ;;
	cygwin*)	for i in ${HOME}/.bash/os.d/cygwin/*   ; do source $i; done ;;
	bsd*)		for i in ${HOME}/.bash/os.d/bsd/*      ; do source $i; done ;;
	solaris*)	for i in ${HOME}/.bash/os.d/solaris/*  ; do source $i; done ;;
esac


# source custom bash completion files
for i in ${HOME}/.bash/completions.d/*; do
	source ${i}
done

# change bash prompt
source ${HOME}/.bash/prompt

# source local settings, which are not managed by a homesick castle
if [[ -f ${HOME}/.bashrc.local ]]; then
	source ${HOME}/.bashrc.local
fi

# source homeshick itself
if [[ -d ${HOME}/.homesick/repos/homeshick ]]; then
	source ${HOME}/.homesick/repos/homeshick/homeshick.sh
fi
if [[ -d ${HOME}/.homesick/repos/homeshick/completions/homeshick-completion.bash ]]; then
	source ${HOME}/.homesick/repos/homeshick/completions/homeshick-completion.bash
fi

# cleanup
unset i
