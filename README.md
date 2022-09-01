# Kusumo Fam Finance
## Goal
The goal of this project is to create an Explorer for my family in order to gain insight to our spending habits. To do this, I've used Lightdash in exchange of Looker for our BI platform.

## Practices and Technologies
- ELT (Extract, Load, Transform)
- Data Modelling
- dbt (Data Build Tool)
- Lightdash (BI Platform)
- BigQuery (Data Warehouse)

## ELT (Extract, Load, Transform)
Extraction at this current stage is still manual. I've created a Google Sheet for my expenses. Then, I created an external data source table in BigQuery that is connected to the Google Sheet.

Using dbt, I trimmed the trailing spaces, renamed the columns, and fill the null values in subcategory then put it in `staging.stg_transactions` table. Then, I create the dimensions tables and the fact table, also using dbt.

## Data Model
![Data Model](http://www.plantuml.com/plantuml/png/XP51IWGn44NtTOgoby8ilC4in0juWAOwAST8foB9pq0Ztbq61zCn0xDzALx-hpeMI4QDAptWNQFoEInP39IM3tLW7-8ipgLgAFn5pA_8mKvyPNFm8pE9Ij-qLpY1db8EsackT6kM7MoarEKFzjgpca-vS_wYPcpeNwmtXnbPh8X3IDP9TlncmyR64aEAPu6o5oWnlwn9m18lbjlVOVlKzk8L4jPoYTrTOdgQ-F5mu2cARTFGXVgTtnzlkxmxItHKypMkFm00)

## Insights Gained Examples

### Question 1: Did our monthly gas expense increases due to Russian invasion to Ukraine?
![Gas Chart](https://gcdnb.pbrd.co/images/tjEgqfxNTEea.png?o=1)
Answer: Assume that the Russian and Ukraine war started on Feb 2022. Eventhough our family owns a gas car, our family didn't get the impacted by the gas increase from Russian and Ukraine war. We use the car every single day. I drive my wife to work and I also pick her up from work. Each drive is roughly 15 mins to 20 mins.

### Question 2: Did our monthly groceries expense increases due to inflation?
![Grocery Chart](https://gcdnb.pbrd.co/images/H8VQ5JiYrmBU.png?o=1)
Answer: Assume the inflation started going crazy on January 2022, our grocery expenses actually did NOT increase.

## Next Evolution:
- Compare with budget
