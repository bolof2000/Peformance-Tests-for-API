Feature: TTests for home page

  Scenario: get all tags

    Given url 'https://conduit.productionready.io/api/articles?limit=10&offset=0'
    When  method get
    Then status 200
