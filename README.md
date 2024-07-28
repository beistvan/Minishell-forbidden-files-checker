# Minishell-forbidden-functions-checker
Minishell forbidden functions checker (Subject v7.1)

## Run
`./forbidden_functions_minishell.sh`

## Download and Run the Bash Script

This script checks for forbidden functions in the Minishell project.

### Steps to Download and Run

1. **Download the script using `curl`:**

    ```sh
    curl -O https://raw.githubusercontent.com/beistvan/Minishell-forbidden-functions-checker/main/forbidden_functions_minishell.sh
    ```

2. **Make the script executable:**

    ```sh
    chmod +x forbidden_functions_minishell.sh
    ```

3. **Run the script:**

    ```sh
    ./forbidden_functions_minishell.sh
    ```

### Example Output

### No forbidden functions detected
Forbidden functions checker for minishell (Subject v7.1)<br>
✅ OK: No forbidden functions found. ✅

### Forbidden functions detected
Forbidden functions checker for minishell (Subject v7.1)<br>
❌Forbidden functions detected❌:<br>
calloc<br>
strdup
