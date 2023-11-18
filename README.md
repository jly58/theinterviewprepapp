# brainstorming.md

Original App Design Project - README Template
The Interview Prep App
Table of Contents
Overview
Product Spec
Wireframes
Schema
Overview
Description
Allows users to prepare for interviews by displaying their elevator pitch, create potential interview questions and provide answers on an app

App Evaluation
[Evaluation of your app across the following attributes]

Category: Education
Mobile: A mobile app for on-the-go ideas
Story: I found in my personal experience I struggled with thinking of scenarios during interviews and having a place to jot it down in a structured space would be useful. I'm sure my peers would be more than willing to have this sort of platform when they are preparing for interviews.
Market: This is geared towards students and adults looking to prepare for job interviews.
Habit: This is mostly a creation and review app for educational purposes. It is not habit-forming and may be used sparingly to somewhat frequently depending on one's needs at the time.
Scope: May be intricate to complete with all functionalities.
Product Spec
1. User Stories (Required and Optional)
Required Must-have Stories

Users can write their elevator pitch.
Users can edit their elevator pitch.
Users can write their own potential interview question Users can write their own answer.
Users can edit the question
Users can edit the answer
Users can view their data which will be saved locally.

...
Optional Nice-to-have Stories
Users can favorite interview questions.
Users can choose from a list of the top interview questions

...
2. Screen Archetypes
Login screen
- user can log in
Profile
- Users can write their elevator pitch.
- Users can edit their elevator pitch.
Feed
- Users can write their own potential interview questions  shown in a list
- Users can edit the question
Detail
- View the question here.
- Users can write their own answer.
- Users can edit the answer.

Tab Navigation (Tab to Screen)

Profile to Feed (bottom tab)
Feed to Profile (bottom tab)

Flow Navigation (Screen to Screen)
Feed to detail (pres on each interview question)
Login screen to profile
Profile to edit pitch
Feed to add question
Feed to edit question
Feed to delete question
Detail to edit answer

...
Wireframes

![IMG_9018](https://github.com/jly58/theinterviewprepapp/blob/main/IMG_9018.jpg)




[BONUS] Digital Wireframes & Mockups
[BONUS] Interactive Prototype
Schema
[This section will be completed in Unit 9]

Models
[Add table of models]

Networking
[Add list of network requests by screen ]
[Create basic snippets for each Parse network request]
[OPTIONAL: List endpoints if using existing API such as Yelp]

Progress:

Unit 8, 11/11: So far I've created the screens needed for this app. E.g. home screen, question feed, and the detail screen. This is just the backbones. I had some trouble connecting my table view to my view controller. I was able to figure it out and had to create a new class for the view controller and then connect the table view to it.

Unit 9, 11/17: This week I did the majority of my project. I implemented a launch screen, an elevator pitch page, an interview question feed, and the answer detail screen for each question. I faced so many different challenges from figuring out the segue connections to getting my buttons to work. It was challenging combining my knowledge from the units particularly Unit 5-7 in this project. I figured out how to make multiple segue connections from one view controller such as connecting my table view to a detail screen as well as to edit the table view. I spent many hours figuring out how to get my information to save to local storage using User Defaults. One difficulty I continue to have is when I create a new question, it leads to two consecutive segues to the Detail View Controller. I also was able to resolve issues where I would have only the first answer saved for all of the remaining cells, the question feed not saving but the detail view controller saving etc. I also found that when I moved my save and add buttons too far up in the view controller, the functionalities stopped working so I had make them overlap with the table view. Despite many hiccups, I was able to get the functionalities that were most necessary. I hope to work on this app to allow users to delete their question entries and figure out how to fix the double segue issue. I'm overall very satisfied with how this turned out. The only functionality omitted was the login page. Instead, I found the launch screen to be simple enough for my own purposes at the moment. I would love to learn more about creating a login page sometime.

The following **required** functionality is completed:

- [x] Users can write their elevator pitch.
- [x] Users can edit their elevator pitch.
- [x] Users can write their own potential interview question Users can write their own answer.
- [x] Users can edit the question
- [x] Users can edit the answer
- [x] Users can view their data which will be saved locally.
