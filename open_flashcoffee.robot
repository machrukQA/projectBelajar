*** Settings ***
Documentation    Open Flash Coffee App
Library          AppiumLibrary


*** Variables ***
${delay}                    20
${btn_next}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[5]
${skipButton}               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]

${searchOpenShop}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]
${openShop}                 xpath=//*[@class='android.widget.TextView'][@text='07:00 - 21:00']
${burgerIcon}               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]
${sideMenu}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup
${languageMenu}             xpath=//*[@class='android.widget.TextView'][@text='Language']
${signInMenu}               xpath=//*[@class='android.widget.TextView'][@text='Sign In']
${SelectLanguage}           xpath=//*[@text='Select Language']
${IndoLanguage}             xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]
${saveButton}               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup
${BahasaMenu}               xpath=//*[@class='android.widget.TextView'][@text='Bahasa']
${MasukMenu}                xpath=//*[@class='android.widget.TextView'][@text='Masuk']


*** Test Cases ***
Open App
    Using Real Device
    Verify "Pick Up At" text is displayed
    Select an Open Shop (top)
    Click Burger button until side menu is displayed
    Verify "Sign In" and "Language" text are displayed
    Click "Language" until language menu is displayed
    Verify "Select Language" is displayed
    Select "Bahasa Indonesia" radio button
    Click Save button
    Click Burger button until side menu is displayed
    Verify "Bahasa" and "Menu" text are displayed
    Close the App



*** Keywords ***
Using Emulator
    Open Application         http://localhost:4723/wd/hub    platformName=Android   deviceName=emulator-5554    appPackage=com.flashcoffee   appActivity=com.flashcoffee.MainActivity  automationName=UiAutomator1  autoGrantPermissions=true   noSign=true

Using Real Device
    Open Application         http://localhost:4723/wd/hub    platformName=Android   deviceName=Redmi 8    appPackage=com.flashcoffee    appActivity=com.flashcoffee.MainActivity  automationName=UiAutomator1       autoGrantPermissions=true   noSign=true


Verify "Pick Up At" text is displayed
    wait until page contains element                ${skipButton}               ${delay}
    Click Element                                   ${skipButton}
    wait until page contains                        PICK UP AT                  ${delay}
    page should contain text                        PICK UP AT
Select an Open Shop (top)
    wait until page contains element                ${searchOpenShop}           ${delay}
    click element                                   ${searchOpenShop}
    wait until page contains element                ${openShop}                 ${delay}
    tap                                             ${openShop}
Click Burger button until side menu is displayed
    wait until page contains element                ${burgerIcon}               ${delay}
    click element                                   ${burgerIcon}
    wait until page contains element                ${sideMenu}                 ${delay}
Verify "Sign In" and "Language" text are displayed
    page should contain element                     ${languageMenu}
    page should contain element                     ${signInMenu}
Click "Language" until language menu is displayed
    click element                                   ${languageMenu}
    wait until page contains element                ${IndoLanguage}             ${delay}
Verify "Select Language" is displayed
    page should contain element                     ${SelectLanguage}
Select "Bahasa Indonesia" radio button
    click element                                   ${IndoLanguage}
Click Save button
    click element                                   ${saveButton}
Verify "Bahasa" and "Menu" text are displayed
    page should contain element                     ${BahasaMenu}
    page should contain element                     ${MasukMenu}
Close the App
    close application