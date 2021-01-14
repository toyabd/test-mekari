Given('user is on login page {string}') do |string|
    visit string
  end

# Sign In with unregistered email 
  When('I click sign-in button') do
    first('#nav-tools').click
  end

  And('I enter email {string}') do |string|
    find('[type="email"]').click
    find('[type="email"]').set(string)
  end

  And('I click continues') do
    first('#continue').click
  end

  Then('system show alert box') do
    expect(find('div.a-alert-content ul.a-unordered-list.a-nostyle.a-vertical.a-spacing-none li:nth-child(1) > span.a-list-item'))
    sleep 1
  end  

# Sign In with unregistered phone
When('I click sign-in') do
  first('#nav-tools').click
end

And('I enter phone number {string}') do |string|
  find('[type="email"]').click
  find('[type="email"]').set(string)
end

And('I click continue-button') do
  first('#continue').click
end

Then('system show alerts') do
  expect(find('div.a-alert-content ul.a-unordered-list.a-nostyle.a-vertical.a-spacing-none li:nth-child(1) > span.a-list-item'))
  sleep 1
end 

# Sign in with empty email
  When('I click sign in button') do
    first('#nav-tools').click
  end

  And('I click continue') do
    first('#continue').click
  end
 
  Then('system show alert') do
    expect (find('#auth-email-missing-alert'))
    sleep 1
  end

  # Sign in with wrong password
  When('I click the sign-in button') do
    first('#nav-tools').click
  end

  And('I enter valid email {string}') do |string|
    find('[type="email"]').click
    find('[type="email"]').set(string)
  end

  And('I click continue button') do
    first('#continue').click
  end

  And('I enter invalid password {string}') do |string|
    find('[type="password"]').click
    find('[type="password"]').set(string)
  end

  And('I click sign in') do
    first('#signInSubmit').click
  end
 
  Then('system show alert-box') do
    expect(find(text.include?'Your password is incorrect'))
    sleep 1
  end 
  
