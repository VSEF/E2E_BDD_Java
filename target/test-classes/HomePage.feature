Feature: Home Page is available
  Background:
  Given User enters "https://www.rms.com"

  Scenario: User can navigate to the Home Page
    Then User should be on the Home Page with title - "Risk Management Solutions - RMS"

  Scenario Outline: Tabs by clicking are available
    When Click on the on "<name>" tab
    Then The "<name2>" window should be open
    Examples:
      | name         | name2        |
      | Ecosystem    | Ecosystem    |
      | How We Serve | How We Serve |

  Scenario Outline: Tabs by moving cursor are available
    When User move cursor on the "<name>" tab
    Then User should see "<name2>" sub_tab
    Examples:
      | name                 | name2    |
      | Products & Services  | SOFTWARE |
      | Resources & Insights | NEWSROOM |