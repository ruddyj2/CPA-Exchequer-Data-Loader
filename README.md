# CPA Exchequer Data Loader

<<<<<<< HEAD
## Overview

The CPA Exchequer Data Loader is a Python-based tool designed to automate the execution of various data extraction scripts for the CPA Exchequer system. The tool sequentially runs a series of Python scripts and logs their execution status and output.

## Project Structure

======

### Prerequisites

- Python 3.x
- Required Python packages (if any)

### Installation

1. Clone the repository to your local machine.
2. Navigate to the project directory.

### Usage

1. Ensure all the necessary Python scripts are located in the `TableScripts` directory.
2. Move the appropriate Py Files to the root of the program directory to run the extract for that particular table.
3. If needed copy all scripts to extract all tables.
4. Run the main script (RunExchequerExtraction.py) to execute all data extraction scripts:

```sh
python RunExchequerExtraction.py
