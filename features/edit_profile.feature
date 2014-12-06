Feature: (Iteration 1) a user can edit their profile

As a user
So I can change or delete my profile
I want to edit my profile

Background: I am a registered user on the Personal Trainer app
	Given the following profiles exist:
	| email             | password     | name | weight | height |
  | jim@gmail.com 	  | 1234sqios	   | Jim	| 170	   | 54     |
  | bob@gmail.com	    | 1234totwh	   | Bob	| 150	   | 52	    |
  | will@gmail.com	  | 1234eissfs   | Will	| 180	   | 60     |
  | alex@gmail.com	  | 1234aowjes   | Alex	| 115	   | 46	    |
  
  And I am logged in as "jim@gmail.com"
	And I am on the "Edit Profile" page

Scenario: edit user weight on profile
  When I fill in "Weight" with "160"
  And I press the "Save" button
  Then I should see "Your profile has been successfully updated"
  Then I should be redirected to the "User Profile" page

Scenario: delete user profile
  When I press the "Delete" button
  Then I should see "Your profile has been successfully deleted"
  Then I should be redirected to the "Welcome Page" page
	Then The profile "jim@gmail.com" should not exist


