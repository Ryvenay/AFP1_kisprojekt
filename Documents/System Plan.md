# 1. Overview 
## 1.1 About this document
Our team accepted a commission to make a fully functional website for a team of music enthusiasts, where they can post articles about music. This document describes the project in detail, including the website's functionality, the team members, their roles and responsibilities, technologies we use in this project, development plans, etc. 

## 1.2 Project Overview:
  - We are responsible for a website, that shows articles about concerts, album reviews and interviews
  - Develop a platform where editors can share their opinion about what they have seen or heard
  - Searching and following trending playlists from different and popular platforms like Spotify, Youtube etc.
  - Looking for the latest and following concerts in the area
  - Reviewing the music industries' professional trends
  - Official album description
  - Sharing and discussing music blogs from all over the world

# 2. Project plan
## 2.1 Roles and responsibilities
### Backend developer:
Backend developers are responsible for developing the server-side code, and they create the website's functions, and the data structures. They use PHP, HTML, SQL codes.

### Frontend developer:
Frontend developers implement the visual elements that users see and interact with in the website. They make sure that users have no trouble navigating the website. They use HTML, CSS, JavaScript codes.

### Database developer:
Database developers are responsible for the storage and management of the data we use in this website, and they create the models that we apply for storing data. 

## 2.2 Team members 
- Nyeste Réka \- Frontend developer
- Nagy Zoltán \- Backend developer
- Fügedi Csaba \- Database developer
- Csanádi Balázs Tóbiás \- Backend developer, team leader

- Dombi Tibor Dávid - Senior developer, supervisor
- Nagy Martin - Supervisor
- Balog Balázs - Supervisor

## 2.3 Project schedule
- 2020/09/29  System plan document 
- 2020/09/30  Development start
- 2020/10/??  Development finish
- 2020/10/??  Test start
- 2020/10/??  Test finish
- 2020/10/??  Review, project finish

## 2.4 Milestones
- 2020/09/08  The team formed.
- 2020/09/15  Requirement specification and functional specification has been finished.
- 2020/09/28  The business model has been created.

# 3. Business model
![Bus Model](https://github.com/Ryvenay/AFP1_kisprojekt/blob/master/Documents/Figures/Business_Model v2.png)

# 4. Requirements
## 4.1 Functional Requirements
Using ordinary website elements and user managment system:
  - Registration panel
  - Logging in and out
  - Possibility for password changing
  - Profile details

Functions for article management:
  - **Article creation page:** Editors should be able to create new articles and post them to the website.
  - **Article editing page:** Already finished articles should be editable by the website's editors and also they should be able to delete them.
  - **Listing articles and navigation:** Visitors and editors should be able to see and filter through the articles that are posted in the website. 

## 4.2 Non-funtional Requirements
The site must (be):
  - Easy to use
  - User-friendly
  - Navigate to the corresponding page
  - Show error messages in different and consistent location and style
  - Have control panels, button (some of them hidden from the general users)
  - Have permission system
  - Fit the EU Privacy Policy requirements

Supported browsers:
  - Mozilla Firefox
  - Microsoft Edge
  - Google Chrome

## 4.3 Resources:
  - Fully functional database with tables and relations
  - Secure connection
  - Intuitive/easy to use interface
  - Creative front-end palette
  - Based on PHP language and the user's demands

# 5. Functions
## 5.1 Participants
  - User
  - Editor

## 5.2 Use cases and scenarios
### User:
 - Able to see the websites front page
 - Able to sort by categories
 - Can open and view articles in any category
 - Can create, edit and delete their own article
 - Can view and edit their profile details

 ### Editor:
- All of the previous cases
- Can create, edit, delete articles
- Can view and edit their profile details
- Can log in to their editor account

## 5.3 Menu hierarchy

# 6. Physical environments
- This application was made for web platform and should be used with the supported web browsers
- Softwares and external systems we're working with:
    - Ragic Database System Manager
    - Sublime Text Editor (for PHP)
    - Gitkraken/Github for documentation
    - Trello
    - Visual Studio
    - Spotify
    - Discord
- Hardware and Network:
    - General hardware and network requirements
- Development tools:
    - Visual Studio
    - Visual Studio Code
    - Sublime Text Editor
    - Ragic Database System Manager
- Framework:
    - .Net
    - Bootstrap

# 7. Architecture plan
## 7.1 Backend
 The system needs a database system, in this case the team uses a Visual Studio based client, where we store the user's datas and the articles.
Web Client:
The client is based on HTML, CSS and PHP technologies, which helps the client to be stable. In the other hand we can create creative and spectacular content for our users. 

## 7.2 Frontend
The frontednd uses CSS, HTML codes and using Bootstrap as its framework, which helps to create a modern looking website and works well cross-platform.
- Layout plan: 
    - Home page: 
        - Title: This is our website's name in middle. We haven't chosen it yet.
        - Navbar: Functions of the page: Login, Albums, Interviews, Reviews, Pictures, Admin button (this is hidden from the users, who don't have the right permission). 
        - Topic: Under the navbar there is a slidebar with the newest posts about musicians, concerts, bands, clips.
        - Posts: Older posts with a picture.
        - Licences, laws, copyright: A small description.
### 7.2.1 Home page
![layoutEdited](https://github.com/Ryvenay/AFP1_kisprojekt/blob/master/Documents/Figures/layoutEdited.png)

# 8. Database plan

# 9. Implementation plan
Web:
 As a website we use technologies like HTML, CSS and PHP. They're saved separately as files and linked to each other for the best 
 transparency. It helps us to isolate the Backend and Frontend parts.
# 10. Test plan