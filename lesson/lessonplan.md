# Lesson plan

## Why
1. To ensure reproducibility, everything is code. Models, data transformations, even data provenance.
2. For readability, your code should be modular.
3. One challenge with modular code (as well as different special-purpose tools) is to glue different components together. The glue part may sound unglamourous, but crucial.
4. Bash and Make offer such glue. You can link together any number of tools that can be called from the command line. Preferably, they operate on flat files (which is what Make deals with). Suitable for medium-sized batch workflows.
5. Often, these tools are good enough for the job. Bash and Make are available almost everywhere, no special tools needed. Especially useful for preprocessing data on a server before you can download a suitably sized data extract into your favorit analytics tool.

## Learning objectives and formative assessments
### Introduction to data science on the command line
1. Download data using `curl`
	- Explore [source data](https://github.com/codedthinking/tender-home-bias)
	- Download [`ted-sample.csv`](https://github.com/codedthinking/tender-home-bias/releases/download/v1.0/ted-sample.csv) in proper folder
	- Download [`country-codes.csv`](https://github.com/codedthinking/tender-home-bias/releases/download/v1.0/country-codes.csv) in proper folder
	- Change their names during download
2. Explore .csv files using `less`, `head`, `tail`, `wc`
	- Display .csv headers
	- Display first 5 lines
	- Write first 1000 lines to a temp file to explore with favorit spreadsheet editor (will not work on repl.it)
	- Display body of .csv files
	- Count lines in .csv files
	- Count number of observations in .csv files (this needs piping)

### Data transformations with `csvkit`
3. Use `csvcut` and `csvgrep` to filter data
	- Select `ID_NOTICE_CAN`,  `ISO_COUNTRY_CODE`, `VALUE_EURO` and `WIN_COUNTRY_CODE` from `ted/sample.csv`
	- Drop lines with multiple winners or requestors, having `---` in the country code field
	- Select tenders with a French buyer
4. Do more complex queries in `csvsql`
	- Count the number of tenders by origin and source country
	- Calculate the sum of value won by origin and source country
5. Combine the above tools using piping
	- Count the number of FR-FR tenders without using SQL
	- With `csvsql`, create an aggregated .csv files of countries, each country having two values: number of French tenders won (`num_tender`), value of tenders won (`value_tender`)
	- Optional: for each source country, what is the share of tenders won by same-country firms? In which EU country is this the highest?
	- Advanced: create a country-country dyadic data with these two columns. Merge with `country-codes.csv`. (We have not covered `csvjoin`)
6. Write a bash script
	- Copy commands into `filter_data.sh` and run it with `bash filter_data.sh`
	- Set executable permission, add shebang `#!/usr/bin/env bash`
	- Add command-line arguments ???

### Data pipelines with Make
7. Write a simple pipeline in Make
	- Create subsample from raw TED data with no multi-country entries
	- Create French subsample from the file above
	- Create dyadic dataset using `csvsql`
8. Build a simple DAG in Make
	- Add country codes??
9. Use named and automatic variables in Make
 	- Parametrize using FR as the target country
	- Use automatic variables for target and first source
10. (advanced, optional) For loop and parallelizm in Make
	- Write a for loop to gather each year's TED data
	- Run this in parallel with `make -j4`
