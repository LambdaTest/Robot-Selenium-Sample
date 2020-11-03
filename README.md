# Robot Selenium tutorial

![LambdaTest Logo](https://www.lambdatest.com/static/images/logo.svg)


![altext](https://github.com/LambdaTest/Robot-Selenium-Sample/blob/master/tutorial-images/logo.PNG)

Robot Framework is a generic open source automation framework. It can be used for test automation and robotic process automation (RPA).
## Prerequisites for Robot Selenium tutorial 

You can find your username and access key here (https://www.lambdatest.com/capabilities-generator/).

![Username Access](tutorial-images/capability.png)


You can now replace the username and access key here in the `Resources/Common.robot` file: 

```
http://%{LT_USERNAME}:%{LT_ACCESS_KEY}@hub.lambdatest.com/wd/hub
```

## Getting Started With Robot & LambdaTest

Let’ start with a simple Selenium Remote Webdriver test first. The Robot script below tests a simple to-do application with basic functionalities like mark items as done, add items in list, calculate total pending items etc.

Feature: Test to add item Scenario: Test sample-todo-app Given I go to sample-todo-app to add item Then I Click on first checkbox and second checkbox When I enter item to add When I click add button Then I should verify the added item

Now here is the sample test file which is to be executed for the automation test through LambdaTest


```
*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open test browser
Test Teardown  Common.Close test browser
 
*** Variables ***

*** Test Cases ***

Example of connecting to Lambdatest via Robot Framework 
	[Timeout]   ${TIMEOUT}
	Page should contain element  name:li1
	Page should contain element  name:li2

	Click button  name:li1	
	Click button  name:li2	
		
	Input text  id:sampletodotext  Yey Let's add it to list
	Click button  id:addbutton
	${response}    Get Text    xpath=/html/body/div/div/div/ul/li[6]/span
	Should Be Equal As Strings    ${response}    Yey Let's add it to list
```


Here is common.robot file to setup mandatory details to run at LambdaTest.
You would need to your LambdaTest authentication credentials(Access key & Username). You need to update these credentials in the /Resources/Common.robot file.

```
*** Settings ***
Library  Selenium2Library
Library  LambdaTestStatus.py

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
${REMOTE_URL}       http://%{LT_USERNAME}:%{LT_ACCESS_KEY}@hub.lambdatest.com/wd/hub //Please specify your lambdatest username and access key here
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
```

### Execute The Test

You would need to execute the below command in your terminal/cmd.

```
make test_Windows_10_chrome_68
```

![rfst](https://github.com/LambdaTest/Robot-Selenium-Sample/blob/master/tutorial-images/rfst.PNG)

## Parallel testing with Robot

You can configure your parallel tests capabilites at `Makefile`: 


```
run_all_in_parallel:
	make -j test_Windows_10_edge_18 test_OX_X_10_11_firefox_59 test_Windows_10_chrome_68

test_Windows_10_edge_18:
	robot  --variable platform:"Windows 10" --variable browserName:MicrosoftEdge --variable version:18.0 --variable ROBOT_BROWSER:chrome --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

test_OX_X_10_11_firefox_59:
	robot --variable platform:"macOS Sierra" --variable browserName:firefox --variable version:59.0 --variable ROBOT_BROWSER:firefox --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

test_Windows_10_chrome_68:
	robot --variable platform:"Windows 10" --variable browserName:chrome --variable version:68.0 --variable ROBOT_BROWSER:chrome --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot
	
```


To perform parallel testing on LambdaTest Selenium grid use the below command:


```
make run_all_in_parallel
```

![rfpt](https://github.com/LambdaTest/Robot-Selenium-Sample/blob/master/tutorial-images/rfpt.PNG)


Below we see a screenshot that depicts our Robot code is running over different browsers i.e Chrome, Firefox and Safari on the LambdaTest Selenium Grid Platform. The results of the test script execution along with the logs can be accessed from the LambdaTest Automation dashboard.

![rfsample](https://github.com/LambdaTest/Robot-Selenium-Sample/blob/master/tutorial-images/rfsample.PNG)


##  Testing Locally Hosted or Privately Hosted Projects

To help you perform cross browser testing of your locally stored web pages, LambdaTest provides an SSH(Secure Shell) tunnel connection with the name Lambda Tunnel. With Lambda Tunnel, you can test your locally hosted files before you make them live over the internet. You could even perform cross browser testing from different IP addresses belonging to various geographic locations. You can also use LambdaTest Tunnel to test web-apps and websites that are permissible inside your corporate firewall.

* Set tunnel value to True in test capabilities
> OS specific instructions to download and setup tunnel binary can be found at the following links.
>    - [Windows](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+Windows)
>    - [Mac](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+MacOS)
>    - [Linux](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+Linux)

After setting tunnel you can also see the active tunnel in our LambdaTest dashboard:


![tunnel active](https://github.com/LambdaTest/Robot-Selenium-Sample/blob/master/tutorial-images/tn.PNG)



### Resources

##### [Selenium Documentation](http://www.seleniumhq.org/docs/)

##### [Python Documentation](https://docs.python.org/2.7/)

