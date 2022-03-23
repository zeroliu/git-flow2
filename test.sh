# Extract tag and branch info from the issue description.
esc() {
    printf "%s\n" "$1" | sed -e "s/'/'\"'\"'/g" -e "1s/^/'/" -e "\$s/\$/'/"
}
TAG_HEADER="\- Release tag: "
BRANCH_HEADER="\- Branch: "
CONTENT="
**Script generated description. DO NOT MODIFY**

## Metadata

- Release tag: v20220321.1
- Branch: release/v20220321.1

## Actions

- To add release fixes:
  1. `git checkout release/v20220321.1`
  2. Check in fixes to the release branch.
  3. (If applied) Cherry-pick the fix to `master`.
- To approve the push: Add `QA Approved` label and close the issue.
- To cancel the push: Close the issue directly.

## Included commits (compared to v20220318.1)

5686e2cb [3/3] Change `logError` to log errors to Sentry (#2089)
4b1b965f Remove sentry hub from widget params (#2088)
25f81816 POC integration of DoubleVerify to better protect ad requests again bots and fraud traffic (#2081)
ee00d410 [CS-50] Allow widgets to inherit website's font settings (#2077)
13c1e30e remove har plugin (#2094)
38d40adb Make sentry hub a singleton (#2087)
a91d1ed0 Update README.md (#2092)
8b5cb798 Improve FWN console (#2093)
e238b7de Part 2 of Stripe Checkout POC: Checkout modal (#2073)
09c9837 Revert "playlist collection should not use playlist ad config (#2066)" (#2086)


[CS-50]: https://fwn.atlassian.net/browse/CS-50?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ"

TAG=$(esc "${CONTENT}" | grep -m 1 "${TAG_HEADER}" | sed "s/${TAG_HEADER}//")

# BRANCH=$(echo "${CONTENT}" | grep -m 1 "${BRANCH_HEADER}" | sed "s/${BRANCH_HEADER}//")
echo "::set-output name=tag::${TAG}"
# echo "::set-output name=branch::${BRANCH}"
