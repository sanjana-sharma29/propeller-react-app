# 1️⃣ Create React App
npx create-react-app propeller-react-app
cd propeller-react-app

# 2️⃣ Initialize Git
git init
git add .
git commit -m "Initial commit: Create React App"

# 3️⃣ Create GitHub repo and push
gh repo create propeller-react-app --public --source=. --remote=origin --push

# 4️⃣ Create a new branch for updating logo
git checkout -b update_logo

# 5️⃣ Add clean propeller logo and update App.js
# Download propeller.svg from https://www.svgrepo.com/svg/19965/propeller
# Save it in the public folder
git add public/propeller.svg src/App.js
git commit -m "Add clean propeller logo and update App.js link"
git push origin update_logo

# 6️⃣ Create a Pull Request from update_logo to main
gh pr create --base main --head update_logo --title "Update logo and link" --body "Added clean propeller SVG logo and updated link"

# 7️⃣ Merge the Pull Request and delete the branch
gh pr merge --merge --delete-branch

# 8️⃣ Final repository URL
# REPO_URL https://github.com/sanjana-sharma29/propeller-react-app
