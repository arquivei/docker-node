#!/bin/sh

# Print NPM settings to utilize Google Cloud's Artifact Registry.
#
# Examples:
#
# Simple usage prints the registry URL:
# $ sh $0
#
# The `-a` optional flag prints all .npmrc info:
# $ sh $0 -a
#
# Other optional flags override default values:
# $ sh $0 -a -p foo-registry -r npm-repo

while getopts ":p:r:l:s:a" opt; do
  case $opt in
    p)
        project="$OPTARG"
        ;;
    r)
        repository="$OPTARG"
        ;;
    l)
        location="$OPTARG"
        ;;
    s)
        scope="$OPTARG"
        ;;
    a)
        print_all=true
        ;;
    \?)
        echo "Invalid option -$OPTARG" >&2
        exit 1
        ;;
  esac
done

project=${project:-arquivei-registry}
repository=${repository:-npm}
location=${location:-us-central1}
scope=${scope:-@arquivei}
print_all=${print_all:-false}

url=$location-npm.pkg.dev/$project/$repository/

if [ "$print_all" = false ]; then
	printf "https://$url\n"
else
  printf "$scope:registry=https://$url\n//$url:_authToken=\"\"\n//$url:always-auth=true\n"
fi
