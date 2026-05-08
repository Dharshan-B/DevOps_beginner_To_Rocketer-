#!/bin/bash

# Automation Challenge Tester
echo "🧪 Testing your Automation Bots..."
echo "---------------------------------"

# Test 1: Sorter
if [ -f "sorter.sh" ]; then
    mkdir -p test_dir
    touch test_dir/a.log test_dir/b.txt
    cd test_dir
    bash ../sorter.sh > /dev/null 2>&1
    if [ -d "logs" ] && [ -d "docs" ]; then
        echo "✅ Bot 1 (Sorter): PASSED!"
    else
        echo "❌ Bot 1 (Sorter): FAILED. Check if you are creating directories."
    fi
    cd ..
    rm -rf test_dir
else
    echo "⏭️ Bot 1 (Sorter): Not found (sorter.sh)"
fi

# Test 2: Greeter
if [ -f "greet_me.sh" ]; then
    OUT=$(bash greet_me.sh Tester)
    if [[ $OUT == *"Tester"* ]]; then
        echo "✅ Bot 2 (Greeter): PASSED!"
    else
        echo "❌ Bot 2 (Greeter): FAILED. Make sure you use the name argument."
    fi
else
    echo "⏭️ Bot 2 (Greeter): Not found (greet_me.sh)"
fi

# Test 3: Watchman
if [ -f "monitor.sh" ]; then
    OUT=$(bash monitor.sh)
    if [[ $OUT == *"System"* ]] || [[ $OUT == *"WARNING"* ]]; then
        echo "✅ Bot 3 (Watchman): PASSED!"
    else
        echo "❌ Bot 3 (Watchman): FAILED. Check your output format."
    fi
else
    echo "⏭️ Bot 3 (Watchman): Not found (monitor.sh)"
fi

echo "---------------------------------"
echo "Keep scripting! Every script you write makes you a better DevOps Engineer. 🤖"
