
#pkgdir="${XDG_CONFIG_HOME}/emacs/pkgs"
pkgdir="$HOME/.config/emacs/elpaca/repos"
# rm -v "${pkgdir}"/**/*.elc

loadpatharg="$(find ${pkgdir} -mindepth 1 -maxdepth 1 -type d | perl -pe 's|^|-L |g' | perl -pe 's|\n| |g')"

evalfile="${XDG_CONFIG_HOME}/emacs/assets/nativecomp-eval.elc"

echo "byte compiling..."

if [ "$1" = "byte" ]; then
    emacs -l "${evalfile}" --batch $loadpatharg -f batch-byte-compile $pkgdir/**/*.el && notify-send "byte-compile" "finished job"
fi

if [ "$1" = "native" ]; then
    emacs -l "${evalfile}" --batch $loadpatharg -f batch-native-compile $pkgdir/**/*.el && notify-send "native-compile" "finished job"
fi