function emacsyeet
    if test -z $argv
        echo "Usage: emacsyeet /path/to/directory"
        return
    end

    set target_directory $argv[1]

    if test ! -d $target_directory
        echo "oh no directory '$target_directory' not found."
        return
    end

    echo "Removing conc files in directory: $target_directory"

    find $target_directory -type f -name "#*#" -exec sh -c 'echo "Deleting: $0"; rm -f "$0"' {} \;
    find $target_directory -type f -name "*~" -exec sh -c 'echo "Deleting: $0"; rm -f "$0"' {} \;
end
