run_all_in_parallel:
	make -j test_Windows_10_edge_16 test_OX_X_10_11_firefox_59 test_Windows_10_chrome_68

test_Windows_10_edge_16:
	platform="Windows 10" browserName=MicrosoftEdge version=16.0 ROBOT_BROWSER=firefox robot Tests/sample_test.robot

test_OX_X_10_11_firefox_59:
	platform="macOS Sierra" browserName=firefox version=59.0 ROBOT_BROWSER=firefox robot Tests/sample_test.robot

test_Windows_10_chrome_68:
	platform="Windows 10" browserName=chrome version=68.0 ROBOT_BROWSER=chrome robot Tests/sample_test.robot
