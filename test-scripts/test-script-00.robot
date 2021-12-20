*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${Browser}  Headless Chrome
${URL}  http://www.google.com.au

*** Test Cases ***
Open Google Search in Browser
    [Setup]  open browser  ${URL}  ${Browser}
    click element  name:q
    input text  name:q  what is robot framework
    press keys  name:q  ENTER
    Element Should Contain    id:rcnt    Robot Framework
    [Teardown]    Close All Browsers