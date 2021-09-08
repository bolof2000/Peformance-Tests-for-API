Feature: Test department microservice

  Scenario: Create a new Department

    Given url 'http://localhost:9393/departments/'
    And request {"departmentName":"doctor","departmentAddress":"14233 Mertz Walks","departmentCode":"9790962126542"}
    When method Post
    Then status 200

