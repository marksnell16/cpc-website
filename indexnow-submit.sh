#!/bin/bash
# Run after every deployment: bash indexnow-submit.sh

KEY="787c5bb08aa94a28a6119b3d09fb7c0a"
HOST="cpclean.com.au"

curl -s -X POST "https://api.indexnow.org/indexnow" \
  -H "Content-Type: application/json; charset=utf-8" \
  -d "{
  \"host\": \"${HOST}\",
  \"key\": \"${KEY}\",
  \"keyLocation\": \"https://${HOST}/${KEY}.txt\",
  \"urlList\": [
    \"https://cpclean.com.au/\",
    \"https://cpclean.com.au/about/\",
    \"https://cpclean.com.au/about/our-team/\",
    \"https://cpclean.com.au/careers/\",
    \"https://cpclean.com.au/case-studies/\",
    \"https://cpclean.com.au/case-studies/queensland-government-statewide/\",
    \"https://cpclean.com.au/case-studies/industrial-resources-cleaning/\",
    \"https://cpclean.com.au/case-studies/education-multi-panel-capability/\",
    \"https://cpclean.com.au/case-studies/carbon-neutral-cleaning-program/\",
    \"https://cpclean.com.au/contact/\",
    \"https://cpclean.com.au/locations/\",
    \"https://cpclean.com.au/knowledge-hub/\",
    \"https://cpclean.com.au/due-diligence/\",
    \"https://cpclean.com.au/request-a-proposal/\",
    \"https://cpclean.com.au/authority/government-defence-cleaning/\",
    \"https://cpclean.com.au/authority/local-government-council-cleaning/\",
    \"https://cpclean.com.au/authority/industrial-power-station-cleaning/\",
    \"https://cpclean.com.au/authority/education-tafe-cleaning/\",
    \"https://cpclean.com.au/authority/commercial-office-tower-cleaning/\",
    \"https://cpclean.com.au/authority/carbon-neutral-cleaning/\",
    \"https://cpclean.com.au/authority/iso-cleaning-provider/\",
    \"https://cpclean.com.au/authority/national-cleaning-operations/\",
    \"https://cpclean.com.au/authority/cleaning-technology-robotics/\",
    \"https://cpclean.com.au/authority/modern-slavery-ethical-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/government-cleaning-procurement-process/\",
    \"https://cpclean.com.au/knowledge-hub/cleaning-kpis-government-contracts/\",
    \"https://cpclean.com.au/knowledge-hub/standards-government-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/government-vs-office-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/security-clearances-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/red-flags-cleaning-tenders/\",
    \"https://cpclean.com.au/knowledge-hub/cleaning-contract-tender-evaluation/\",
    \"https://cpclean.com.au/knowledge-hub/cleaning-power-stations/\",
    \"https://cpclean.com.au/knowledge-hub/hazardous-environment-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/mining-resources-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/manufacturing-cleaning-compliance/\",
    \"https://cpclean.com.au/knowledge-hub/warehouse-distribution-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/food-production-cleaning-standards/\",
    \"https://cpclean.com.au/knowledge-hub/wwcc-cleaning-schools-tafe/\",
    \"https://cpclean.com.au/knowledge-hub/student-safety-cleaning-protocols/\",
    \"https://cpclean.com.au/knowledge-hub/tafe-vs-school-cleaning-requirements/\",
    \"https://cpclean.com.au/knowledge-hub/term-aligned-cleaning-schedules/\",
    \"https://cpclean.com.au/knowledge-hub/what-is-carbon-neutral-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/scope-emissions-cleaning-reporting/\",
    \"https://cpclean.com.au/knowledge-hub/climate-active-certification-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/sustainable-cleaning-supply-chain/\",
    \"https://cpclean.com.au/knowledge-hub/ai-commercial-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/cleaning-robotics-automation/\",
    \"https://cpclean.com.au/knowledge-hub/iot-monitoring-cleaning-operations/\",
    \"https://cpclean.com.au/knowledge-hub/iso-certification-cleaning-providers/\",
    \"https://cpclean.com.au/knowledge-hub/cleaning-as-compliance-function/\",
    \"https://cpclean.com.au/knowledge-hub/cheap-vs-compliant-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/national-cleaning-contracts-vs-regional/\",
    \"https://cpclean.com.au/knowledge-hub/modern-slavery-compliance-cleaning/\",
    \"https://cpclean.com.au/knowledge-hub/social-procurement-cleaning/\"
  ]
}" && echo "IndexNow submission complete"
