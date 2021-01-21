***Settings***
Library  Selenium2Library
Test Setup     Open Browser  ${LOGIN_URL}  ${BROWSER}
Test Teardown  Close Browser 

***Variables***
${LOGIN_URL}        http://0.0.0.0:5000/
${BROWSER}          Chrome
${email_input}      id=input_email
${pass_input}       id=input_password
${login_button}     id=login_button
${flight_nav_link}  id=flights_nav_item
${user_email}       a@a.com
${user_pwd}        q1w2e3r4
${invalid_email}    random@123
${invalid_pwd}      1212

***Test Cases***
Login User
    Wait Until Element Is Visible  ${email_input}
    Input Text  ${email_input}  ${user_email}
    Input Text  ${pass_input}  ${user_pwd}
    Click Element  ${login_button}
    Page Should Contain Element  ${flight_nav_link}

Invalid Credentials
    Input Text  ${email_input}  ${invalid_email}
    Input Text  ${pass_input}  ${invalid_pwd}
    Click Element  ${login_button}
    Page Should Not Contain Element  ${flight_nav_link}