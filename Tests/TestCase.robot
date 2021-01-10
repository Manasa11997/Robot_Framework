*** Settings ***
Library  SeleniumLibrary
Resource  ../Operations/AddingBook.robot
Resource  ../Operations/AllVariable.robot


*** Test Cases ***
User should be able to Land on Book details Page
    [Tags]    sanity
    Open India Bookstore
    Navigate to Category "Fantasy & Science Fiction"
    Search for the book title 'Frankenstein: (penguin Classics Deluxe Edition)' in the Booklist
    Review the book details
    Click on Amazon Link
    Add the Book to cart
    Verify 1 item added to cart
