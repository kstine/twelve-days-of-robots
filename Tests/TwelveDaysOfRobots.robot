***Settings***
Documentation  The twelve days of robots
...            A quick study of list, loops, and switch case style logic.
...            To execute the entire suite: robot -d Results Tests
...            To execute the template test: robot -d Results -i some-days-of-robots Tests
Library        Collections
Library        Dialogs
Test Setup     Set Test Variables

***Variables***
@{NTH_DAY_LIST} =  1st  2nd  3rd  4th  5th  6th  7th  8th  9th  10th  11th  12th

***Test Cases***
Verify All Verses Of The Twelve Days Of Robots
    [Tags]  12-days-of-robots
    Create And Sing Verses

Verify Some Verses Of The Twelve Days Of Robots
    [Tags]  some-days-of-robots
    [Template]  Test Template
    1st    5th
    11th   12th
    3rd    2nd
    2nd    2nd

***Keywords***
Test Template
    [Arguments]  ${starting_nth_day}  ${ending_nth_day}
    Create And Sing Verses  ${starting_nth_day}  ${ending_nth_day}
    [Teardown]  Set Test Variables

Set Test Variables
    @{NTH_DAYS_LIST} =  Create List
    Set Test Variable  @{NTH_DAYS_LIST}
    
Create And Sing Verses
    [Arguments]  ${starting_nth_day}=1st  ${ending_nth_day}=12th
    ${starting_index} =  Get Index From List  ${NTH_DAY_LIST}  ${starting_nth_day}
    ${ending_index} =  Get Index From List  ${NTH_DAY_LIST}  ${ending_nth_day}
    Run Keyword If  ${starting_index}>${ending_index}
    ...  Fail  Until time travel is invented, you cannot have the ${ending_nth_day} follow the ${starting_nth_day}.
    FOR  ${index}  ${nth_day}  IN ENUMERATE  @{NTH_DAY_LIST}
        ${keyword} =  Set Variable  On The ${nth_day} Day Of Robots
        Insert Into List  ${NTH_DAYS_LIST}  0  ${keyword}
        Run Keyword If  ${index}>=${starting_index}  Sing Verses  ${keyword}
        Exit For Loop If  ${index}==${ending_index}
    END
    Pause Execution  message=Test Completed.
    
Sing Verses
    [Arguments]  ${keyword}
    ${custom_line} =  Set Variable  , Pekka Klärck And Friends Developed For Me:
    ${first_line} =  Catenate  SEPARATOR=  ${keyword}  ${custom_line}
    Pause Execution  message=${first_line}
    Run Keywords  @{NTH_DAYS_LIST}

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
    Run Keyword If  ${length}==1  Execute Manual Step  message=A Robot Framework User Guide
    ...  ELSE  Execute Manual Step  message=And A Robot Framework User Guide

Two File Extensions
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#supported-file-formats
    Execute Manual Step  message=Two File Extensions

Three Output Files
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#different-output-files
    Execute Manual Step  message=Three Output Files

Four Supporting Tools
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#supporting-tools
    Execute Manual Step  message=Four Supporting Tools

Five Demonstration Projects
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#demonstrations
    Execute Manual Step  message=Five Demonstration Projects

Six Test Data Sections
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-data-sections
    Execute Manual Step  message=Six Test Data Sections

Seven Return Codes
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#return-codes
    Execute Manual Step  message=Seven Return Codes

Eight Escaping Special Characters
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#escaping
    Execute Manual Step  message=Eight Escaping Special Characters

Nine Variable Priorities And Scopes
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#variable-priorities-and-scopes
    Execute Manual Step  message=Nine Variable Priorities And Scopes

Ten Remote Library Servers
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#remote-library-interface
    ...              https://github.com/robotframework/RemoteInterface#available-remote-servers
    Execute Manual Step  message=Ten Remote Library Servers

Eleven Standard Libraries
    [Documentation]  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#standard-libraries
    Execute Manual Step  message=Eleven Standard Libraries

Twelve Actually Thirteen Useful Sections On The robotframework.org Website
    [Documentation]  https://robotframework.org/
    ...              Left sidebar list 
    Execute Manual Step  message=Twelve Actually Thirteen Useful Sections On The robotframework.org Website

*** Comments ***
Kelby Stine
Copyright 2020
License  GNU
Version 1.0.0
kelbystine@gmail.com
