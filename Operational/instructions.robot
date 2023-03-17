*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open flipkart
  Open Browser  ${siteUrl}  ${brows}
  Maximize Browser Window
  Click Button  ✕

Click on tab
  [Arguments]  ${tabName}
  Click Image  ${tabName}
  Sleep  5

Search
  [Arguments]  ${searchString}
  Input Text  q  ${searchString}
  Press Keys  q  ENTER
  Sleep  5

Select item
  [Arguments]    ${itemText}
  Scroll Element Into View  xpath://*[text()="${itemText}"]
  Click Link  ${itemText}
  Sleep  5

Add item to Cart
  Switch Window  NEW
  Scroll Element Into View  xpath://*[text()="Add to cart"]
  Click Element  xpath://*[text()="Add to cart"]
  Sleep  5
  

Wait for item
  [Arguments]  ${itemText}
  Click Link  xpath://*[text()="Cart"]/..
  Wait Until Element Is Visible  xpath://*[text()="${itemText}"]