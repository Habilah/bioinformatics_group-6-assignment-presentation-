#!/bin/bash
# ===========================================================
# ANA 4315 - Introduction to Bioinformatics CA1
# Bash Automation Script
# Clones repo, runs all scripts, and generates CSV output
# ===========================================================

REPO_URL="https://github.com/yourusername/ana4315-ca1.git"
REPO_DIR="ana4315-ca1"
OUTPUT_DIR="output"
CSV_FILE="$OUTPUT_DIR/group_data.csv"
SCRIPTS_DIR="scripts"

echo "=========================================="
echo " ANA 4315 CA1 - Automation Script"
echo "=========================================="

# Step 1: Clone the repository
echo ""
echo "[1/4] Cloning repository..."
if [ -d "$REPO_DIR" ]; then
    echo "  Repository already exists. Pulling latest changes..."
    cd "$REPO_DIR" && git pull && cd ..
else
    git clone "$REPO_URL" "$REPO_DIR"
    if [ $? -ne 0 ]; then
        echo "  ERROR: Failed to clone repository."
        exit 1
    fi
fi
echo "  Done."
cd "$REPO_DIR"

# Step 2: Create output directory
mkdir -p "$OUTPUT_DIR"

# Step 3: Write CSV header
echo "Name,Email,Slack Username,Area of Interest" > "$CSV_FILE"
echo ""
echo "[2/4] CSV file initialized."

# Helper function
run_script_and_capture() {
    local OUTPUT="$1"
    NAME=$(echo "$OUTPUT"     | sed -n '1p' | tr -d '\r')
    EMAIL=$(echo "$OUTPUT"    | sed -n '2p' | tr -d '\r')
    SLACK=$(echo "$OUTPUT"    | sed -n '3p' | tr -d '\r')
    INTEREST=$(echo "$OUTPUT" | sed -n '4p' | tr -d '\r')
    echo "  Captured: $NAME | $EMAIL | $SLACK | $INTEREST"
    echo "\"$NAME\",\"$EMAIL\",\"$SLACK\",\"$INTEREST\"" >> "$CSV_FILE"
}

echo ""
echo "[3/4] Running scripts..."

# Python - Habila Emmanuel Habu
if [ -f "$SCRIPTS_DIR/habila_emmanuel.py" ]; then
    echo "  Running Python script..."
    OUT=$(python3 "$SCRIPTS_DIR/habila_emmanuel.py" 2>/dev/null)
    run_script_and_capture "$OUT"
fi

# Perl - Vastly Emmanuel
if [ -f "$SCRIPTS_DIR/vastly_emmanuel.pl" ]; then
    echo "  Running Perl script..."
    OUT=$(perl "$SCRIPTS_DIR/vastly_emmanuel.pl" 2>/dev/null)
    run_script_and_capture "$OUT"
fi

# R - Abubakar Abdulkadir
if [ -f "$SCRIPTS_DIR/abubakar_abdulkadir.R" ]; then
    echo "  Running R script..."
    OUT=$(Rscript "$SCRIPTS_DIR/abubakar_abdulkadir.R" 2>/dev/null)
    run_script_and_capture "$OUT"
fi

# Java - Ibrahim Sa'id
if [ -f "$SCRIPTS_DIR/ibrahim_said.java" ]; then
    echo "  Compiling and running Java script..."
    javac "$SCRIPTS_DIR/ibrahim_said.java" -d "$SCRIPTS_DIR/" 2>/dev/null
    OUT=$(java -cp "$SCRIPTS_DIR" ibrahim_said 2>/dev/null)
    run_script_and_capture "$OUT"
fi

# JavaScript - Abulkhairi Mohammed
if [ -f "$SCRIPTS_DIR/abulkhairi_mohammed.js" ]; then
    echo "  Running JavaScript script..."
    OUT=$(node "$SCRIPTS_DIR/abulkhairi_mohammed.js" 2>/dev/null)
    run_script_and_capture "$OUT"
fi

echo ""
echo "[4/4] CSV generation complete!"
echo ""
echo "=========================================="
echo " OUTPUT: $CSV_FILE"
echo "=========================================="
cat "$CSV_FILE"
echo "=========================================="
