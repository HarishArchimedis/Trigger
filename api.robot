*** Settings ***
Library    String
Library    SeleniumLibrary


*** Tasks ***
RPA
    ${dic}    Create Dictionary    name=harish    id=1234    status=True    Gender=Male
    ${json}    Evaluate    json.dumps($dic)    json
    Log    ${json}
   




    