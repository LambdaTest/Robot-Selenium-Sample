*** Settings ***
Library  Selenium2Library
Library  LambdaTestStatus.py

*** Variables ***


${BROWSER}          ${ROBOT_BROWSER}
&{options}          browserName=${browserName}     platform=${platform}       version=${version}        visual=${visual}       network=${network}        console=${console}      name=RobotFramework Lambda Test    buildName=Robot Build
&{CAPABILITIES}     LT:Options=&{options}
${REMOTE_URL}       http://%{LT_USERNAME}:%{LT_ACCESS_KEY}@hub.lambdatest.com/wd/hub
${TIMEOUT}          3000

*** Keywords ***

Open test browser
    [Timeout]   ${TIMEOUT}
    Open browser  https://lambdatest.github.io/sample-todo-app/  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}

Close test browser
    Run keyword if  '${REMOTE_URL}' != ''
    ...  Report Lambdatest Status
    ...  ${TEST_NAME} 
    ...  ${TEST_STATUS} 
    Close all browsers