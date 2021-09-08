Feature: Test department microservice

  Scenario: Create a new Department

    Given url 'http://localhost:9393/departments/'
    And request {"departmentName":"doctor","departmentAddress":"14233 Mertz Walks","departmentCode":"9790962126542"}
    When method Post
    Then status 200


  Scenario: get a department

    Given url 'http://localhost:9393/departments/'
    When method get
    Then status 200


  Scenario: Create a new department into the Queue

    Given url 'http://localhost:9393/departments/publish/'
    And request {"departmentName":"doctor","departmentAddress":"14233 Mertz Walks","departmentCode":"9790962126542"}
    When method Post
    Then status 200

