Feature: Sign Up

Background: User is on sign up page
    Given user is on sign up page "https://www.amazon.com/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2F%3Fref_%3Dnav_custrec_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&"

Scenario Outline: Sign up with email already registered
When user click button sign up
And I enter name 'Toyib Abdullah'
And I enter registered email 'toy.abdlh@gmail.com'
And I enter valid password 'Abc123456'
And I re-enter password 'Abc123456' 
And I click button Create your Amazon account
Then system direct to alert page

Scenario Outline: Sign up with all fields are blank
When I click button sign up
When I click button Create account
Then system should show alert fields

Scenario Outline: Sign up with invalid password
When I click button sign-up
And I input name 'Toyib Abdullah'
And I input invalid email 'toy.abdlh'
And I input valid password 'Abc123456'
And I input re-enter password 'Abc123456' 
And I click button Create account Amazon
Then system should show alert

Scenario Outline: Sign up with short password
When user click button sign-up
And I input name as 'Toyib'
And I input email as 'toy.abdlh@yahoo.com'
And I input short password as 'Abc12'
And I input re-enter short password as 'Abc12' 
And I click button Create-account
Then system should show alert text