Feature: Home Page is available
  Background:
  Given User enters "https://www.rms.com"

  Scenario: User can navigate to the Home Page
    Then User should be on the Home Page with title - "Risk Management Solutions - RMS"

  Scenario Outline: Tabs are available
    When Click on the on "<name>" tab
    Then The "<name2>" window should be open
    Examples:
      | name         | name2        |
      | Ecosystem    | Ecosystem    |
      | How We Serve | How We Serve |

  Scenario: Tab "Product & Services" is available
    When User move cursor on the "Products & Services" tab
    Then User should see "SOFTWARE" sub_tab