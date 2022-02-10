# Instructions
## Using Replit
Replit gives us a command line environment with a simple file browser and file editor. The environments are set up as a Python project (to install necessary tools), but we will *not* be using Python during the workshop. Please do not edit the `main.py` script. Instead of the Python `Console`, we will be working in the `Shell`.

1. [ ] Explore the replit environment. File explorer, editor, console and shell. Resize the shell window where we will be doing most of the work.
2. [ ] Click the big gree `Run` button at the top of the page. This will install the `csvkit` tools we use. 
3. [ ] If you are disconnected due to network issues, don't worry. Your files are saved automatically. You need to reinstall `csvkit`, however, by clicking `Run` again.
4. [ ] Check in your file browser that you have `data/raw/european-commission/ted-sample.csv` in your project folder.

## Use `csvcut` and `csvgrep` to filter data
5. [ ] Select `ID_NOTICE_CAN`, `ISO_COUNTRY_CODE`, `WIN_COUNTRY_CODE` and `AWARD_VALUE_EURO` from `ted-sample.csv` using `csvcut`.
6. [ ] Create a text file `data/derived/ted-columns.csv` with a single line "`tender_id,buyer_country,winner_country,value`" using `mkdir`, `echo` and redirection. (Remember, everything is code.)
7. [ ] Append the *body* of the above `csvcut` results (not the header) to `data/derived/ted-columns.csv`. This way we have renamed the columns.
8. [ ] Use `csvgrep` to keep only lines with a single buyer and winner. These lines have two upper case letters in both `buyer_country` and in `winner_country`. (Use [regex](https://regexone.com/) matching.) Save this file as `data/derived/analysis-sample.csv`.
9. [ ] Select tenders with a French buyer. Use piping and `csvstat` to report some basic descriptives about these tenders.

> [A great hands-on introduction to regular expressions](https://regexone.com/).

## Do more complex queries in `csvsql`
10. [ ] Select the first five rows of the `analysis-sample.csv` table using `csvsql`. Because dashes do not make for good table name, rename the table to `tender`.
11. [ ] Aggregate tenders by origin and source country, saving the number of tenders as `num_tender` and the total award value as `value_tender`. (This is mostly SQL.) Save this file as `data/derived/country-pairs.csv`.
12. [ ] Using `country-pairs.csv` and `csvsql`, calculate the share of tender value won by firms in the same country as the buyer.

> [Check out Julia Evans's SQL explainer](https://wizardzines.com/zines/sql/)

## Save your work
13. [ ] With `history`, print the commands you have used. Redirect the output to the file `history.txt` in your project folder.
14. [ ] `Submit` your project in replit (button on top right).
