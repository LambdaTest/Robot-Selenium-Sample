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

Tests in Parallel:
	```
	$ make run_all_in_parallel
	```
###  Routing traffic through your local machine
- Set tunnel value to `True` in test capabilities
> OS specific instructions to download and setup tunnel binary can be found at the following links.
>    - [Windows](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+Windows)
>    - [Mac](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+MacOS)
>    - [Linux](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+Linux)

### Important Note:
---
- Some Safari & IE browsers, doesn't support automatic resolution of the URL string "localhost". Therefore if you test on URLs like "http://localhost/" or "http://localhost:8080" etc, you would get an error in these browsers. A possible solution is to use "localhost.lambdatest.com" or replace the string "localhost" with machine IP address. For example if you wanted to test "http://localhost/dashboard" or, and your machine IP is 192.168.2.6 you can instead test on "http://192.168.2.6/dashboard" or "http://localhost.lambdatest.com/dashboard".
### Resources

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)
##### [Robot Documentation](http://robotframework.org/robotframework/#user-guide)
