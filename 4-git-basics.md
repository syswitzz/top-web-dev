git is a version control system
git records difference in file and folders and keep a historical record of each save
git - works in local machine

github is a cloud-based platform where you can store, share, and work together with others to write code.
github - remote storage

distributed VCS(version control system) - everyone has their own clone of a repository including its history
centralized VCS - everyone has a snapshot of the repostory but the history is still in server so if server goes down noone can collaborate and the history is  lost

difference between git and other VCS is the way git thinks about its data
other VCS system store information as file-based-changes
Git thinks of its data more like a series of snapshots of a miniature filesystem. basically takes a picture of what all your files look like at that moment and stores a reference to that snapshot

Everything in Git is checksummed before it is stored and is then referred to by that checksum
The mechanism that Git uses for this checksumming is called a SHA-1 hash
Git stores everything in its database not by file name but by the hash value of its contents

three main sections of a Git project: the working tree, the staging area, and the Git directory.
The working tree is a single checkout of one version of the project
The staging area is a file, generally contained in your Git directory, that stores information about what will go into your next commit
The Git directory is where Git stores the metadata and object database for your project. it is what is copied when you clone a repository 


The basic Git workflow goes something like this:
    You modify files in your working tree.
    You selectively stage just those changes you want to be part of your next commit, which adds only those changes to the staging area.
    You do a commit, which takes the files as they are in the staging area and stores that snapshot permanently to your Git directory.

If a particular version of a file is in the Git directory, it’s considered committed. If it has been modified and was added to the staging area, it is staged. And if it was changed since it was checked out but has not been staged, it is modified.