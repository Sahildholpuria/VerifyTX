*** Settings ***

Documentation           New test suite
Library                 QWeb
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers

*** Variables ***
${URL}    https://login.salesforce.com/

*** Test Cases ***
Login into Salesforce Org
    GoTo    ${URL}    timeout=10
    TypeText          Username    jwagner@verifytx.com
    TypeText          Password    STXa^35SJ9zG8Ez
    ClickText         Log In