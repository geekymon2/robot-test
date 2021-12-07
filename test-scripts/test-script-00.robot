*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.google.com.au

*** Test Cases ***
Open Google Search in Browser
    open browser  ${URL}  ${Browser}
    click element  name:q
    input text  name:q  what is robot framework
    press keys  name:q  ENTER
    [Teardown]    Close All Browsers