data/derived/ted-sample.csv: data/raw/ted/can-2019.csv data/raw/datahub/country-codes.csv
	mkdir -p $(dir $@)
	# copy header
	head -n1 $< > $@
	# get 100,000 lines from body
	tail -n +2 $< | shuf -n 100000 >> $@
data/raw/datahub/country-codes.csv:
	mkdir -p $(dir $@)
	curl -Lo $@ "https://datahub.io/core/country-codes/r/country-codes.csv"
data/raw/ted/can-2019.csv: 
	mkdir -p $(dir $@)
	curl -Lo $@ "https://data.europa.eu/euodp/repository/ec/dg-grow/mapps/TED%202020/TED%20-%20Contract%20award%20notices%202019.csv"