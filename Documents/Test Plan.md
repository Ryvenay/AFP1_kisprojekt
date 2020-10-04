# Test Plan

## Introduction

The Test Plan is designed to prescribe the scope, approach, resources, and schedule of all testing activities of the project.
The plan is to identify the items, that need to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

### Scope

All the feature of the website which were defined in music and reviews.




### Quality Objective

We must make sure:

	-Ensure the Application Under Test conforms to functional and non-functional requirements
	-Ensure the AUT meets the quality specifications defined by the client
	-Bugs/issues are identified and fixed before go live

### Roles an Responsibilities

Testing will be executed by:

	-Nyeste Réka: responsible for UI/UX testing
	-Nagy Zoltán: responsible for UI/UX testing
	-Csanádi Balázs Tóbiás: responsible for test documentations
	-Fügedi Csaba: Test manager, responsible for DB testing
	
# Test Methodology

## Test methods  
  
* Database Import
* Database Reach
* Logout Reach
* Carousel Test
* Review page Test
* Interview page Test
* Other page Test
* About us page Test
* Spotify link Test
* Youtube link Test
* Add Article page Test
* Logout Test

## Overview

As our development process will follow the scrum method, therefore we adjusted our testing cycles to this. Every week is a new sprint, and we test every module right after implementation. This means we execute tests and write testing documents and reports near the end of the current sprint.

###	Functionality testing:

This is used to check if your product is as per the specifications you intended for it as well as the functional requirements charted out in developmental documentation. Testing Activities includes:
- Test all links in webpages are working correctly and make sure there are no broken links.

Links to be checked will include:
- Outgoing links
- Internal links
- Anchor links
- Test Forms are working as expected. This will include:
-- Scripting checks on the form are working as expected. (For example: if a user does not fill a mandatory field in a form an error message is shown.)
-- Check default values are being populated
-- Once submitted, the data in the forms is submitted to a live database or is linked to a working email address
-- Forms are optimally formatted for better readability

- Test HTML and CSS to ensure that search engines can check the site easily. This will include:
-- Checking for Syntax Errors
-- Readable Color Schemas
-- Standard Compliance. Ensure standards are followed.

###	Usability Testing

Test the site Navigation:
- Menus, buttons or Links to different pages on your site should be easily visible and consistent on all webpages

###	Interface Testing

Three areas to be tested here are - Web and Database Server

- Web Server: Test Web server is handling all application requests without any service denial.

- Database Server: Make sure queries sent to the database give expected results.

- Errors: Test system response when connection between the layers (Web and Database) cannot be established and appropriate message is shown to the end user.

###	Database Testing

Database is one critical component the web application and stress must be laid to test it thoroughly. Testing activities will include:
- Test if any errors are shown while executing queries
- Data Integrity is maintained while creating, updating or deleting data in database.

- Check response time of queries and fine tune them if necessary.
- Test data retrieved from your database is shown accurately in your web page




