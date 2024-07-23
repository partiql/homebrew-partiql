[![License](https://img.shields.io/hexpm/l/plug.svg)](https://github.com/partiql/homebrew-partiql/blob/main/LICENSE)
[![Homebrew](https://img.shields.io/badge/Homebrew-Install-brightgreen.svg)](https://github.com/partiql/homebrew-partiql)
## Homebrew PartiQL

Welcome to the official Homebrew Tap for PartiQL applications.

This repository is managed by the [PartiQL](https://github.com/partiql) team and contains Homebrew formulas for easy installation and management of PartiQL owned applications on macOS and Linux systems.

### Installation
To tap this repository and make the formulas available on your system, run: 

```bash
brew tap partiql/partiql 
```

### Usage
We currently publish one formula, `partiql-cli`. To install, run:
```
brew install partiql-cli
```

```bash
brew install partiql-tool   # Replace 'partiql-tool' with the actual formula name e.g. 'partiql-cli'
```

### Available Formulas
This tap includes the following Homebrew formulas:

+ `partiql-cli`: [partiql-cli](https://github.com/partiql/partiql-lang-kotlin/wiki/Command-Line-Tutorial) is an interactive shell, or Read Evaluate Print Loop (REPL), that allows users to write and evaluate PartiQL queries. 

    Install `partiql-cli` using the following Homebrew command:
    ```bash
    brew install partiql-cli
    ```
    This command fetches and installs the latest version of `partiql-cli`, setting up all necessary dependencies on your macOS or Linux system.

    After installation, you can start using command:
    ```bash
    partiql
    ```
    For a comprehensive list of options and more detailed help, you can use the help command:
    ```
    partiql --help
    ```
    This will display usage information, command line options and guidance to help you get started.

### Uninstallation
To untap this repository and delete the formulas from your system, run: 

```bash
brew untap partiql/partiql 
```

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This project is licensed under the Apache-2.0 License.

