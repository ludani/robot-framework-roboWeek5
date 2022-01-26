* Settings *
Library   Browser

* Test Cases *
Deve buscar um único restaurante
    New Browser     chromium     False
    New Page        http://parodifood.qaninja.academy/
    # Checkpoint
    Get Text        text=Nunca foi tão engraçado pedir comida

    Click           text=Estou com fome!
    Get Text        h1 strong    contains     Ta na hora de matar a fome!
    

    Click           css=.search-link
    Fill Text       css=input[formcontrolname="searchControl"]     Debuger
    
    Wait For Elements State     css=div[class="place-info-box"][style="opacity: 1;"]
    Get Text        css=.place-info-box-content     contains      DEBUGER KING

    Get Element Count      css=.place-info-box     equal     1

    Take Screenshot