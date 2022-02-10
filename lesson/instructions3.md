# Instructions
## Using Replit
Replit gives us a command line environment with a simple file browser and file editor. The environments are set up as a Python project (to install necessary tools), but we will *not* be using Python during the workshop. Please do not edit the `main.py` script. Instead of the Python `Console`, we will be working in the `Shell`.

1. [ ] Explore the replit environment. File explorer, editor, console and shell. Resize the shell window where we will be doing most of the work.
2. [ ] Click the big gree `Run` button at the top of the page. This will install the `csvkit` tools we use. 
3. [ ] If you are disconnected due to network issues, don't worry. Your files are saved automatically. You need to reinstall `csvkit`, however, by clicking `Run` again.
4. [ ] Check that you have `commands.sh` in your project folder.

## Write a simple pipeline in Make
5. [ ] Download the raw TED sample in Make.
6. [ ] Edit the Makefile to create `ted-columns.csv` and `analysis-sample.csv`. Rerun the Makefile.
7. [ ] Add the aggregation step in `csvsql`. Rerun the Makefile.


## Build a simple DAG in Make
8. [ ] Create a subsample from the analysis sample with French buyers and save it as `data/derived/FR.csv`.
9. [ ] Create a subsample from the analysis sample with German buyers and save it as `data/derived/DE.csv`.
10. [ ] Delete both files and rerun the Makefile with `make -j2` to execute two jobs in parallel.

## Use named and automatic variables in Make
11. [ ] Rewrite the rule producing the country sample with pattern matching (`%`) and automatic variables (`$*`, `$@`, `$<`).
12. [ ] Define target directory as a variable `DIR` and edit all rules

## Save your work
13. [ ] Run the automated tests.
14. [ ] `Submit` your project in replit (button on top right).

