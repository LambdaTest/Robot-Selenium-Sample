run_all_in_parallel:
	make -j test_Windows_10_edge_latest test_OX_X_10_11_firefox_latest test_Windows_10_chrome_latest

test_Windows_10_edge_latest:
	robot  --variable platform:"Windows 10" --variable browserName:MicrosoftEdge --variable version:latest --variable ROBOT_BROWSER:Chrome --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

test_OX_X_10_11_firefox_latest:
	robot --variable platform:"macOS Sierra" --variable browserName:Firefox --variable version:latest --variable ROBOT_BROWSER:Firefox --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

test_Windows_10_chrome_latest:
	robot --variable platform:"Windows 10" --variable browserName:Chrome --variable version:latest --variable ROBOT_BROWSER:Chrome --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot
