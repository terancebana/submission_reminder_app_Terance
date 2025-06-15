read -p "Enter the new assignment name: " new_assignment_name

app_dir=$(find . -maxdepth 1 -type d -name "submission_reminder_*" | head -n 1)

if [ -z "$app_dir" ]; then
    echo "Error: Could not find the 'submission_reminder_' application directory."
    echo "Please ensure you have run 'create_environment.sh' first in this directory."
    exit 1
fi

config_file="${app_dir}/config/config.env"

if [ ! -f "$config_file" ]; then
    echo "Error: config.env not found at '$config_file'."
    echo "Please ensure the environment was set up correctly by 'create_environment.sh'."
    exit 1
fi

sed -i 's/^ASSIGNMENT=".*"/ASSIGNMENT="'"$new_assignment_name"'"/' "$config_file"
echo "Updated ASSIGNMENT to \"$new_assignment_name\" in $config_file"

echo "Rerunning startup.sh to check non-submission status for the new assignment..."
(cd "$app_dir" && ./startup.sh)