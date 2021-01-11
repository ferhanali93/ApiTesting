Feature: Submit LMS Token

    Scenario: valid api call to the endpoint shall return status code 200 Ok
    Given Endpoint: https://x4iytpvicb.execute-api.us-east-1.amazonaws.com/dashboard/students-enrolled-course?studentId=Ferhanali93
    And Request type: GET
    And studendId: Fer********
    And Bearer Token: ******************************
    When make a call to the endpoint /dashboard/students-enrolled-course
    Then Verify status code 200 OK

    Scenario: Valid api call to the endpoint shall return inforamation in response body
     Given Endpoint: https://x4iytpvicb.execute-api.us-east-1.amazonaws.com/dashboard/students-enrolled-course?studentId=Ferhanali93
    And Request type: GET
    And studendId: Fer********
    And Bearer Token: ******************************
    When make a call to the endpoint /dashboard/students-enrolled-course
    Then Verify that information is returned

    Scenario: Valid api call to the endpoint shall return data in json format
     Given Endpoint: https://x4iytpvicb.execute-api.us-east-1.amazonaws.com/dashboard/students-enrolled-course?studentId=Ferhanali93
    And Request type: GET
    And studendId: Fer********
    And Bearer Token: ******************************
    When make a call to the endpoint /dashboard/students-enrolled-course
    Then Verify that data data is in Json Format

    Scenario: Valid api call to the endpoint shall return success message
     Given Endpoint: https://x4iytpvicb.execute-api.us-east-1.amazonaws.com/dashboard/students-enrolled-course?studentId=Ferhanali93
    And Request type: GET
    And studendId: Fer********
    And Bearer Token: ******************************
    When make a call to the endpoint /dashboard/students-enrolled-course
    Then Verify that messsage: success

    Scenario: Valid api call to the endpoint shall return data about the student inforamtion
     Given Endpoint: https://x4iytpvicb.execute-api.us-east-1.amazonaws.com/dashboard/students-enrolled-course?studentId=Ferhanali93
    And Request type: GET
    And studendId: Fer********
    And Bearer Token: ******************************
    When make a call to the endpoint /dashboard/students-enrolled-course
    Then Verify that data about student information is returned

    Scenario: Valid api call to the endpoint shall return enrollmentID
    Given Endpoint: https://x4iytpvicb.execute-api.us-east-1.amazonaws.com/dashboard/students-enrolled-course?studentId=Ferhanali93
    And Request type: GET
    And studendId: Fer********
    And Bearer Token: ******************************
    When make a call to the endpoint /dashboard/students-enrolled-course
    Then Verify that enrollmentID=946330c1-fd1b-4734-9e02-9e741fbe4b50

    Scenario: Valid api call to the endpoint shall return studentID=Fer********
    Given Endpoint: https://x4iytpvicb.execute-api.us-east-1.amazonaws.com/dashboard/students-enrolled-course?studentId=Ferhanali93
    And Request type: GET
    And studendId: Fer********
    And Bearer Token: ******************************
    When make a call to the endpoint /dashboard/students-enrolled-course
    Then Verify that studendId=Fer********

    Scenario: valid api call to the endpoint shall return QA Automation Engineering as a course: value
    Given Endpoint: https://x4iytpvicb.execute-api.us-east-1.amazonaws.com/dashboard/students-enrolled-course?studentId=Ferhanali93
    And Request type: GET
    And studendId: Fer********
    And Bearer Token: ******************************
    When make a call to the endpoint /dashboard/students-enrolled-course
    Then Verify that course: QA Automation Engineering as a course

    Scenario: Valid api call to the endpoint shall return information about student Batch Number.
    Given Endpoint: https://x4iytpvicb.execute-api.us-east-1.amazonaws.com/dashboard/students-enrolled-course?studentId=Ferhanali93
    And Request type: GET
    And studendId: Fer********
    And Bearer Token: ******************************
    When make a call to the endpoint /dashboard/students-enrolled-course
    Then Verify that student batchNo: QAAE2003

    