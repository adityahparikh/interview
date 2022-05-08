# README

## Assignment statement:
We need to design a system allowing verified users to upload sensitive data in the form of large
files. To this end, we'd want to do the following:
1. As a user, I should be able to login on the platform using email address and password.
2. As a logged-in user, I should be able to see a list of all the files that I have uploaded.
This list should be private and not visible to other users on the platform or to external
parties.
3. As a logged-in user, I should be able to delete an already uploaded file.
4. As a logged-in user, I should be able to upload a new file while specifying some
additional info such as a title, description, etc. Once uploaded, the platform should
figure out the file type and optionally compress it for storage. The file size could be
anything upto 1GB.
5. As a logged-in user, I should be able to share one of my files publicly using a tiny URL
obtained from the system.

## Tech stack requirements
- Ruby-2.6.5
- Rails-6.1.5

Steps required to setup the application.

- Clone the repository ```git clone https://github.com/adityahparikh/interview.git``` and go to the folder ```cd interview```
- Run ```bundle install``` and ```yarn install```
- Run ```rake db:create db:migrate```
-  Start server ```rails s```
- Go to https://localhost:3000