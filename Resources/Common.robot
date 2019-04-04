*** Settings ***
Library  Selenium2Library

*** Variables ***

@{_tmp}
    ...  browserName: ${browserName},
    ...  platform: ${platform},
    ...  version: ${version},
    ...  visual: ${visual},
    ...  network: ${network},
    ...  console: ${console},
    ...  name: RobotFramework Lambda Test

${BROWSER}          ${ROBOT_BROWSER}
${CAPABILITIES}     ${EMPTY.join(${_tmp})}
${KEY}              sirajk:oz85RZKxbqX6X8aCQXuQgUDnojP8OwY3wx2SAkEswtgRuxl8n0
${REMOTE_URL}       https://${KEY}@hub.lambdatest.com/wd/hub

*** Keywords ***

Open test browser
    Open browser  https://lambdatest.github.io/sample-todo-app/  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}

Close test browser
    Close all browsers
