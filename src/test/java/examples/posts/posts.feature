Feature: sample karate test script for posts

  Background:
    * url baseUrl

  Scenario Outline: check data consistency
    Given path 'posts', <id>
    When method get
    Then status 200
    And match response.userId == <userId>
    Examples:
      | id | userId |
      | 1  | 1      |
      | 2  | 1      |
      | 12 | 2      |
      | 44 | 5      |
