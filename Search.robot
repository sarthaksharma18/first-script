*** Settings ***
Documentation                                      This is a basic test
Library                                            SeleniumLibrary

*** Variables ***
${url}                                              https://www.google.com
${browser}                                          chrome
${text}                                             xpath=//input[@title="Search"]
*** Test Cases ***
User to open page
    [Documentation]                                 As a user I can open the google search page
    Open browser                                    ${URL}    ${BROWSER}
    wait until page contains                        ${url}
    close browser

User to enter text in the Search box
    [Documentation]                                 As a user I can enter the text 'Python',search for it & log them in console
    open browser                                    ${URL}    ${browser}
    wait until page contains                        ${URL}
    input text                                      ${text}  Python
    Press keys                                      ${text}  RETURN
    wait until page contains                        Python
    sleep    4s
    ${searchresults}=   Get WebElements   //*[@id='search']//following::h3//following::div/cite
    FOR  ${searchresult}  IN  @{searchresults}
    ${search}=    Get Text   ${searchresult}
    log to console     ${search}
    END

    Close Browser