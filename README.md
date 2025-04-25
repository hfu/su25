# su25
Uploading support for the research on strategic use of geospatial information 2025

## Overview
This repository provides automation scripts for managing PMTiles files, enabling efficient copying and uploading of geospatial datasets. It is designed to support internal research and development efforts.

## Features
- **Automated Download**: Fetch PMTiles files from a remote repository using `curl`.
- **Automated Upload**: Upload PMTiles files to an AWS S3 bucket for further processing or sharing.
- **Makefile Integration**: Simplifies task execution with predefined commands.

## Usage
1. **Download PMTiles Files**:
   ```sh
   make download
   ```
   This command downloads the required PMTiles files from the URLs listed in the `urls.txt` file using `curl`.

2. **Upload PMTiles Files**:
   ```sh
   make upload
   ```
   This command uploads all `.pmtiles` files in the current directory to the configured AWS S3 bucket using `aws s3 cp`.

### Example Workflow
To download and upload PMTiles files in sequence:
```sh
make download
make upload
```

## Prerequisites
- **curl**: Ensure `curl` is installed for downloading files.
- **AWS CLI**: Configure AWS CLI with appropriate credentials for uploading files to S3.
  - Run `aws configure` to set up your AWS credentials and default region.

## Development Guidelines
- Add the URLs of the PMTiles files to the `urls.txt` file, one URL per line.
- Use the `Makefile` to automate the download and upload processes.

## AI Assistance
This repository's development has been supported by GitHub Copilot, an AI-powered coding assistant. Copilot has helped streamline the creation of scripts and documentation, enabling efficient development workflows.

## License
This project is licensed under the CC0 1.0 Universal license. See the [`LICENSE`](LICENSE) file for details.
