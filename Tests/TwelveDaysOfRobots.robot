***Settings***
Documentation  The twelve days of robots
Library  Collections

***Variables***
${KLARCK_VAR} =  , Pekka Klärck Developed For Me:
@{NTH_DAY_LIST} =  1st  2nd  3rd  4th  5th  6th  7th  8th  9th  10th  11th  12th
@{NTH_DAYS_LIST} =  Create List

***Test Cases***
Verify The Verses Of The Twelve Days Of Robots
    [Tags]  12-days-of-robots
    Create And Sing Verses

***Keywords***
Create And Sing Verses
    FOR  ${nth_day}  IN  @{NTH_DAY_LIST}
        ${keyword} =  Set Variable  On The ${nth_day} Day Of Robots
        Insert Into List  ${NTH_DAYS_LIST}  0  ${keyword}
        Sing Verses  ${keyword}
    END
    
Sing Verses
    [Arguments]  ${keyword}
    Log To Console  ${keyword}${KLARCK_VAR}
    FOR  ${nth_days}  IN  @{NTH_DAYS_LIST}
        Run Keyword  ${nth_days}
    END

On The ${nth_day} Day Of Robots
    ${verse} =  Set Variable If
    ...  '${nth_day}'=='12th'  Twelve Actually Thirteen Useful Sections On The robotframework.org Website
    ...  '${nth_day}'=='11th'  Eleven Standard Libraries
    ...  '${nth_day}'=='10th'  Ten Remote Library Servers
    ...  '${nth_day}'=='9th'  Nine Variable Priorities And Scopes
    ...  '${nth_day}'=='8th'  Eight Escaping Special Characters
    ...  '${nth_day}'=='7th'  Seven Return Codes
    ...  '${nth_day}'=='6th'  Six Test Data Sections
    ...  '${nth_day}'=='5th'  Five Demonstration Projects
    ...  '${nth_day}'=='4th'  Four Supporting Tools
    ...  '${nth_day}'=='3rd'  Three Output Files
    ...  '${nth_day}'=='2nd'  Two File Extensions
    ...  One Robot Framework User Guide
    Run Keyword  ${verse}

One Robot Framework User Guide
    [Documentation]  http://robotframework.org/robotframework/#user-guide
    ${length} =  Get Length  ${NTH_DAYS_LIST}
    Run Keyword If  ${length}==1  Log To Console  And A Robot Framework User Guide
    ...  ELSE  Log To Console  One Robot Framework User Guide

Two File Extensions
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#supported-file-formats
    Log To Console  Two File Extensions

Three Output Files
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#different-output-files
    Log To Console  Three Output Files

Four Supporting Tools
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#supporting-tools
    Log To Console  Four Supporting Tools

Five Demonstration Projects
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#demonstrations
    Log To Console  Five Demonstration Projects

Six Test Data Sections
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-data-sections
    Log To Console  Six Test Data Sections

Seven Return Codes
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#return-codes
    Log To Console  Seven Return Codes

Eight Escaping Special Characters
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#escaping
    Log To Console  Eight Escaping Special Characters

Nine Variable Priorities And Scopes
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#variable-priorities-and-scopes
    Log To Console  Nine Variable Priorities And Scopes

Ten Remote Library Servers
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#remote-library-interface
    ...  https://github.com/robotframework/RemoteInterface#available-remote-servers
    Log To Console  Ten Remote Library Servers

Eleven Standard Libraries
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#standard-libraries
    Log To Console  Eleven Standard Libraries

Twelve Actually Thirteen Useful Sections On The robotframework.org Website
    [Documentation]  https://robotframework.org/
    ...  Left sidebar list 
    Log To Console  Twelve Actually Thirteen Useful Sections On The robotframework.org Website
