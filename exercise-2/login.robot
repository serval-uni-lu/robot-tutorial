*** Settings ***
Documentation     A test suite with login tests in Gherkin style.

Resource          resource.robot
Suite Setup       Close All Browsers
Test Teardown     Close All Browsers

*** Test Cases ***
Valid Login
    Given browser is opened to login page
    When user "demo" logs in with password "mode"
    Then welcome page should be open