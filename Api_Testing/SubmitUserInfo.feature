Feature: Submit User inforamtion

Scenario: Make a valid api call to submit user information and validate user Id
    Given   Endpoint: https://5x9m5ed0tj.execute-api.us-east-1.amazonaws.com/test/submit
    And Request Type: POST
    And Headers Content-Type=application/json, Authorization=Bearer access_token
    And Body Application/json {
                                "name" : "Ferhan",
                                "id" : "2021-101"               
                                }
    When Make a call to the /test/submit end point 
    Then Verify response looks like below
        {
            "statusCode": 200,
            "userName": "2021-100Ferhan"
        }

Scenario: Make a valid api call to verify the status code 200 OK
    Given   Endpoint: https://5x9m5ed0tj.execute-api.us-east-1.amazonaws.com/test/submit
    And Request Type: POST
    And Headers Content-Type=application/json, Authorization=Bearer access_token
    And Body Application/json {
                                "name" : "Ferhan",
                                "id" : "2021-101"               
                                }
    When Make a call to the /test/submit end point 
    Then Verify the status code 200 OK

Scenario: Make a valid api call to to verify the content-Type: application/Json in the response header
    Given   Endpoint: https://5x9m5ed0tj.execute-api.us-east-1.amazonaws.com/test/submit
    And Request Type: POST
    And Headers Content-Type=application/json, Authorization=Bearer access_token
    And Body Application/json {
                                "name" : "Ferhan",
                                "id" : "2021-101"               
                                }
    When Make a call to the /test/submit end point 
    Then Verify that the content-Type: application/Json

