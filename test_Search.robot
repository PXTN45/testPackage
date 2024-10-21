*** Settings ***
Resource    Test_search/resources/keywords.robot
Library    SeleniumLibrary

*** Test Cases ***
TC2003 ค้นหาที่แพ็คเกจโดยค้นหาจากชื่อจังหวัด
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window 
    InputNameProvincePackage
    DefinePeople
    StartandEnd_Package 
    Click Element    ${Search}
    Sleep    3s
    Wait Until Element Contains    ${Detail-Package}    ${InputSearchProvincePackage}     10s  
    Element Should Contain    ${Detail-Package}    ${InputSearchProvincePackage}
    Capture Screenshot
    Close Browser
