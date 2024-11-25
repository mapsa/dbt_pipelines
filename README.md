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

## 👩‍💻 Developer Notes

### Recommended VSCode Extensions

- **[SQLTools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools)**: A popular SQL extension for VSCode.
- **[Power User for dbt](https://marketplace.visualstudio.com/items?itemName=innoverio.vscode-dbt-power-user)**: A VSCode extension for dbt users.

---