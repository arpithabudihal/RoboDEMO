*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
tc1
    Create WebDriver    Chrome  executable_path=driver/chromedriver.exe
    open browser    https://demo.nopcommerce.com/   chrome
    click link  xpath://a[@class='ico-login']
    input text  xpath://input[@id='Email']  arpitha.budihal.2012@gmail.com
    input text  id:Password     Arpitha@123
    click element   xpath://input[@class='button-1 login-button']
    close browser





*** Keywords ***

