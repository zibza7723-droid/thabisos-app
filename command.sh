#1 Creating the React App
npx create-react-app thabisos-app
cd thabisos-app

#2 Initial commit and creating GitHub repository
git add .
git commit -m "Initial commit"
gh repo create thabisos-app --public --source=. --push
#3 Switching to feature branch
git checkout -b update_logo
#4 Replacing existing logo 
#Went to App.js and replaced the contents of <img src=""> with the new image link
#5 Replacing existing link
#Went to App.js and replaced the contents of <a href=""> with the new link
#6Commiting changes and pushing to GitHub
git add .
git commit -m "Updated logo link to Propeller Aero"
git push -u origin update_logo
#7 Creating a pull request via GitHub CLI
gh pr create --title "Updated logo and link to Propeller Aero" --body "Updates the app logo and link to Propeller Aero"
#8 Merging pull request via GitHub CLI
gh pr merge --merge --delete-branch