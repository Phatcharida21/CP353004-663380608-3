*** Settings ***
Documentation     ตรวจสอบความพร้อมของระบบ Lab 8.5
Library           OperatingSystem

*** Test Cases ***
Verify GitHub Integration
    [Documentation]    ตรวจสอบว่าไฟล์จาก GitHub ถูกดึงมาที่ Workspace จริง
    List Directory    . 
    File Should Exist    Lab8/test/Lab8.robot

Verify Robot Framework Execution
    [Documentation]    ทดสอบการทำงานพื้นฐานของ Robot บน Jenkins
    ${status}    Set Variable    Ready
    Should Be Equal    ${status}    Ready
    Log To Console    System is ready for Deployment!
