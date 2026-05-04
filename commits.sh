#!/usr/bin/env bash

# --- CONFIGURATION ---
# Array of GitHub usernames to check
AUTHORS=("exe-sanoner" "mark-ferris" "peter-vizi-pager", "jmeleropager", "Toki1117", "juanlacostepager", "vbacalov-pagerhealth", "hbatroukh", "peraltafederico")  # Add more authors as needed
ORG="pagerinc"                                # Organization name

# Date range
if [[ "$OSTYPE" == "darwin"* ]]; then
  SINCE=$(date -v-8d -u +"%Y-%m-%dT%H:%M:%SZ")
else
  SINCE=$(date -d "8 days ago" -u +"%Y-%m-%dT%H:%M:%SZ")
fi

echo "Counting commits by multiple authors in $ORG since $SINCE"
echo "=========================================================="

# Get list of repos once (outside the author loop for efficiency)
REPOS=$(gh repo list "$ORG" --limit 200 --json name -q '.[].name')

# --- MAIN LOOP: Iterate over authors ---
for AUTHOR in "${AUTHORS[@]}"; do
  TOTAL=0
  
  # Iterate over all repos for this author
  for REPO in $REPOS; do
    # Fetch all commits since the date and filter by author client-side
    # Use URL query parameter for 'since' (more reliable than -f flag)
    # Filter by author.login using jq since -f author= doesn't work reliably
    # Get raw JSON first, then combine all pages, filter, and count
    COUNT=$(gh api "repos/$ORG/$REPO/commits?since=$SINCE" \
      --paginate \
      --jq '.' 2>/dev/null | jq -s "[.[] | .[] | select(.author.login == \"$AUTHOR\")] | length" 2>/dev/null)
    API_EXIT_CODE=$?
    
    # Check if the API call failed (404, 403, etc.)
    if [ $API_EXIT_CODE -ne 0 ] || [ -z "$COUNT" ]; then
      # Silently skip repos with no access (don't print every API hit)
      continue
    fi
    
    # Handle empty/null counts (should be 0, not an error)
    # Remove any newlines/whitespace to ensure COUNT is a single number
    COUNT=$(echo "$COUNT" | tr -d '\n\r ' | head -1)
    COUNT=${COUNT:-0}
    
    TOTAL=$((TOTAL + COUNT))
  done
  
  # Print only the final result per author
  printf "%-30s %5s commits\n" "$AUTHOR" "$TOTAL"
done

echo "=========================================================="
