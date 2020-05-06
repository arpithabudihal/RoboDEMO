*** Settings ***
Library  SeleniumLibrary


*** Variables ***



*** Test Cases ***
Dynamics 365 Login
    Open Browser    https://trial2904.crm8.dynamics.com/    chrome
    Set Selenium Speed  1
    Set Selenium Implicit Wait  60
    Wait Until Page Contains Element    id:idSIButton9
    Clear Element Text  name:loginfmt
    input text  name:loginfmt   arpitha@trial2904.onmicrosoft.com
    Click Button   id:idSIButton9
    log to console  Next button clicked
    Wait Until Page Contains Element  name:passwd   timeout=60
    input password  name:passwd     Happy123
    Click Button   id:idSIButton9
    Click Button   id:idBtn_Back

Add New Contact
    Select Frame    AppLandingPage
    Wait Until Page Contains    Published Apps
    log to console  apps found
    Click element  xpath://body/div/div/div/div[@class='app-list-container']/div/div[1]/a[1]/div[2]/div[1]
    log to console  tile clicked
    Unselect Frame
    Wait Until Page Contains Element    xpath://span[contains(text(),'Contacts')]   timeout=60
    click element   xpath://span[contains(text(),'Contacts')]
    Wait Until Page Contains Element    xpath://span[contains(text(),'New')]   timeout=60
    click element   xpath://span[contains(text(),'New')]
    Wait Until Page Contains Element    xpath://input[contains(@aria-label,'First Name')]   timeout=60
    input text  xpath://input[contains(@aria-label,'First Name')]   Arpitha
    input text  xpath://input[contains(@aria-label,'Last Name')]    Budihal
    input text  xpath://input[contains(@aria-label,'Job Title')]    Test Lead
    input text  xpath://input[contains(@placeholder,'Provide an email')]    arpitha.budihal@okq8.se
    input text  xpath://input[contains(@placeholder,'Provide a telephone number')]  9875387546
    click element   xpath://span[contains(text(),'Save & Close')]
    #Close Browser
*** Keywords ***


