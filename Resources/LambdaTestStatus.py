import os
from robot.libraries.BuiltIn import BuiltIn

def report_lambdatest_status(name, status):
    selenium = BuiltIn().get_library_instance('Selenium2Library')

    # Mark test status pass/failed
    lambda_status = "passed"  if status=="PASS" else "failed"
    lambda_status_script = 'lambda-status={}'.format(lambda_status)
    selenium.execute_javascript(lambda_status_script)
    # Update test name
    lambda_status_script = 'lambda-name={}'.format(name)
    selenium.execute_javascript(lambda_status_script)



