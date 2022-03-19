#
# Functions
#

# Open info website for a given http status code
alias statuscode=HttpStatusCode

function HttpStatusCode()
{
    base_url=https://httpstatuses.com/
    error_code="$1"
    url="$base_url$1"

    if [[ "$error_code" != <-> || "${#error_code}" -ne 3 ]]
        then echo "ERROR: The http status code must be a three digit number." && return false;
    fi

    website_status=$(curl -sLI -w "%{http_code}" "$url" -o /dev/null)
    #if [ $? -ne 0 ]
    if [[ $? -ne 0 || "$website_status" -eq "404" ]]
        then echo "ERROR: In all probability, the http status code does not exist." && return false;
    fi
    open $url;
}

# Copy command line and stdout to the clipboard
function cpcmd {
    echo "$ $@\n$(zsh -ic $@)" | tee >(pbcopy)
}

function backup()
{
    source_file="${1}"
    target_file="${1}.bak"
    cp -v "$source_file" "$target_file" \
        && trash "$target_file" \
        && echo "Moved $target_file to trash bin."
}
