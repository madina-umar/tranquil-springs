Feature:

  Background:
    Given I navigate to Project website
    Then I click "Settings" link

  @sanity @smoke
  Scenario: Refreshing and getting title of the page
    Then Refreshing page
    And Getting title of the page

  @regression @sprint1 @plan-8
  Scenario Outline:Adding new items to Fixed Income types
    Then Adding <newInput> to Fixed income window
    Then I am pressing "Enter" button
    Then I am verifying <expected> displayed in Fixed Income  field
    And I am deleting <deleting> entry from the field
    Examples:
      | newInput                                          | expected                                          | deleting                                          |
      | "Dividends"                                       | "Dividends"                                       | "Dividends"                                       |
      | "Mention"                                         | "Mention"                                         | "Mention"                                         |
      | "Robot taxi"                                      | "Robot taxi"                                      | "Robot taxi"                                      |
      | "2309 92 !~ qj"                                   | "2309 92 !~ qj"                                   | "2309 92 !~ qj"                                   |
      | "Akiwikovovbobviqcbvkpoch78338vpoqkjaiodcihvuerw" | "Akiwikovovbobviqcbvkpoch78338vpoqkjaiodcihvuerw" | "Akiwikovovbobviqcbvkpoch78338vpoqkjaiodcihvuerw" |
      | "//@@++!{})(><?$#^*@)#^%^!()#_)#))_(!@$*!@&$^!"   | "//@@++!{})(><?$#^*@)#^%^!()#_)#))_(!@$*!@&$^!"   | "//@@++!{})(><?$#^*@)#^%^!()#_)#))_(!@$*!@&$^!"   |




  @regression @negative @sprint1 @plan-8
  Scenario:Adding spaces to Fixed Income types
    And Adding "    " to Fixed income window
    Then I am pressing "Enter" button
    Then I am verifying "   " is not displayed


#      Plan-9

  @regression @positive @sprint1 @plan-9 @smoke
  Scenario: Verifying added Fixed income is displayed in as a option for new entry on income page
    And Adding "Dividends" to Fixed income window
    Then I am pressing "Enter" button
    Then I am verifying "Dividends" displayed in Fixed Income  field
    Then I click "Income" link
    Then I verify the fields from dropdown "Type"
      | Type      |
      | Salary    |
      | Rental    |
      | Dividends |
    Then I click "Settings" link
    And I am deleting "Dividends" entry from the field

  @regression @positive @sprint1 @plan-9
  Scenario: Verifying added Robot taxi Fixed income is displayed in as a option for new entry on income page
    And Adding "Robot taxi" to Fixed income window
    Then I am pressing "Enter" button
    Then I am verifying "Robot taxi" displayed in Fixed Income  field
    Then I click "Income" link
    Then I verify the fields from dropdown "Type"
      | Robot taxi |
    Then I click "Settings" link
    And I am deleting "Robot taxi" entry from the field

  @regression @positive @sprint1 @plan-9
  Scenario: Verifying added 15% Fixed income is displayed in as a option for new entry on income page
    And Adding "15% of company ownership (QCLN)" to Fixed income window
    Then I am pressing "Enter" button
    Then I am verifying "15% of company ownership (QCLN)" displayed in Fixed Income  field
    Then I click "Income" link
    Then I verify the fields from dropdown "Type"
      | 15% of company ownership (QCLN) |
    Then I click "Settings" link
    And I am deleting "15% of company ownership (QCLN)" entry from the field

  @regression @negative @sprint1 @plan-9
  Scenario: Verifying added Fixed income is displayed in as a option for new entry on income page
    And Adding "093875 -- ! @` ke" to Fixed income window
    Then I am pressing "Enter" button
    Then I am verifying "093875 -- ! @` ke" displayed in Fixed Income  field
    Then I click "Income" link
    Then I verify the fields from dropdown "Type"
      | 093875 -- ! @` ke |
    Then I click "Settings" link
    And I am deleting "093875 -- ! @` ke" entry from the field

  @regression @negative @sprint1 @plan-9 @sanity
  Scenario: Verifying added Fixed income is displayed in as a option for new entry on income page
    And Adding "Hello and welcome to 'Planet Money' podcast." to Fixed income window
    Then I am pressing "Enter" button
    Then I am verifying "Hello and welcome to 'Planet Money' podcast." displayed in Fixed Income  field
    Then I click "Income" link
    Then I verify the fields from dropdown "Type"
      | Hello and welcome to 'Planet Money' podcast. |
    Then I click "Settings" link
    And I am deleting "Hello and welcome to 'Planet Money' podcast." entry from the field


# P-10

  @regression @positive @sprint1 @plan-10
  Scenario:Adding and verifying  Fixed cost is displayed in as a option for new entry on Expense page
    Then I click "Settings" link
    Then Adding "Car service" to Fixed Cost to window
    Then Pressing "Cost Enter" button
    Then I click "Expense" link
    Then I verify the fields from dropdown "Type"
      | Car service |
    Then I click "Settings" link
    And I am deleting "Car service" entry from the field

  @regression @positive @sprint1 @plan-10
  Scenario:Adding and verifying  Fixed cost is displayed in as a option for new entry on Expense page
    Then I click "Settings" link
    Then Adding "Online subscriptions(AWS,QB,Music!)" to Fixed Cost to window
    Then Pressing "Cost Enter" button
    Then I click "Expense" link
    Then I verify the fields from dropdown "Type"
      | Online subscriptions(AWS,QB,Music!) |
    Then I click "Settings" link
    And I am deleting "Online subscriptions(AWS,QB,Music!)" entry from the field


  @negative @sprint1 @plan-10
  Scenario:Adding and verifying  Fixed cost is displayed in as a option for new entry on Expense page
    Then I click "Settings" link
    Then Adding "??~ //@123445567788900-=Online subscriptions(AWS,QB,Music!)" to Fixed Cost to window
    Then Pressing "Cost Enter" button
    Then I click "Expense" link
    Then I verify the fields from dropdown "Type"
      | ??~ //@123445567788900-=Online subscriptions(AWS,QB,Music!) |
    Then I click "Settings" link
    And I am deleting "??~ //@123445567788900-=Online subscriptions(AWS,QB,Music!)" entry from the field

  @negative @sprint1 @plan-10
  Scenario:Adding and verifying  Fixed cost is displayed in as a option for new entry on Expense page
    Then I click "Settings" link
    Then Adding "Hello@yahoo.com" to Fixed Cost to window
    Then Pressing "Cost Enter" button
    Then I click "Expense" link
    Then I verify the fields from dropdown "Type"
      | Hello@yahoo.com |
    Then I click "Settings" link
    And I am deleting "Hello@yahoo.com" entry from the field

  @negative @sprint1 @plan-10
  Scenario:Adding and verifying  Fixed cost is displayed in as a option for new entry on Expense page
    Then I click "Settings" link
    Then Adding "      " to Fixed Cost to window
    Then Pressing "Cost Enter" button
    Then I click "Expense" link
    Then I am verifying "   " is not displayed

