*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    OperatingSystem
Library    SeleniumLibrary
Library    String
Library    Collections

*** Variables ***
${urlses}    https://dev-nexus.eat.jnj.com
${api}    /api/v1/product/portfoliosetting?portfolio_uuid=615d4cb1-d9b9-4294-9996-f97e54721b1d&type=finance
${authentication}    eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHBpcnkiOjM2NSwiaXNzIjoiZjQ2OWI3NDEtODhjNC00MjBlLWI1YjYtNGI5YTgxZGM4MTZkIiwib3JnIjoiSk5KIiwiZW52IjoiZGV2IiwiYXVkIjoiZGV2LW5leHVzLmVhdC5qbmouY29tIiwiaWF0IjoxNjk4NzQzNTg3LCJleHAiOjE3MzAyNzk1ODd9.3FSpSoBrm1oHzaOk0Il9LgtELFURZ0wbMzUIevsbDAA

*** Keywords ***
marks
    [Arguments]    ${reg}    ${dob}
    Open Browser    https://tnresults.nic.in/tptsxrs.htm    Chrome
    Maximize Browser Window
    Input Text    //input[@id="regno"]    ${reg}
    Input Text    //input[@id="dob"]    ${dob}
    Click Element    //input[@value="Get Marks"]
    Capture Page Screenshot
    Close Browser
# *** Test Cases ***
Kanishka student result
    marks    123456    01/02/1997
    marks    978987    14/12/20002
    





TRgscushch
    Create Session    origin    ${urlses}
    # ${csdv}    Get File    custom1.json
    # ${g}    Load Json From File    custom1.json
    ${C}    Create Dictionary    name=testjhcjcjcjnc    show=true    type=Text    default_value=vv    mandatory=true    tooltip=test
   
    ${cdv}=    PUT On Session   origin    ${api}    data=${c}    headers=${authentication}


Gsgcjsh
    # Name and Surname Objects - Updated to remove double quotes and match the provided json with "Surname" instead of "value"
    # ${tag_1}  Create Dictionary  name=Test1  Surname=XYZ
    # ${tag_2}  Create Dictionary  name=Test2  Surname=ABC

    # # Details List / Json Array
    # @{details}  Create List  ${tag_1}  ${tag_2}

    # # Body - Fixed so it's an object not an array
    # # &{body}  Create Dictionary  
    # # ...      Description=School
    # # ...      Details=${details}

    # # Convert the body to JSON
    # ${body}  Evaluate  json.dumps(${details})  json
    # Log    ${body}
    # PUT On Session
    # ${emp}    Create List    ${EMPTY}
    #${kncsk}    Create List    product    non-product-group    platform-group    product-group    enabling-function    chapter    chapter-group    non-product    platform
*** Tasks ***
automation
    ${dic}    Create Dictionary    name=ABC    id=1234
    ${dic_data}    Evaluate    json.dumps($dic)    json
    Log    ${dic_data}
    ${mncd}    Add Object To Json    hd    int=hjhj    object_to_add
       