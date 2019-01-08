@updatedrole
Feature: Validate that US, DE and GB were returned in the response


  @regression
  Scenario Outline: user validates the response body from the search user API
    Given a genie user has an api to test is "http://services.groupkt.com/country/get/all"
    When a genie user searches the user with the "name"
    Then a genie user get the response from the search user api for the initial record for "<key>" is "<value>"
    Examples:
      | key                        | value      |
      | name                       | alpha2Code |
      |  United States of America  | US         |

