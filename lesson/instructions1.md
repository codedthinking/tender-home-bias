# Pretext
> You are waiting for your flight at Paris CDG when you get a call from the Directeur du Trésor. He is going to an EU meeting discussing public procurement, where cross-border procurement will be discussed. He wants to know how France compares to other EU countries in terms of cross-border procurement, when French public agencies are supplied by non-French tender winners.
> 
> Your laptop battery just died. You have access to a public internet terminal where you can fire up Replit with a bash terminal and access public data. You want to do an analysis that
> 
> 1. only uses the tools at your disposal (so that you impress the Directeur with your fast response)
> 2. can be fully reproduced later when you get back to the office (or recharge your laptop)
> 3. understandable by your colleagues.

# Instructions
We will use data from [Tenders Electronic Daily](https://data.europa.eu/data/datasets/ted-csv?locale=en). This is a database compiled by the European Commission on public procurements in the EU. We use a 100k sample of the 2019 Contract Award Notices. The file in .csv format.

We can enrich the data with information about [country codes](https://datahub.io/core/country-codes). This is helpful to identify the countries based on their ISO code. 

A row in the TED dataset is a contract. Each contract has one or more buyers (there may be joint procurements of several agencies) and zero or more winners. Tenders may be invalidated (hence zero winner), but can also have multiple winners. We will focus on contracts with one buyer and one winner.

## Using Replit
Replit gives us a command line environment with a simple file browser and file editor. The environments are set up as a Python project (to install necessary tools), but we will *not* be using Python during the workshop. Please do not edit the `main.py` script. Instead of the Python `Console`, we will be working in the `Shell`.

1. [ ] Explore the replit environment. File explorer, editor, console and shell. Resize the shell window where we will be doing most of the work.
2. [ ] Click the big gree `Run` button at the top of the page. This will install the `csvkit` tools we use. 
3. [ ] If you are disconnected due to network issues, don't worry. Your files are saved automatically. You need to reinstall `csvkit`, however, by clicking `Run` again.

## Download data with curl
4. [ ] Explore the [source datasets](https://github.com/codedthinking/tender-home-bias).
5. [ ] On repl.it, create two folders: `data/raw/european-commission` and `data/raw/datahub`.
6. [ ] Download [`ted-sample.csv`](https://github.com/codedthinking/tender-home-bias/releases/download/v1.0/ted-sample.csv) with `curl` to the folder `data/raw/european-commission`.
7. [ ] Download [`country-codes.csv`](https://github.com/codedthinking/tender-home-bias/releases/download/v1.0/country-codes.csv) with `curl` to the folder `data/raw/datahub`.
8. [ ] With `ls`, check the size of both files. They should be 50M and 127K.

> [Everything else `curl` can do](https://curl.se/docs/httpscripting.html).

## Explore .csv files using `head`, `tail`, `wc`
9. [ ] Display the header of both .csv files with `head`.
10. [ ] Display the first 5 lines. 
11. [ ] Use `head` and redirection to write the first 1000 lines of `ted-sample.csv` to a temp file to explore with your favorite spreadsheet editor. (For this you will need to download the file from repl.it.)
12. [ ] Use `tail` to display only the body of `ted-sample.csv`.
13. [ ] Count lines in `ted-sample.csv` using `wc`.
14. [ ] Using `tail`, `wc` and piping, count the number of observations in both .csv files.

## Save your work
15. [ ] With `history`, print the commands you have used. Redirect the output to the file `history.txt` in your project folder.
16. [ ] Run the automated tests (checkmark icon on the lower left).
17. [ ] `Submit` your project in replit (button on top right).

