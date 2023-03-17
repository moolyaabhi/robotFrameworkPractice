*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/localVariables.robot

*** Test Cases ***
Search Oneplus mobile on flipkart and add to cart
  Open flipkart
  Click on tab  Mobiles
  Search  oneplus
  Select item  OnePlus 11 5G (Titan Black, 256 GB)
  Add item to Cart
  Wait for item  OnePlus 11 5G (Titan Black, 256 GB)