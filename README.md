## dbt models for `jaffle_shop`

`jaffle_shop` is a fictional ecommerce store.
This [dbt](https://www.getdbt.com/) project is for demonstrations and tutorials.

### Running this project
To play with the project yourself:
1. Install dbt using [these instructions](https://dbt.readme.io/docs/installation).
2. Clone this repository using:
```bash
$ git clone git@github.com:clrcrl/jaffle_shop.git
```
If you need extra help, see [these instructions](https://docs.getdbt.com/docs/use-an-existing-project).

3. Set up a profile called `jaffle_shop` using [these instructions](https://docs.getdbt.com/docs/configure-your-profile). You can run this in a new schema in your existing data warehouse, or even setup a local postgres database to run this.

4. Change into the `jaffle_shop` directory from the command line:
```bash
$ cd jaffle_shop
```
5. Load the CSVs with the demo data set. This materializes the CSVs as tables in your target schema.
```bash
$ dbt seed
```
6. Run the models:
```bash
$ dbt run
```
7. Generate documentation for the project:
```bash
$ dbt docs generate
```
8. View the documentation for the project:
```bash
$ dbt docs serve
```

### What is a jaffle?
A jaffle is a toasted sandwich with crimped, sealed edges. Invented in Bondi in 1949, the humble jaffle is an Australian classic. The sealed edges allow jaffle-eaters to enjoy liquid fillings inside the sandwich, which reach temperatures close to the core of the earth during cooking. Often consumed at home after a night out, the most classic filling is tinned spaghetti, while my personal favourite is leftover beef stew with melted cheese.

---
For more information on dbt:
- Read the [introduction to dbt](https://dbt.readme.io/docs/introduction).
- Read the [dbt viewpoint](https://dbt.readme.io/docs/viewpoint).
- Join the [chat](http://ac-slackin.herokuapp.com/) on Slack for live questions and support.
---
