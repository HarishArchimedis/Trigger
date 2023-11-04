*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    OperatingSystem
Library    SeleniumLibrary

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
*** Test Cases ***
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
    ${kncsk}    Create List    product    non-product-group    platform-group    product-group    enabling-function    chapter    chapter-group    non-product    platform
    
    ${dic1}    Create Dictionary    name=harish    id=1090    age=23    value=${EMPTY}    #ha=@{kncsk}
    ${dic2}    Create Dictionary    name=vvv    id=vfv    age=45    value=${EMPTY}    ha=@{kncsk}
    ${fina}    Dump Json To File    jdvjv.json    ${dic1} 
    # Log    ${emp}    ${dic}
    # @{eded}    Create List    ${dic1}    ${dic2}
    # Log    ${eded}
    # ${replace}=    Evaluate    json.dumps($dic1,$dic2)    json
    # Log    ${replace}

    # ${body}=    Set Variable   {"details": [${replace}]}
    
    # Log    ${body}
    # FOR    ${element}    IN    @{LIST}
    #     Log    ${element}
        
    # END

    # ${list1}=    Create List    StringA1    StringA2
    # ${list2}=    Create List    StringB1    StringB1
    # ${Dictionary}=    Create Dictionary    A=${list1}    B=${list2}
    # # Log    ${Dictionary}

    # ${checkbox}    Create List    product    non-product-group    platform-group    product-group    enabling-function    chapter    chapter-group    non-product    platform    enabling-function-group

    
*** Test Cases ***
chih
    # ${cdncn}    Get File    C:/RF_Local/custom1.json
    ${dic1}    Create Dictionary    type=Text    name=testtext    id=item-0    age=23    value=${EMPTY}
    ${dic2}    Create Dictionary    type=Textarea    name=testtextarea    id=item-1     age=6    value=${EMPTY}
    ${dic3}    Create Dictionary    type=Rich    name=select    id=item-2     age=5    value=${EMPTY}
    ${dic4}    Create Dictionary    type=Select    name=multi    id=item-3   age=3    value=${EMPTY}
    
    
    @{dd}    Create List    ${dic1}    ${dic2}    ${dic3}    ${dic4}
    FOR    ${element}    IN    @{dd}
        ${replace}    Evaluate    json.dumps($dd)    json
        
        
    END
    ${body}    Set Variable   {"details": ${replace}}
    Log    ${body}
    
*** Keywords ***


Json
    [Arguments]    ${uuid}    ${custom_type}
    ${Text_Type}    Create Dictionary    id=item-0   name=Testtext    type=Text    show=True      values=${EMPTY}     default_value=a,b,c    mandatory=True    tooltip=Testtool
    ${Textarea_Type}    Create Dictionary    id=item-1   name=Testtextarea    type=Textarea    show=True      values=${EMPTY}     default_value=a,b,c    mandatory=True    tooltip=Testtool
    ${Rich_Type}    Create Dictionary    id=item-2   name=TestRich    type=Richtext Editor    show=True      values=${EMPTY}     default_value=a,b,c    mandatory=True    tooltip=Testtool
    ${Select_Type}    Create Dictionary    id=item-3   name=TestSelect    type=Select    show=True      values=a,b,c    default_value=a    mandatory=True    tooltip=Testtool
    ${Multiselect_Type}    Create Dictionary    id=item-4   name=TestMultiselect    type=Multiselect    show=True      values=a,b,c    default_value=a,b    mandatory=True    tooltip=Testtool
    ${Check_Type}    Create Dictionary    id=item-5   name=TestCheck    type=Checkbox    show=True      values=a,b,c    default_value=a,b    mandatory=True    tooltip=Testtool
    ${Number_Type}    Create Dictionary    id=item-6   name=TestNumber    type=Number    show=True      values=${EMPTY}   default_value=8989890    mandatory=True    tooltip=Testtool
    