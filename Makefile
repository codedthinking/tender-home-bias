COUNTRIES := AT DE FR IT PL HU RO
URL := https://data.europa.eu/api/hub/store/data/ted-contract-award-notices-2018-2022.zip

all: $(foreach country,$(COUNTRIES),data/derived/$(country).csv)

data/derived/ted-sample.csv: data/raw/ted/open_data_can_2018_2019_2020_2021_2022.csv
	mkdir -p $(dir $@)
	# copy header
	head -n1 $< > $@
	# limit rows to single-country buyers and winners, then take a random sample of 50,000 contracts
	< $< csvgrep -d, -c ISO_COUNTRY_CODE,WIN_COUNTRY_CODE -r "^[A-Z]{2}$$" | csvgrep -c VALUE_EURO -r "^$$" --invert | tail -n +2 | shuf -n 50000 >> $@
data/derived/%.csv: data/derived/ted-sample.csv
	csvgrep -c ISO_COUNTRY_CODE -m "$*" $< > $@
data/raw/ted/open_data_can_2018_2019_2020_2021_2022.csv: data/raw/can-2018-2022.zip
	mkdir -p $(dir $@)
	unzip -p $< > $@
data/raw/can-2018-2022.zip:
	mkdir -p $(dir $@)
	curl -Lo $@ $(URL)


