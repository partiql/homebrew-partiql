# Release Guide

This document outlines the process for releasing new versions of PartiQL CLI to Homebrew.

## Prerequisites
- New PartiQL CLI release published on [partiql-lang-kotlin releases](https://github.com/partiql/partiql-lang-kotlin/releases)
- Fork of this [homebrew-partiql](https://github.com/partiql/homebrew-partiql) repository

## Release Steps

1. **Create a fork under your own GitHub Account**
   - Navigate to https://github.com/partiql/homebrew-partiql
   - Click "Fork" button in the top right
   - Clone your fork locally:
     ```bash
     git clone https://github.com/YOUR_USERNAME/homebrew-partiql.git
     cd homebrew-partiql
     ```

2. **Download the new release archive**
   ```bash
   wget https://github.com/partiql/partiql-lang-kotlin/releases/download/vX.Y.Z/partiql-cli-X.Y.Z.tgz
   ```

3. **Calculate the SHA256 hash**
   ```bash
   shasum -a 256 partiql-cli-X.Y.Z.tgz
   ```

4. **Update the Homebrew formula** (`partiql-cli.rb`):
   - Update the `url` field with the new release URL
   - Update the `sha256` field with the calculated hash

   **Example Update for version 1.2.2:**
   ```ruby
   url "https://github.com/partiql/partiql-lang-kotlin/releases/download/v1.2.2/partiql-cli-1.2.2.tgz"
   sha256 "new_calculated_hash_here"
   ```

   **Commit and push changes:**
   ```bash
   git add partiql-cli.rb
   git commit -m "Update partiql-cli to vX.Y.Z"
   git push origin main
   ```

5. **Test the formula from your fork**
   ```bash
   brew tap YOUR_USERNAME/partiql
   brew install YOUR_USERNAME/partiql/partiql-cli
   which partiql
   partiql -V
   partiql --help
   partiql
   ```

6. **Create a Pull Request**
   - Navigate to your fork on GitHub
   - Click "Contribute" → "Open pull request"
   - Title: "Update partiql-cli to vX.Y.Z"
   - Description: Include release notes and testing confirmation
   - Submit the PR to the main partiql/homebrew-partiql repository

7. **Verify the release**
   ```bash
   brew uninstall partiql-cli
   brew install partiql/partiql/partiql-cli
   ```
