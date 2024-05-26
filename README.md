# FFUF Unique Size Filter Script for Fuzzing

This repository contains a bash script designed to filter out duplicate sizes from the output of the `ffuf` tool. The script reads each line of input, extracts the size information, and prints only unique sizes, which is useful for fuzzing tasks.

## Usage

The script processes the output of `ffuf` to ensure that only unique sizes are displayed. This can be particularly useful when performing fuzzing tasks and you want to filter out redundant results.

### Prerequisites

- `ffuf` installed
- A wordlist file for fuzzing (e.g., `fuzz.txt`)

### Installation

1. Clone this repository to your local machine:
   ```sh
   git clone https://github.com/rayansec/uniffuf.git
### Usage
ffuf -w fuzz.txt -u https://website.com/FUZZ | uniffuf
