
# Home Bias in Public Procurement
## 2023-08-09

## Authors
- [Miklós Koren](https://koren.mk)

This dataset provides a sample of public procurement contracts from the European Commission's Tenders Electronic Daily (TED) database for educational purposes. The population of contracts are those awarded between 2018 and 2022, with a single buyer and a single winner and a non-missing contract value. From this population, a random sample of 50,000 is drawn.

FIXME: add ISO country codes?

## Citation
If you use this data extract, please cite it as:

> European Commission, 2022. "Tenders Electronic Daily (TED) (csv subset) – public procurement notices [data set]." Available at: https://data.europa.eu/data/datasets/ted-csv Sample extract distributed by Coded Thinking OÜ, 2023, available at: https://github.com/codedthinking/tender-home-bias/tree/v2.0

## Data availability and provenance statements
### Statement about rights

The author(s) of have legitimate access to and permission to use the data used.

### Summary of availability
- All data **are** publicly available.

### Details on each data source

All source data are available publicly with a permissive license. The `Makefile` lists the URLs from which they can be downloaded.

## Dataset list

| Data file | Source | License |
|-----------|--------|----------|
| `data/raw/country-codes/country-codes.csv` | Data Hub (2021) | https://opendatacommons.org/licenses/pddl/ |
| `data/derived/ted-sample.csv` | Sample of European Commission (2022) | [CC-BY-4.0](https://data.europa.eu/en/copyright-notice) |


## Description of programs/code

The project uses [GNU Make](https://www.gnu.org/software/make/) and [csvkit](https://csvkit.readthedocs.io/en/latest/). To create the derived data, run `make`.

### License for Code

The code and text are licensed under CC0. See [LICENSE](LICENSE) for details. For source data, see the license information above.


## References

- European Commission, 2022. "Tenders Electronic Daily (TED) (csv subset) – public procurement notices [data set]." Available at: https://data.europa.eu/data/datasets/ted-csv Last accessed August 9, 2023.
- Data Hub. 2021. "Comprehensive country codes: ISO 3166, ITU, ISO 4217 currency codes and many more [data set]" Available at https://datahub.io/core/country-codes Last accessed on 2021-12-07.

