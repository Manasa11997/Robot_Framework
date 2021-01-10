*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open India Bookstore
    Open Browser  ${url_books}  ${brows}
    Maximize Browser Window
    sleep  4s
    Execute Javascript  window.scrollTo(0, 500)
    Log to Console  Step1

 Navigate to Category "Fantasy & Science Fiction"
    click element  ${fantasy}
    sleep  3s
    Log to Console  Step2

Search for the book title 'Frankenstein: (penguin Classics Deluxe Edition)' in the Booklist
    click element  ${Select_Book}
    sleep  3s
    Log to Console  Step3

Review the book details
    click element  ${Book_Review}
    sleep  3s
    Log to Console  Step4

Click on Amazon Link
    select window  title=Buy Frankenstein (Penguin Classics Deluxe Edition) (Penguin Classics Deluxe editions) Book Online at Low Prices in India | Frankenstein (Penguin Classics Deluxe Edition) (Penguin Classics Deluxe editions) Reviews & Ratings - Amazon.in
    sleep  3s
    Log to Console  Step5

Add the Book to cart
    click element  xpath://*[@id="add-to-cart-button"]
    sleep  3s
    Log to Console  Step6

Verify 1 item added to cart
    click element  xpath://*[@id="hlb-view-cart-announce"]
    sleep  3s
    Log to Console  step7
    Log to Console  Pass!!

