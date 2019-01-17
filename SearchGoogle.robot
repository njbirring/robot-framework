*** Settings ***
Documentation     A test suite with a single test for Google search.

Resource  Resources/Common.robot    # Test setup and teardown
Resource  Resources/Google.robot    # lowel level keywords in test cases

Test Setup  Common.Start test
Test Teardown  Common.Stop test

*** Variables ***

*** Test Cases ***
Open Google
    Google.Search for RF

