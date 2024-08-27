
# Introduction to Git

Git is a distributed version control system that enables multiple people to work on a project simultaneously without overwriting each other’s work. It's one of the most essential tools for developers, allowing teams to collaborate efficiently, track changes, and maintain a history of their work.

Git tracks the history of your source code, allowing you to easily go back to previous versions, collaborate with other developers, and manage multiple versions of a project.

## Why Use Git?

- **Collaboration**: Work with others on the same project without conflicts.
- **Version Control**: Track changes and revert to previous versions when necessary.
- **Branching**: Experiment with new features in isolated branches without affecting the main codebase.
- **Backup**: Every clone of a repository is a full backup of the project.

## Key Concepts

- **Repository (Repo)**: A Git repository is a directory that tracks changes to your files. Repos can be local (on your computer) or remote (on GitHub, GitLab, etc.).
- **Commit**: A commit represents a snapshot of your project at a specific point in time.
- **Branch**: A branch is an independent line of development in a repository. Developers create new branches to work on features, fixes, etc.
- **Merge**: Merging integrates changes from one branch into another.
- **Remote**: A remote is a version of your repository hosted on another server. You can push your changes to the remote repository and pull changes from it.

## Basic Git Commands

Here are some essential Git commands that every developer should know:

- `git init`: Initializes a new Git repository.
- `git clone <repository>`: Clones an existing repository from a remote server.
- `git status`: Displays the state of the working directory and staging area.
- `git add <file>`: Adds a file to the staging area, preparing it for a commit.
- `git commit -m "message"`: Commits the staged changes with a descriptive message.
- `git push`: Pushes your local commits to a remote repository.
- `git pull`: Fetches and merges changes from a remote repository to your local repository.
- `git branch`: Lists all branches in your repository.
- `git checkout <branch>`: Switches to a different branch.
- `git merge <branch>`: Merges the specified branch into the current branch.

## Activities

The first activities (1-5) are an introduction you can skip those if you're already familiar wit GIT. 6-8 Are mandatory

### Activity 1: Initialize a Git Repository
- **Objective**: Create a new directory, initialize it as a Git repository, and make your first commit.
- **Commands**: `git init`, `git add`, `git commit`

### Activity 2: Create and Switch Branches
- **Objective**: Create a new branch for a feature and switch to it.
- **Commands**: `git branch`, `git checkout`

### Activity 3: Stage and Commit Changes
- **Objective**: Make changes to a file, stage the changes, and commit them with a meaningful message.
- **Commands**: `git add`, `git commit`

### Activity 4: Merge Branches
- **Objective**: Merge your feature branch back into the main branch.
- **Commands**: `git checkout`, `git merge`

### Activity 5: Push to a Remote Repository
- **Objective**: Push your local changes to a remote repository.
- **Commands**: `git remote add`, `git push`

### Activity 6: Clone a Repository
- **Objective**: Clone the class [repository](https://github.com/makeitrealcamp/top-fs-dev-proinnovate-ii-2024)  to your local machine.
- **Commands**: `git clone`

### Activity 7: Edit a Profile File in a Repository
- **Objective**: Search for the `profiles/example-student-profile.md` file in your repository and edit it by adding your own information.
- **Commands**: `git add`, `git commit`, `git push`

### Activity 8: Finish Online Git Exercises
- **Objective**: Complete all the activities in the following online Git exercises:
  - [Git Exercises](https://gitexercises.fracz.com/)
  - [Learn Git Branching](https://learngitbranching.js.org/)
