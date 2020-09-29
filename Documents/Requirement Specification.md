# Requirement Specification



# 1. Current State  
Our team consists of several music enthusiasts that are eager to listen to new music every day, and share our thoughts on it. We like to discuss everything about music - albums, concerts, musicians, record labels, and so on. We've been visiting and using many online forums and blogs, but none of them were able to satisfy our needs, so we have to make a move and create an environment where we can share our opinions without any limitations.

# 2. Scope
The goal of this project is to create a fully functional music blog, where members can post album reviews, concert experiences, interviews and users can view them.  Aside from the main function, this page has to have a user management system, which include registering new users, logging them in and out, changing password and profile details.

-**Home page:** This is the main page of the website. In this page users can see the latest featured blog posts.

-**Review page:** Here users can see posts only about album reviews.

-**Concerts page:** Users can see concert reviews.

-**Interviews page:** Users can see interviews.

-**Register:** On this page users can register an account.

-**Log in:** This is the page where users can log in to their account

-**Profile:** Users can view their profile information, like username, full name, date of birth, email address, and they can change them, including their password.

# 3. Standards & Laws
## General Standards:
Application must meet the following general standards:

1.  Must be easily understandable and easy to use for the users.
2.  Must function in a logical manner for the users.
3.  Must use the industry best practices.
4.  Must use styles that are consistent throughout the application and within the associated Web site, including:

-   Error messages must appear in a consistent location and style.
-   Form controls that are not available must be hidden.


## Browser requirements:
-   Mozilla Firefox
-   Microsoft Edge
-   Google Chrome
-   Internet Explorer


## Privacy and Cookie Policy
Obligation to EU privacy laws, it is our responsibility to inform users about how we handle their personal data. For this reason we will provide a Privacy Policy and a Cookie Policy for users to read. In the functional specification it will be explained in details.

# 4. Current business model
The team is currently using multiple different websites for music discussions and we've started to develop our own audience. Right now, we aren't able to work very well as a team because of not having our own website where we can manage the content we share. Furthermore, our content is hard to find for our followers, often times lost in the vast amount of posts being published on these websites. Needless to say that this is far from optimal for us and for our audience.

# 5. Requested Business model
Although the members of our team are creating content purely as a hobby, we'd like to improve on our online presence, and work towards being professionals. This requires a new website for us, where we're able to do a lot more than we can right now. Our vision is the following:

- Functions that allow members to post, edit and delete content.
- Visitors can view the posts, and search through them.
- Easy to use, intuitive interface and navigation.
- Visitors must have an internet connection in order to connect to the website and use it without any disruption.
- Fully functional database with secure connection.
- Visitors don't have to be registered to view the contents shared by our members.

# 6. Request List

| Modul | ID | Name | V | Description |
|--------|---------|-----------|-----------|-------------|
|Database|D1|Name|0.1|Database, tables, relations|
|Authorization|A1|Log-in|0.1|User can log-in to their account|
|Authorization|A2|Register|0.1|User can register a new account|
|Authorization|A3|Log-out|0.1|User can log out from their account|
Authorization|A4|Change pw|0.1|User can change their password|
|Posts|P1|List|0.1| Users can list posts|
|Posts|P2|Search|0.1|Users can search posts|
|Posts|P3|Post|0.1|Certain users can create posts |
|Posts|P4|Edit|0.1|Certain users can edit posts |
|Posts|P5|Delete|0.1|Certain users can delete posts |
|Profile|PR1|Profile page|0.1|Users can view profiles|
|Profile|PR2|Edit profile|0.1|User can edit their profile|
