#!/bin/bash
set -e

echo "🚀 Running JMeter Smoke Test..."
timestamp=$(date +%Y%m%d_%H%M%S)
result_file="jmeter/results/smoke_${timestamp}.jtl"
report_dir="jmeter/reports/smoke_${timestamp}"

mkdir -p jmeter/results jmeter/reports

# Run the test in non-GUI mode
jmeter -n -t jmeter/plans/smoke_test.jmx -l "$result_file" -e -o "$report_dir"

echo "✅ Smoke test completed!"
echo "📊 HTML Report generated at: $report_dir/index.html"
