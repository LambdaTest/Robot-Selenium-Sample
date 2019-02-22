*** Settings ***
Library  Selenium2Library

*** Variables ***

@{_tmp} 
    ...  browserName: %{browserName},
    ...  platform: %{platform},
    ...  version: %{version},
    ...  name: RobotFramework Lambda Test

${BROWSER}          %{ROBOT_BROWSER}
${CAPABILITIES}     ${EMPTY.join(${_tmp})} 
${KEY}              <YOUR LAMBDATEST USERNAME>:<YOUR LAMBDATEST ACCESS KEY>
${REMOTE_URL}       https://${KEY}@hub.lambdatest.com/wd/hub


*** Keywords ***

Open test browser
    Open browser  https://lambdatest.github.io/sample-todo-app/  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}

Close test browser
    Close all browsers