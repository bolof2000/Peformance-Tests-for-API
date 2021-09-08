Feature: create article

  Background: Define url
    Given url 'https://conduit.productionready.io/api/'

  Scenario: Create a new article

    Given path 'users/login'
    And request {"user": {"email":"testdata02@gmail.com","password":"testdata"}}
    When method Post
    Then status 200

    * def token = response.user.token

    Given header Authorization = 'Token ' + token

    Given path 'articles'
    And request {"article": {"tagList": [],"title": "Article creation","description": "test creation is here to stay","body": "creatre aricle content"}}
    When method Post
    Then status 200
    And match response.article.title == 'Article creation'



