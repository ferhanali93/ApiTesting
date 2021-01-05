Feature: Fiver Content Page 

Scenario: Fiver Content Marketing Page
    Given (Endpoint: https://www.fiverr.com/categories/online-marketing/content-marketing?source=side-menu)
    When Make a call to the /categories/online-marketing/content-marketing?source=side-menu end point
    Then Verify the fiver content marketing page.

Scenario: Valid call to the endpoint should return a status code 200 OK
    Given (Endpoint: https://www.fiverr.com/categories/online-marketing/content-marketing?source=side-menu)
    And Request Type: GET
    And Query Params: KEY=source Value=side-menu
    When Make a call to the /categories/online-marketing/content-marketing?source=side-menu end point
    Then Verify the status code of 200 Ok

Scenario: Valid call to the endpoint should return contect-Type: text/html; charset=utf-8

    Given (Endpoint: https://www.fiverr.com/categories/online-marketing/content-marketing?source=side-menu)
    And Request Type: GET
    And Query Params: KEY=source Value=side-menu
    When Make a call to the /categories/online-marketing/content-marketing?source=side-menu end point
    Then Verify content-Type is text/html; charset=utf-8

Scenario: Valid call to the endpoint should return Fiver <title> Content Marketers
    Given (Endpoint: https://www.fiverr.com/categories/online-marketing/content-marketing?source=side-menu)
    And Request Type: GET
    And Query Params: KEY=source Value=side-menu
    When Make a call to the the /categories/online-marketing/content-marketing?source=side-menu end point
    Then Verify the title of the Fiver page is Content Marketers

Scenario: Valid call to the endpoint should return a list of url in <head> about categories of online marketing
    Given (Endpoint: https://www.fiverr.com/categories/online-marketing/content-marketing?source=side-menu)
    And Request Type: GET
    And Query Params: KEY=source Value=side-menu 
    When Make a call to the /categories/online-marketing/content-marketing?source=side-menu end point
    Then Verify the <head> for the list of url about online marketing.

Scenario: Valif call to the end point should return a list of link categories in the footer section
    Given (Endpoint: https://www.fiverr.com/categories/online-marketing/content-marketing?source=side-menu)
    And Request Type: GET
    And Query Params: KEY=source Value=side-menu 
    When Make a call to the /categories/online-marketing/content-marketing?source=side-menu end point
    Then Verify the foot section links for different categories.
