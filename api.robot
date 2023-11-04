*** Settings ***
Library    RequestsLibrary

*** Variables ***
${baseurl}   https://reqres.in/ 

${rel_url} 

*** Tasks ***
RPA
    Create Session    jack    ${baseurl}
    ${res}    Get Request    jack    /api/users/2
    Status Should Be    200
    Log    ${res}



    