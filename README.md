# jam-app

A project for connecting local musicians.

## About this app

The goal of this project is for local musicians to find like-minded people to jam with and talk music with.

## Workflow

- Create an issue on github with the title "issue [issue-number]: [description]", explain the new issue/feature and assign and add label as appropriate
- Create new branch named "feature/issue-number"
- Work on the feature locally
- Commit as much as you need, with commit message "issue [issue number]: short description of commit"
- Push to remote once finished
- Merge to central branch on github and deal with conflicts
- Close issue

## Auto-Formatting in Visual Studio Code

-Go to ```Preferences```->```Settings``` then click on the ```{}``` on top-right which is called ```Setttings (JSON)```
-Paste the following commands:
```
{
  "editor.tabSize": 2,
  "editor.detectIndentation": true,
  "editor.formatOnSave": true,
  "files.eol": "\n",
  "html.format.enable": true,
  "html.format.wrapAttributes": "force-aligned",
 }
  
