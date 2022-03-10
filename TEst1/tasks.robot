*** Settings ***
Documentation     Template robot main suite.
Library         RPA.Browser
Library         RPA.Robocloud.Secrets
Library         RPA.PDF
Library         RPA.Tables
Library         RPA.Dialogs
Library         RPA.Excel.Files
Library         RPA.HTTP
Library         RPA.FileSystem
Library         RPA.Archive
Library         RPA.core.notebook
Library        String
Library    Dialogs

*** Variables ***
${URL} =    http://localhost:3000/

*** Keywords ***
Fill the form
    ${username}=    Convert To String    banxavi@gmail.com
    ${password}=    Convert To String    123456
    Input Text  //input[@id="username"]    ${username}
    Input Text  //input[@id="password"]    ${password}
Log In
    Click Button    //button[@class="button"]
    
Add employee
    ${random_string}=    Generate Random String    12    [LOWER]
    ${name}=    Convert To String    banxavi@gmail.com
    ${email}=    Convert To String    ${random_string}
    ${address}=    Convert To String    Tuy An
    ${phone}=    Convert To Integer    095721441
    ${image}=    Convert To String    image
    
    Click Button    //button[@id="addemp"]
    Input Text    //input[@id="add_name"]    ${name}
    Input Text    //input[@id="add_email"]    ${email}
    Input Text    //input[@id="add_address"]    ${address}
    Input Text    //input[@id="add_phone"]    ${phone}
    Input Text    //input[@id="add_image"]    ${image}
    Sleep    10s
    Click Button    //button[@id='add_submit']
    Sleep    10s

*** Tasks ***
Minimal task
    Open Available Browser    ${URL}    
    Sleep    10s
    Maximize Browser Window
    Fill the form
    Log In
    Sleep    10s
    Add employee
    Pause Execution