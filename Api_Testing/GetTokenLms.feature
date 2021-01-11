Feature: Get LMS Token
    Scenario: Valid call to the endpoint shall return status code of 200 OK
    Given Endpoint: https://v57pmk39lf.execute-api.us-east-1.amazonaws.com/prod/user-auth
    And Request Type: POST
    And Basic Authorization: Username:Abc123 & Pass:********
    When Make a call to the endpoint /prod/user-auth
    Then Verify status code 200 OK

    Scenario: Valid call to the endpoint shall return access token in response body
    Given Endpoint: https://v57pmk39lf.execute-api.us-east-1.amazonaws.com/prod/user-auth
    And Request Type: POST
    And Basic Authorization: Username:Abc123 & Pass:********
    When Make a call to the endpoint /prod/user-auth
    Then Verify the access Token. 

    Scenario: Valid call to the endpoint shall return a long strong for a access token: value 
    Given Endpoint: https://v57pmk39lf.execute-api.us-east-1.amazonaws.com/prod/user-auth
    And Request Type: POST
    And Basic Authorization: Username:Abc123 & Pass:********
    When Make a call to the endpoint /prod/user-auth
    Then Verify that the access token is a long string.

    Scenario: Valid call to the endpoint shall return information about token expiration
    Given Endpoint: https://v57pmk39lf.execute-api.us-east-1.amazonaws.com/prod/user-auth
    And Request Type: POST
    And Basic Authorization: Username:Abc123 & Pass:********
    When Make a call to the endpoint /prod/user-auth
    Then Verify that access token expiration is available.

    Scenario: Valid call to the endpoint shall return 3600 seconds as a value of expiresIn.
    Given Endpoint: https://v57pmk39lf.execute-api.us-east-1.amazonaws.com/prod/user-auth
    And Request Type: POST
    And Basic Authorization: Username:Abc123 & Pass:********
    When Make a call to the endpoint /prod/user-auth
    Then Verify that access token value is 3600.

    Scenario: Valid call to the endpoint shall return information about the token and type of token.
    Given Endpoint: https://v57pmk39lf.execute-api.us-east-1.amazonaws.com/prod/user-auth
    And Request Type: POST
    And Basic Authorization: Username:Abc123 & Pass:********
    When Make a call to the endpoint /prod/user-auth
    Then Verify that Token type is Bearer

    Scenario: Valid call to the endpoint shall return success message in the response body
    Given Endpoint: https://v57pmk39lf.execute-api.us-east-1.amazonaws.com/prod/user-auth
    And Request Type: POST
    And Basic Authorization: Username:Abc123 & Pass:********
    When Make a call to the endpoint /prod/user-auth
    Then Verify that message: success
