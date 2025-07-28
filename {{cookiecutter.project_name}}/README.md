# Python Start Project Template

A **cookiecutter template** for creating Python projects with a standardized structure and development setup.

## What is This?

This is a **cookiecutter template** that generates Python projects with:
- Modular project structure
- Testing framework setup
- Environment management with conda
- Makefile for common tasks
- Jupyter notebook support

## How to Use This Template

### Prerequisites

- Python 3.8 or higher
- cookiecutter installed: `pip install cookiecutter`

### Creating a New Project

1. **Install cookiecutter (if not already installed):**
   ```bash
   pip install cookiecutter
   ```

2. **Generate a new project from this template:**
   ```bash
   # From the parent directory of this template
   python -m cookiecutter python_start_project
   
   # Or using the full path
   python -m cookiecutter /path/to/python_start_project
   
   # Or using a GitHub repository URL
   python -m cookiecutter https://github.com/estiveljr/python_start_project
   ```

3. **Follow the prompts:**
   - The template will ask for a project name (defaults to "python_project")
   - A new directory will be created with your project name

4. **Navigate to your new project:**
   ```bash
   cd python_project  # or whatever name you chose
   ```

## Template Structure

This template contains the following structure that will be generated:

```
{{cookiecutter.project_name}}/
├── environment.yml          # Conda environment configuration
├── main.py                  # Main application entry point
├── Makefile                 # Build and development tasks
├── modules/                 # Python modules
│   ├── __init__.py
│   └── modules.py
├── models/                  # Directory for models and data analysis
│   └── notebook.ipynb       # Jupyter notebook for models and/or data analysis
├── README.md                # This file
└── tests/                   # Test files
    └── test_mymod.py
```

## Template Configuration

The `cookiecutter.json` file defines the template variables:

```json
{
    "project_name": "python_project"
}
```

## Customizing the Template

To modify this template:

1. Edit the files in the `{{cookiecutter.project_name}}/` directory
2. Update `cookiecutter.json` to add more variables
3. Test your changes by running `cookiecutter .` from the template directory

## Generated Project Setup

After generating a project from this template:

1. **Create and activate the conda environment:**
   ```bash
   conda env create -f environment.yml
   conda activate {{cookiecutter.project_name}}
   ```

2. **Run the main application:**
   ```bash
   python main.py
   ```

3. **Use the Makefile for common tasks:**
   ```bash
   make install    # Install dependencies
   make test       # Run tests
   make clean      # Clean up
   make lint       # Run linting
   ```
