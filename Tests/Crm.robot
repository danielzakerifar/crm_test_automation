*** Settings ***
Documentation    This is some basic info about the whole suite
Library          SeleniumLibrary

#Run the script:
#robot -d results tests/crm.robot

*** Variables ***


*** Test Cases ***
 Should be able to add new customer
    [Documentation]     this is some basic info about the test
    [Tags]              1006    Smoke   Contacts
    #Initialize Selenium
    Set selenium speed      .2s
    set selenium timeout    10s
    #open browser
    log                 Starring the test case!
    open browser        https://automationplayground.com/crm/       edge

    #resize browser window for recording
    Set window position    x=341    y=169
    Set window size        width=1935   height=1090

    page should contain      Customers Are Priority One


    click link              xpath=/html/body/nav/ul/li/a
    page should contain     Login

    input text    id=email-id    admin@robotframeworktutorial.com
    input password    id=password       test123
    click button       Submit

    sleep       3s


    click link    id=new-customer
    page should contain   Add Customer


    input text      id=EmailAddress     jando@gmail.com
    input text      id=FirstName        jane
    input text      id=LastName         doe
    input text      id=City             Montreal
    select from list by value   id=StateOrRegion    TX
    select radio button    gender   male
    select checkbox    name=promos-name





    sleep               3s
    close browser


*** Keywords ***
