***Settings***
Library  Selenium2Library
Suite Setup  Open Browser  ${LOGIN_URL}  ${BROWSER}
Suite Teardown  Close All Browsers 

***Variables***
${LOGIN_URL}  http://0.0.0.0:5000/
${BROWSER}  Chrome
${email_input}    id=input_email
${pass_input}     id=input_password
${login_button}   id=login_button
${user_email}     a@a.com
${user_pass}      q1w2e3r4

***Test Cases***
Login User
    Wait Until Element Is Visible  ${email_input}
    Input Text  ${email_input}  ${user_email}
    Input Text  ${pass_input}  ${user_pass}
    Click Element  ${login_button}
