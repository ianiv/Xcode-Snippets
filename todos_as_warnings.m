// TODOs as Warnings
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: C548433A-65A6-417A-ACC4-B9C0CD424E4C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.BourneShellScript
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
TAGS="TODO|FIXME"
echo "searching ${SRCROOT} for ${TAGS}"
find "${SRCROOT}" \( -name "*.h" -or -name "*.m" \) -print0 | xargs -0 egrep --with-filename --line-number --only-matching "($TAGS).*\$" | perl -p -e "s/($TAGS)/ warning: \$1/"