*** Settings ***
Documentation     ตัวอย่างการทดสอบสำหรับ Lab 8.5
Library           OperatingSystem

*** Test Cases ***
เช็คสถานะการทำงานของระบบ
    [Documentation]    ทดสอบการแสดงผลข้อความพื้นฐาน
    Log To Console    Robot Framework is working in Jenkins!
    Should Be Equal    1    1

ทดสอบความพร้อมของ Workspace
    List Directory    .
