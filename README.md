![LambdaTest Logo](https://www.lambdatest.com/static/images/logo.svg)
---
### Environment Setup

1. Global Dependencies
    * [Install Python](https://www.python.org/downloads/)
    * Or Install Python with [Homebrew](http://brew.sh/)
    ```
    $ brew install python
    ```
    * Install [pip](https://pip.pypa.io/en/stable/installing/) to install packages

2. Lambdatest Credentials
    * In the /Resources/Common.robot file update your lambdatest username and access key:
    ```
    $ ${KEY}              YOUR USERNAME:YOUR ACCESS KEY
     EXAMPLE: ${KEY}      user1234:843908dfslkhfkhfhlkhdsfkl
    ```
3. Project Dependencies
	* Install packages (Use sudo if necessary)
	```
	$ pip install -r requirements.txt
	```
### Running Tests

Single Test:
	```
	$ make test_Windows_10_chrome_68
	```
Tests in Parallel:
	```
	$ make run_all_in_parallel
	```
#####  Routing traffic through your local machine
- Set tunnel value to `true` in test capabilities
> OS specific instructions to download and setup tunnel binary can be found at the following links.
>    - [Windows](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+Windows)
>    - [Mac](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+MacOS)
>    - [Linux](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+Linux)

You will see the test result in the [lambdatest Dashboard](https://automation.lambdatest.com)

## About LambdaTest

[LambdaTest](https://www.lambdatest.com/) is a cloud based selenium grid infrastructure that can help you run automated cross browser compatibility tests on 2000+ different browser and operating system environments. LambdaTest supports all programming languages and frameworks that are supported with Selenium, and have easy integrations with all popular CI/CD platforms. It's a perfect solution to bring your [selenium automation testing](https://www.lambdatest.com/selenium-automation) to cloud based infrastructure that not only helps you increase your test coverage over multiple desktop and mobile browsers, but also allows you to cut down your test execution time by running tests on parallel.

### Resources

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)
##### [Robot Documentation](http://robotframework.org/robotframework/#user-guide)
