# GitHub-API (for Pharo)

## Introduction

This project is a **GitHub API Wrapper** for [Pharo](http://www.pharo.rog) to easily access informations from GitHub right from your Pharo image.

### Loading the project

You can load the **GitHub-API Wrapper** easily into your Pharo image by using the follwing load expression:

```Smalltalk
Metacello new 
	repository: 'github://astares/GitHub-API/repository';
	baseline: 'GitHubAPI';
	load.
```

## Usage

### Accessing GitHub users

You can access GitHub users in two ways, either using the class **GitHubUser**

```Smalltalk
GitHubUser named: 'astares'
```

or by asking the **GitHub** class:

```Smalltalk
GitHub userNamed: 'astares'
```

### Working with a GitHub user

#### Retrieving the Avatar

If you have a user you can easily access the Avatar as a regular **Form** instance in Pharo:

```Smalltalk
(GitHub userNamed: 'astares') avatar
```

![Astares User Avatar](https://avatars.githubusercontent.com/u/5980033?v=3)

#### Check the user type

You can check if the user is an organization or regular user:

```Smalltalk
(GitHub userNamed: 'pharo-project') isOrganization
```

which in the particular case of our example returns **true** as the [Pharo-project organization has an account on GitHub](https://github.com/pharo-project).


## Project Structure

### General packages 

Package name    | Description
--------------- | ------------------
GitHub-API-Core | The core package

### Test packages

Package name            | Description
----------------------- | ---------------------------
GitHub-API-Test-Core    | Tests for the core package

## License

(c) 2016 by Dipl.-Inf. T.Bergmann, Astares

Code is released and published with **MIT License** when used for Pharo projects.