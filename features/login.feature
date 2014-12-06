Feature: (iteration 1) User can log into his/her account by entering email and password

As a registered user
So I can use all the features of PersonalTranierApp
I want to log into my account

Background: Start from the "Welcome Page" page

	Given the following profiles exist:
  | email		        | password | name	| weight | height |
  | my@gmail.com	  | 1234	   | Jim	| 170	   | 54 	  |
  | bob@gmail.com	  | 1234	   | Bob	| 150	   | 52	    |
  | will@gmail.com	| 1234	   | Will	| 180	   | 60     |
  | alex@gmail.com	| 1234	   | Alex	| 115	   | 46	    |

	And I am on the "Login page"

Scenario: try to log into existing account
	When I fill in "Email" with "my@email.com"
	And I fill in "Password" with "thispassword"
	And I press the "Submit" button
	Then I should be redirected to the "All Workouts" page
	And I should see "Hello Jim"
	And I should not see "Wrong login information"

Scenario: try to log with incorrect login info
	When I fill in "Email" with "my@email.com"
	And I fill in "Password" with "wrongpassword"
	And I press the "Submit" button
	Then I should see "Wrong login information"
	Then I should be redirected to the "Welcome Page" page


