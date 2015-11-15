*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Library           Selenium2Library

*** Variables ***
${BROWSER}    Firefox
${HOMEPAGE}   http://www.google.com/

*** Test Cases ***
Open Google
  Open Browser To Google
  Google Should Be Open
  [Teardown]  Close Browser

*** Keywords ***
Open Browser To Google
  Open Browser   ${HOMEPAGE}   ${BROWSER}

Google Should Be Open
  Title Should Be   Google

