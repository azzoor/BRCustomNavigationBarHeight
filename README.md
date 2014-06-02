BRCustomNavigationBarHeight
===========================

Adjust the height of the custom navigation bar. Note this is evil and should never be performed without parental supervision.

Installation
===========================
    1. Add the file .h .m of UINavigationBar+CustomHeight to your parent view for the navigation controller.
    2. Import the "#import "UINavigationBar+CustomHeight.h"" to the top of your .m file.
    3. Add "[self.navigationController.navigationBar changeHeightAndColourOfBar];" to the awake from NIB.
    4. (Optional) Adjust the value of "NAVIGATIONBAR_HEIGHT" to the height you want the navigation bar to be. Default it is set to 80