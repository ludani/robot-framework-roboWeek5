* Settings *
Library   Browser

* Test Cases *
Example Test
    New Browser     chromium     False
    New Page        http://parodifood.qaninja.academy/
    # Checkpoint
    Get Text        text=Nunca foi tão engraçado pedir comida

    Click           text=Estou com fome!
    Get Text        h1 strong    contains     Ta na hora de matar a fome!
    

    Click           css=.search-link
    Fill Text       css=input[formcontrolname="searchControl"]     Debuger
    
    Wait For Elements State     css=.place-info-box-content     visible     10
    Get Text        css=.place-info-box-content     contains      DEBUGER KING
    
    #think time
    Sleep           2
    Take Screenshot