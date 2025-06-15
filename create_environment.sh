read -p "Enter your name: " yourName

app_dir="submission_reminder_${yourName}"
mkdir -p "$app_dir"
echo "Created main application directory: $app_dir"

mkdir -p "$app_dir/app"
mkdir -p "$app_dir/modules"
mkdir -p "$app_dir/assets"
mkdir -p "$app_dir/config"
echo "Created subdirectories: app, modules, assets, config"

cat << 'EOF' > "$app_dir/app/reminder.sh"
#!/bin/bash
echo "This is the placeholder content for reminder.sh."
EOF
echo "Created and populated $app_dir/app/reminder.sh"

cat << 'EOF' > "$app_dir/modules/functions.sh"
#!/bin/bash
echo "This is the placeholder content for functions.sh."
EOF
echo "Created and populated $app_dir/modules/functions.sh"

cat << 'EOF' > "$app_dir/assets/submissions.txt"
StudentA,Initial_Assignment,Submitted
StudentB,Initial_Assignment,Pending
StudentC,Initial_Assignment,Submitted
StudentD,Initial_Assignment,Pending
StudentE,Initial_Assignment,Submitted
StudentF,Initial_Assignment,Pending
StudentG,Initial_Assignment,Submitted
StudentH,Initial_Assignment,Pending
StudentI,Initial_Assignment,Submitted
StudentJ,Initial_Assignment,Pending
EOF
echo "Created and populated $app_dir/assets/submissions.txt (with 5+ added records)"

cat << 'EOF' > "$app_dir/config/config.env"
ASSIGNMENT="Initial_Assignment"
EOF
echo "Created and populated $app_dir/config/config.env"

cat << 'EOF' > "$app_dir/startup.sh"
#!/bin/bash
source ./config/config.env

echo "Starting the reminder application for assignment: $ASSIGNMENT"

./app/reminder.sh "$ASSIGNMENT"
EOF
echo "Created $app_dir/startup.sh"

echo "Setting executable permissions for all .sh files..."
chmod +x "$app_dir"/app/*.sh
chmod +x "$app_dir"/modules/*.sh
chmod +x "$app_dir"/*.sh
echo "Permissions updated."

echo "Environment setup complete for submission_reminder_${yourName}!"
echo "You can now navigate into '$app_dir' and run './startup.sh' to test the application."