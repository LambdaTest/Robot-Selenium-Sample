# Robot Selenium tutorial

![MSTest](https://opengraph.githubassets.com/2c360fc18f231a79e77ba4561d19e646703ad6be23ac9ff67eb6fde574c942eb/LambdaTest/Robot-Selenium-Sample)

## Prerequisites

1. Install pip and python.

```
sudo apt install python-pip
sudo apt install python
```

2. The recommended way to run your tests would be in virtualenv. It will isolate the build from other setups you may have running and ensure that the tests run with the specified versions of the modules specified in the requirements.txt file.

```
pip install virtualenv
```

## Steps to Run your First Test

Step 1. Clone the Robot-Selenium-Sample Repository.

```
git clone https://github.com/LambdaTest/Robot-Selenium-Sample
```

Step 2. Next we create and Activate the virtual environment in the Robot-Selenium-Sample folder.

For Linux/MacOS
```
virtualenv venv
source venv/bin/activate
```

For Windows
```
python -m virtualenv venv
venv\Scripts\activate.bat
```

Step 3. Then install required packages.

```
pip install -r requirements.txt
```

Step 4. Inside Robot-Selenium-Sample folder, export the Lambda-test Credentials. You can get these from your automation dashboard.

<p align="center">
   <b>For Linux/macOS:</b>
   
```
export LT_USERNAME="YOUR_USERNAME"
export LT_ACCESS_KEY="YOUR ACCESS KEY"
```
<p align="center">
   <b>For Windows:</b>
```
set LT_USERNAME="YOUR_USERNAME"
set LT_ACCESS_KEY="YOUR ACCESS KEY"
```

Step 5. To run your first test.

```
make test_Windows_10_chrome_latest
```

Step 6. To run parallel test.

```
 make run_all_in_parallel
```

## See the Results

You can see the results of the test on Lambdatest [Automation Dashboard](https://automation.lambdatest.com/build)
![Dashboard](https://github.com/LambdaTest/Robot-Selenium-Sample/blob/master/tutorial-images/rfsample.PNG)

## Testing Locally Hosted or Privately Hosted Projects

To help you perform cross browser testing of your locally stored web pages, LambdaTest provides an SSH(Secure Shell) tunnel connection with the name Lambda Tunnel. With Lambda Tunnel, you can test your locally hosted files before you make them live over the internet. You could even perform cross browser testing from different IP addresses belonging to various geographic locations. You can also use LambdaTest Tunnel to test web-apps and websites that are permissible inside your corporate firewall.

- Set tunnel value to True in test capabilities
  > OS specific instructions to download and setup tunnel binary can be found at the following links.
  >
  > - [Windows](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+Windows)
  > - [Mac](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+MacOS)
  > - [Linux](https://www.lambdatest.com/support/docs/display/TD/Local+Testing+For+Linux)
  >   After setting tunnel you can also see the active tunnel in our LambdaTest dashboard:
  >   ![tunnel active](https://github.com/LambdaTest/Robot-Selenium-Sample/blob/master/tutorial-images/tn.PNG)

## About LambdaTest

[LambdaTest](https://www.lambdatest.com/) is a cloud based selenium grid infrastructure that can help you run automated cross browser compatibility tests on 2000+ different browser and operating system environments. LambdaTest supports all programming languages and frameworks that are supported with Selenium, and have easy integrations with all popular CI/CD platforms. It's a perfect solution to bring your [selenium automation testing](https://www.lambdatest.com/selenium-automation) to cloud based infrastructure that not only helps you increase your test coverage over multiple desktop and mobile browsers, but also allows you to cut down your test execution time by running tests on parallel.
