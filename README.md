# Data pipeline demo using dbt 

**An introduction to building data pipelines using dbt, with examples of data cleaning, validation, and aggregation.**  

---

## ⚙️ Why Switch to dbt?

We transitioned from **Pandas** and **Polars** to **dbt** to address key challenges and take advantage of its robust features:

### Key Advantages
- **Stability**: dbt ensures reliable data transformations.
- **Data Quality**: Built-in testing and validation ensure high data integrity throughout the pipeline.
- **SQL-Centric**: Focuses on SQL, simplifying complex transformations while maintaining clarity and efficiency.

### Additional Benefits
- **Data Lineage**: dbt automatically visualizes dependencies between models, making it easier to trace and debug data flows.
- **Governance**: Enhanced governance features help maintain structured and compliant pipelines, with clear documentation of every step.
- **Parallel Execution**: dbt supports parallel model execution, significantly improving pipeline performance for larger datasets.
- **Scalability**: Modular design makes it easier to manage and expand pipelines as data requirements grow.
- **Collaboration**: Automatically generated documentation promotes team alignment and knowledge sharing.
- **Modern Data Stack Integration**: Seamlessly integrates with leading tools, offering a standardized framework for managing pipelines.


## 🚀 Overview  

This repository is designed for data scientists looking to get hands-on experience with **dbt (data build tool)**. It walks you through:  
- Loading your data 
- Creating **modular and reusable data models**.  
- Running **tests and validation checks**.
- Creating simple and reusable **macros**
- Performing **aggregations** to prepare data for analysis.
- How to use the **Power User for dbt** extension

---

## 📂 Repository Structure  

```plaintext
dbt-pipelines/  
├── models/               # SQL models  
│   ├── staging/          # Raw data transformation  
│   ├── marts/            # Aggregations and final models  
├── seeds/                # Sample CSV data files  
├── dbt_project.yml       # dbt configuration file  
├── README.md             # This file!  
```

## 🛠️ Getting Started

### 1. Set Up a Virtual Environment

First, install `uv` to create a virtual environment:

```bash
pip install uv
```

Then, install the project dependencies:

```bash
uv pip install -r requirements.txt
```

### 2. Set Up DBT

Initialize the DBT project:

```bash
uv run dbt init dbt_pipelines
```

When prompted, select **DuckDB** as the database (option 1).

You can keep the profiles file in the default location I recommend moving it to the `dbt_pipelines` folder to share it with your collaborators.

Next, move your `profiles.yml` file to the `dbt_pipelines` folder:

```bash
mv ~/.dbt/profiles.yml dbt_pipelines
```

---

## 📦 Load your data

While dbt typically requires a database as its starting point, for this demo, we’ll use CSV files as our data source. To load this data into the database, we’ll use the `dbt seed` command, which is a simple way to populate a database.

__Note:__  The `dbt seed` command is designed for loading small, static datasets, such as configuration tables or test data. It is not intended for frequently changing or dynamic data.

The dataset used in this demo is sourced from the dbt demo repository, [Jaffle Shop](https://github.com/dbt-labs/jaffle-shop/tree/main/jaffle-data), a commonly used example for dbt projects.

Check if the data was loaded:

```bash
dbt seed
duckdb dev.duckdb "SELECT * from customers"
```

## 📊 Data Models

More commands in the [Syntax Overview section](https://docs.getdbt.com/reference/node-selection/syntax).
| Command                         | Description                                                    |
|---------------------------------|----------------------------------------------------------------|
| `dbt run`                       | Run all models in the project.                                |
| `dbt run --select model_name`   | Run a specific model (e.g., `staging__customers`).            |
| `dbt build`                     | Build models, run tests, and execute snapshots.               |
| `dbt test`                      | Run tests to validate data quality.                           |
| `dbt docs generate`             | Generate project documentation with a lineage graph.          |
| `dbt docs serve`                | Serve the documentation locally for interactive exploration.  |


## 👩‍💻 Developer Notes

### Recommended VSCode Extensions

- **[SQLTools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools)**: A popular SQL extension for VSCode.
- **[Power User for dbt](https://marketplace.visualstudio.com/items?itemName=innoverio.vscode-dbt-power-user)**: A VSCode extension for dbt users.

---