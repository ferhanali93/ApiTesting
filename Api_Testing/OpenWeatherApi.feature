Feature: Open Weather Api (Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key})

Scenario: Valid call to the endpoint shall return data about CityName= New York City
    Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    And Request-Type: GET
    And Params: KEY=q Value=Queens
    And Params: KEY=Appid Value=7ddfe3c637a739e7e915f1b167d2bac9
    When Make a call to the /data/2.5/weather
    Then Verify data information about CityName=New York City in the response body

Scenario: Valid api call to the endpoint shall return status code 200 OK
    Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    And Request-Type: GET
    And Params: KEY=q Value=New York City
    And Params: KEY=Appid Value=7ddfe3c637a739e7e915f1b167d2bac9
    When Make a call to the /data/2.5/weather
    Then verify status code of 200 OK 

Scenario: Valid api call to the endpoint shall return content-Type: application/json in the response header
    Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    And Request-Type: GET
    And Params: KEY=q Value=New York City
    And Params: KEY=Appid Value=7ddfe3c637a739e7e915f1b167d2bac9
    When Make a call to the /data/2.5/weather
    Then Verify Content_Type: application/json in response header

Scenario: Valid api call to the endpoint shall return Xml format response body
    Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    And Request-Type: GET
    And Params: KEY=q Value=New York City
    And Params: KEY=Appid Value=7ddfe3c637a739e7e915f1b167d2bac9
    And Params: KEY=mode Value=Xml
    When Make a call to the /data/2.5/weather
    Then Verify response body for the data in Xml format

Scenario: Valid api call to the end point shall return content_Type: application/Xml
    Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    And Request-Type: GET
    And Params: KEY=q Value=New York City
    And Params: KEY=Appid Value=7ddfe3c637a739e7e915f1b167d2bac9
    And Params: KEY=mode Value=Xml
    When Make a call to the /data/2.5/weather
    Then Verify response header for content-Type: application/xml

Scenario: Valid api cal to the end point shall return <Country> tag to US
    Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    And Request-Type: GET
    And Params: KEY=q Value=New York City
    And Params: KEY=Appid Value=7ddfe3c637a739e7e915f1b167d2bac9
    And Params: KEY=mode Value=Xml
    When Make a call to the /data/2.5/weather
    Then Verify response body for <Country> tag for US

Scenario: Valid api call to the end point shall return <timeZone> tag value for -18000
    Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    And Request-Type: GET
    And Params: KEY=q Value=New York City
    And Params: KEY=Appid Value=7ddfe3c637a739e7e915f1b167d2bac9
    And Params: KEY=mode Value=Xml
    When Make a call to the /data/2.5/weather
    Then Verify Response body for <timezone> tag value of -18000

Scenario: Valid api call to the end point shall return Server value=openresty in response header
    Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    And Request-Type: GET
    And Params: KEY=q Value=New York City
    And Params: KEY=Appid Value=7ddfe3c637a739e7e915f1b167d2bac9
    And Params: KEY=mode Value=Xml
    When Make a call to the /data/2.5/weather
    Then Verify Response header for server Value=openresty