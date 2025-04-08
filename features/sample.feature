Feature: Authentication

	Scenario: Scenario 1: Successful Login
 		Given the user is on the login page
   		When the user enters a valid username and password
     		And clicks the Login button
       		Then the user should be redirected to the dashboard page
	 	And a success message should be displayed, saying Login successful

	Scenario: Scenario 2: Login with Invalid Credentials
 		Given the user is on the login page
   		When the user enters an invalid username or password
     		And clicks the Login button
       		Then an error message should be displayed, saying Invalid username or password
		And the user should remain on the login page

	Scenario: Scenario 3: Login with Blank Fields
 		Given the user is on the login page
   		When the user clicks the Login button without entering a username or password
     		Then an error message should be displayed, saying Username and password cannot be blank

	Scenario: Scenario 4: Password Masking
		Given the user is on the login page
  		When the user enters a password in the password field
    		Then the password should be masked (e.g., displayed as asterisks or dots)
      		And the user should be able to toggle password visibility (if supported)

	Scenario: Scenario 5: Account Lock after Multiple Failed Login Attempts
 		Given the user is on the login page
   		When the user enters invalid credentials multiple times (e.g., 5 attempts)
     		Then the account should be locked
       		And a message should be displayed, saying Your account is locked. Please contact support

	Scenario: Scenario 6: Logout Functionality
 		Given the user is logged in
   		When the user clicks the Logout button
     		Then the user should be redirected to the login page
       		And a message should be displayed, saying You have successfully logged out
	 	And the session should be terminated

	Scenario: Scenario 7: Session Expiry
 		Given the user is logged in
   		And the session timeout duration has elapsed (e.g., 15 minutes of inactivity)
     		When the user attempts to perform any action
       		Then the user should be redirected to the login page
	 	And a message should be displayed, saying Your session has expired. Please log in again
