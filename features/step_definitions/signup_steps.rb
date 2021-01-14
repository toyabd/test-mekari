Given('user is on sign up page {string}') do |string|
  visit string
end

# Sign up with email already registered
When('user click button sign up') do
  first('#createAccountSubmit').click
end

And('I enter name {string}') do |string|
  find('#ap_customer_name').click
  find('#ap_customer_name').set(string)
end

And('I enter registered email {string}') do |string|
  find('#ap_email').click
  find('#ap_email').set(string)
end

And('I enter valid password {string}') do |string|
  find('#ap_password').click
  find('#ap_password').set(string)
end

And('I re-enter password {string}') do |string|
  find('#ap_password_check').click
  find('#ap_password_check').set(string)
end

When('I click button Create your Amazon account') do
  find('#continue').click
end

Then('system direct to alert page') do
  expect(first('div.a-box.a-alert.a-alert-warning.a-spacing-base div.a-box-inner.a-alert-container > h4.a-alert-heading'))
  sleep 1
end

# Sign up with all fields are blank
When('I click button sign up') do
  find('#createAccountSubmit').click
end

When ('I click button Create account') do
  find('#continue').click
end

Then('system should show alert fields') do
  sleep 1
  expect(find('#auth-customerName-missing-alert'))
  expect(find('#auth-email-missing-alert'))
  expect(find('#auth-password-missing-alert'))
end

# Sign up with invalid password
When('I click button sign-up') do
  find('#createAccountSubmit').click
end

And('I input name {string}') do |string|
  find('#ap_customer_name').click
  find('#ap_customer_name').set(string)
end

And('I input invalid email {string}') do |string|
  find('#ap_email').click
  find('#ap_email').set(string)
end

And('I input valid password {string}') do |string|
  find('#ap_password').click
  find('#ap_password').set(string)
end

And('I input re-enter password {string}') do |string|
  find('#ap_password_check').click
  find('#ap_password_check').set(string)
end

When('I click button Create account Amazon') do
  find('#continue').click
end

Then('system should show alert') do
  expect(find('#auth-email-invalid-email-alert'))
  sleep 1
end

# Sign up with short password
When('user click button sign-up') do
  find('#createAccountSubmit').click
end

And('I input name as {string}') do |string|
  find('#ap_customer_name').click
  find('#ap_customer_name').set(string)
end

And('I input email as {string}') do |string|
  find('#ap_email').click
  find('#ap_email').set(string)
end

And('I input short password as {string}') do |string|
  find('#ap_password').click
  find('#ap_password').set(string)
end

And('I input re-enter short password as {string}') do |string|
  find('#ap_password_check').click
  find('#ap_password_check').set(string)
end

When('I click button Create-account') do
  find('#continue').click
end

Then('system should show alert text') do
  expect(find('#auth-password-invalid-password-alert'))
  sleep 1
end