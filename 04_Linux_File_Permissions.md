# File Permissions in Linux

## Project description

I have to change permissions to keep the system more secure. As stated by the organization, some of the files and directories don’t meet the requirements. I have to apply some measures in the projects directory for them to be as they must. I’ll proceed with the next commands and checking the actual permissions in order to get the requested things:

## Check file and directory details

I proceed using the command: `ls -la`

With the command `ls`, we can list the files and directories inside the folder projects. The `-la` parameters will help to know the permissions and owners of the corresponding files.

`-l`: Specifies we want a long listing so we can check permissions and more details on everything.

`-a`: Checks for hidden files so we can also interact with them.

<img width="683" height="177" alt="01_check_file_and_directory_details" src="https://github.com/user-attachments/assets/715411db-8f06-4263-aa19-0396b0400e7c" />

Inside the directory there are 4 files, 1 directory and 1 hidden file as stated in its name by the `.`

## Describe the permissions string

Here’s a breakthrough of the picture:

- The first character shows if we’re dealing with a directory or a file, showing that directories will have the d letter and files a hyphen instead.
- Then we have the specified permissions divided into 3 groups of 3 letters each or hyphens in their position. Letters correspond in the consecutive order to read (r), write (w), and execute (x). In case there’s a hyphen (-) instead of a letter, it means that kind of permission is not given:
  - The first 3 characters indicate the permissions of the user.
  - The second 3 characters indicate the permissions of the group.
  - The last 3 characters indicate the permissions of all other users who aren’t the user nor the group.
- Once we get to the next column besides the numbers, we have the name of the user who owns the file.
- The next one is the group who owns the file.

## Change file permissions

The organization required that all the other users besides the owner and group had the write access revoked. Using the previous command, I removed the write access by using:

`chmod o-w project_k.txt`

`chmod` is a command on Linux to deal with permissions about files and directories. The parameter in this case was `o-w`, being o for other users and `-w` indicated to remove the write access. The `project_k.txt` was the parameter to select the file.

<img width="682" height="196" alt="02_change_file_permissions" src="https://github.com/user-attachments/assets/4af98411-a658-4cee-a3ae-11e74182ebf5" />

To ensure this was successful, I checked again the details on permissions. We can observe now that other users won’t have write access to that file.

## Change file permissions on a hidden file

The hidden file `.project_x.txt` as noted by the . has been archived, and the user as well as the group shouldn’t have write access anymore. But they both should be able to read it.

With `chmod` we can use the parameter `ug-w` to remove both the write access of the user and the group. In this case, as the user can already read the file, we should only add read access to the group with the parameter `g+r`. It’s separated by a , so we can add them following the next one. What follows is the name of the hidden file.

<img width="682" height="196" alt="03_change_file_permissions_on_hidden_file" src="https://github.com/user-attachments/assets/8d41e753-c479-4e55-87d7-3d0524bcf0a5" />

I check back the details to ensure everything went as expected, so we can confirm `.project_x.txt` has now the right permissions.

## Change directory permissions

To end on this, they want that only the user can access the drafts directory and its files. So I’ll proceed to revoke execute access for the group as other users already can’t do anything with it.

<img width="682" height="196" alt="04_change_directory_permissions" src="https://github.com/user-attachments/assets/a7e94eaa-8872-42cd-b65a-e7a7a0fbdbca" />

One more check to ensure all the details are correct.

## Summary

The organization wanted me to change the access to certain files and one directory. I had to check the permissions with the command: `ls -la` in order to know how everything was configured. Once I had done this, I proceeded to change the corresponding permissions with the use of the `chmod` command and the necessary parameters. 

