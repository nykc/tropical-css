<!--- sass directory structure
* Version: 1.0
* Author: Derek Ackley
* Date: 2014-27-09
-->

# Organize your sass files

Tropical css will use this directory structure to organize the sass files, this by
no means is the definitive way to do things but makes sense for most projects. Feel
free to modify to suit your own personal needs.

    sass/
    |
    |- base/
    | |- _reset.scss        # Reset/Normalize
    | |- _tropical.scss     # Tropical Grid, or anyother grid...
    | |- _typography.scss   # Typography Rules
    | ...                   # Etc...
    |
    |- components/
    | |- _buttons.scss      # Buttons
    | |- _carousel.scss     # Carousel
    | |- _forms.scss        # Forms
    | |- _modal.scss        # Modal
    | |- _navigation.scss   # Navigation
    | ...                   # Etc...
    |
    |- helpers/
    | |- _variables.scss    # Sass Variables
    | |- _functions.scss    # Sass Functions
    | |- _mixins.scss       # Sass Mixins
    | |- _helpers.scss      # Class & placeholders helpers
    | ...                   # Etc...
    |
    |- modules/
    | |- _header.scss       # Header
    | |- _footer.scss       # Footer
    | |- _sidebar.scss      # Sidebar
    | ...                   # Etc...
    |
    |- pages/
    | |- _home.scss         # Home page specific styles
    | |- _contact.scss      # Contact page specific styles
    | ...                   # Etc..
    |
    |- vendor/
    | |- _bootstrap.scss    # Bootstrap
    | |- _jquery-ui.scss    # jQuery UI
    | ...                   # Etc...
    |
    |
    `- main.scss            # Primary Sass file & global configs


