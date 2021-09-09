Feature: New Student Enrollment along with Search

  Scenario: A new Student is successfully enrolled
    Given A Student with following attributes
      | firstName   | Mohammad |
      | lastName    | Shaqib  |
      | class       | 1A     |
      | nationality | Indian |
    When I "POST" student JSON to "/enrollment/student" endpoint
    Then Student should be enrolled in System
    When I fetch students for class "2C"
    Then I get 1 student from fetch students API
