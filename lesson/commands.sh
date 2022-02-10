mkdir -p data/raw/european-commission
curl -Lo data/raw/european-commission/ted-sample.csv "https://github.com/codedthinking/tender-home-bias/releases/download/v1.0/ted-sample.csv"
mkdir -p data/derived
echo  "tender_id,buyer_country,winner_country,value" > data/derived/ted-columns.csv
< data/raw/european-commission/ted-sample.csv csvcut -c ID_NOTICE_CAN,ISO_COUNTRY_CODE,WIN_COUNTRY_CODE,AWARD_VALUE_EURO | tail -n +2 >> data/derived/ted-columns.csv
< data/derived/ted-columns.csv csvgrep -d, -c buyer_country,winner_country -r "^[A-Z]{2}$" | csvgrep -c value -r "^$" --invert > data/derived/analysis-sample.csv
csvsql --table tender --query "SELECT buyer_country, winner_country, COUNT(*) AS num_tender, SUM(value) AS value_tender FROM tender GROUP BY buyer_country, winner_country" data/derived/analysis-sample.csv > data/derived/country-pairs.csv
