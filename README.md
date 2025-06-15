# submission_reminder_app_Terance

This repository contains shell scripts for setting up and managing a student submission reminder application.

## Application Overview

The application reminds students about upcoming assignment deadlines. It consists of several components managed within a specific directory structure.

## How to Run the Application

Follow these steps to set up and run the submission reminder application:

1.  **Clone the Repository:**
    First, clone this GitHub repository to your local machine:
    ```bash
    git clone [https://github.com/YourGitHubUsername/submission_reminder_app_YourGitHubUsername.git](https://github.com/YourGitHubUsername/submission_reminder_app_YourGitHubUsername.git)
    cd submission_reminder_app_YourGitHubUsername
    ```
    *Replace `YourGitHubUsername` with your actual GitHub username.*

2.  **Set Up the Application Environment:**
    Run the `create_environment.sh` script to set up the necessary directories and files. You will be prompted to enter your name.
    ```bash
    ./create_environment.sh
    ```
    * **Important:** After running this script, navigate into the newly created `submission_reminder_YOURNAME/` directory. You *must* manually populate the `reminder.sh`, `functions.sh`, and `config.env` files with the actual content provided in the assignment PDF. Also, add at least 5 more student records to `submissions.txt` following the existing format.

3.  **Run the Reminder Application:**
    After the environment is set up and files are populated, you can test the application by running `startup.sh` from within the created application directory:
    ```bash
    cd submission_reminder_YOURNAME/ # Replace YOURNAME with the name you entered
    ./startup.sh
    ```

4.  **Update the Assignment Name:**
    To change the assignment name that the application checks, return to the project root directory (`submission_reminder_app_Terance/`) and run the `copilot_shell_script.sh`:
    ```bash
    cd ../ # Go back to the project root if you are in the app directory
    ./copilot_shell_script.sh
    ```
    You will be prompted to enter the new assignment name. After entering it, the script will automatically re-run `startup.sh` with the updated configuration.

## Directory Structure Created by `create_environment.sh`