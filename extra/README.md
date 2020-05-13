Below is a list of all the questions I was asked during this test automation workshop:

1. Is TestProject a free tool? YES, TestProject is completely free.

2. Can we convert/import an existing Selenium project into TestProject? YES, since TestProject SDK is powered by standard Selenium and Appium API commands, you can easily convert your existing Selenium project into TestProject (no need to change your test logic or learn new APIs).

TestProject extends the driver classes by adding extra functionality under the `testproject()` property. In a nutshell, in order to get started for a seasoned Selenium/Appium developer, it’s enough to obtain a Driver instance after implementing one of the relevant interfaces, that is injected into the execute() method, from the passed `helper` variable, like this: `helper.getDriver()`

3. Can existing Addons be customized? NO, but you can create your own Addons and add them to your project. You can also share your requests with the TestProject team (in the built-in app’s chat or forum) and they will help you develop Addons. Also, some addon’s code is open source and you can use that to easily extend them if you wish.

4. Is it required to have experience in a programming language while using TestProject? NO, you can use TestProject even if you do not have any coding skills, using their record and playback functionality and incorporate Addons to enhance those tests even further. However, it’s always good to have basic programming knowledge.

5. Does TestProject support Angular based web automation? YES, TestProject supports Angular based web automation.

6. Can we run test cases in parallel? YES, you can set several jobs to run at the same time, each executing on a different Agent. In addition, you can use TestProject Agents running in Docker containers to easily setup a virtual lab to run your tests in parallel.

7. Is it the same as Selenium Grid? NO, Selenium Grid requires a different system to work as host and node, but here in TestProject you do not need to build any master architecture, it is all already wrapped in the Agent for you.

8. As our tests will be on cloud, how do they ensure data privacy, availability and data recovery? TestProject takes security very serirosly as can be seen in their Security page here: https://testproject.io/security/. It’s also important to mention that everything runs locally on-premise since the TestProject Agent is a local component installed on your machine. Meaning, actions such as: Test executions, Test development, Test recording are performed on-premise.

The only data that is stored in the TestProject cloud is:
Reports
User management
Test parameters (can be encrypted via “secret params” feature)
Tests, stored in a secured and encrypted S3 AWS environment. Although you can also generate code from your recorded tests and store those locally as well.
The data and communication between the TestProject agent and the cloud is completely encrypted. The reason TestProject web application is stored in the cloud is to ensure users get high availability and eliminate the need for server maintenance.
9. Is it a drag and drop based automation?  YES, if you use their recorder, it is based on recording of step and making that flow as an automated test case.

10. Does it support page object model? YES, TestProject supports Page Object Model, as can be seen in their official Docs here. All elements can be stored in the shared testing repository for easy management.

11. Does it support desktop applications automation? No, TestProject is as of now for web, mobile and API testing.

12. Is TestProject open source? Though completely free, TestProject is not open sourced but rather based on top of leading open source tools Selenium and Appium. Many of their Addons are open sourced and you can find them in their GitHub page: https://github.com/testproject-io/addons.

13. What learning curve we can make once we use TestProject?  You will learn a full fledged test automation tool which can perform end to end testing with a very quick learning curve.

14. Is there any support for conditional and looping statement? With coded tests you can easily achieve that using TestProject Java or C# SDK. If you want to do so using the recorder, you can have a look at an if-else example described in their forum here.

15. Is it an individual user based or can we have an enterprise account for the entire team? You can add as many team members as you want for FREE (no enterprise) for all projects and even for just specific projects and you can all work easily together as a team.

16. What type of application is the Agent? The TestProject agent is a small executable that wraps Selenium and Appium and with one simple install you instantly have access to all browsers and connected devices on the machine you install it on. The agent is provided as a free download from the TestProject application. Once you have it installed and setup you are ready to go. You do not need any additional drivers or frameworks to get started. The TestProject agent takes care of consolidating together all the drivers for each browser and setting up Appium in the background so that you can seamlessly use any browers or devices.

17. Does Antivirus in the machine make TestProject Agent slow? NO, Antivirus should not slow down your TestProject Agent.

18. Is only CSV supported for Data sources? YES, currently you can only upload a CSV file to TestProject as your data source.

19. Can we add the Data source on a Test level rather than the Job level? YES, you can add the data source on a test level as well.

20. If I upload a CSV file from “data source” section can I use it in different applications? Yes, one data source can be used for more than one project/job.

21. Whenever you change a phone device in a test, will the same test recordings work? Because coordinates of screen will change? Since TestProject identifies elements and not coordinates, this should not be an issue and the same test recording should work.

22. How we can integrate with GIT? TestProject currently does not have a built in integration with Git, but you can integrate by using their external API documentation here.
