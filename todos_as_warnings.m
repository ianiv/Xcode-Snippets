// TODOs as Warnings
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 171DE33D-CB47-4894-BC0C-2D72EF460F05
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.BourneShellScript
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
TAGS="TODO|FIXME"
echo "searching ${SRCROOT} for ${TAGS}"
find "${SRCROOT}" \( -name "*.h" -or -name "*.m" \) -print0 | xargs -0 egrep --with-filename --line-number --only-matching "($TAGS).*\$" | perl -p -e "s/($TAGS)/ warning: \$1/"