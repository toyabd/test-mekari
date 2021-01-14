Feature: Sign in

  Background: User go to login page
    Given user is on login page "https://www.amazon.com/"

Scenario Outline: Sign In with unregistered email
When I click sign-in button
And I enter email "toy.abdlh123@gmail.com"
And I click continues
Then system show alert box

Scenario Outline: Sign In with unregistered phone
When I click sign-in
And I enter phone number "08123123"
And I click continue-button
Then system show alerts

Scenario Outline: Sign in with empty email
When I click sign in button
And I click continue
Then system show alert

Scenario Outline: Sign in with wrong password
When I click the sign-in button
And I enter valid email "toy.abdlh@gmail.com"
And I click continue button
And I enter invalid password "asdasdasd"
And I click sign in
Then system show alert-text