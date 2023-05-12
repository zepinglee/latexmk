if [ $# -lt 2 ]; then
    # TODO: print usage
    echo "At least two arguments.";
    exit 1;
fi

perl latexmk.pl -cd "$1/$2/main.tex" -C;
perl latexmk.pl -cd "$1/$2/main.tex" -diagnostics > "$1/$2/diagnostics.log";
