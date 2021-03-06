Feature: (Iteration 2) view saved workouts

As a registered user
So I can quickly see my workouts
I want to see all my workouts listed

Background: Start at the "Get Started" page

  Given the following profiles exist:
  | email		        | password | name	| weight | height |
  | jim@gmail.com	  | 1234	   | Jim	| 170	   | 54 	  |
  | bob@gmail.com	  | 1234	   | Bob	| 150	   | 52	    |
  | will@gmail.com	| 1234	   | Will	| 180	   | 60     |
  | alex@gmail.com	| 1234	   | Alex	| 115	   | 46	    |

	Given the following workouts exist:
	| name     | profile_id |
	| workout1 | 1          |
	| workout2 | 1          |
        | workout3 | 1          |
	| workout5 | 2          |

	And I am logged in as "jim@gmail.com"
	And I am on the "User Profile page for "Jim""
	

Scenario: my workouts are displayed
	Then I should see "workout1"
	And I should see "workout2"
	And I should see "workout3" 
	And I should not see "workout5"

