# Overview

The purpose of this document is to outline the functional and non-functional requirements for our term project. 

# Functional Requirements

1. Main Menu
    1. Clicking the ‘Play’ button shall display a menu of available songs to play.
    2. Clicking the 'Control" button shall display a control menu. 
    3. Clicking the 'Quit' button shall exit the game.
    4. Clicking the 'Settings' button shall allow users to customize audio volume and visual effects.
    5. The main menu shall have background music playing 

2. Song Selection
    1. Clicking a song shall display a fret board and proceed to show the appropriate notes for the selected song.
    2. Users shall be able to choose from a selection of songs to play.
    3. Users shall have the ability to preview a selected song before starting gameplay.

3. Game Play
    1. The game shall have 5 different notes moving down the screen.
    2. Each note on the game screen shall be a different color.
    3. Points shall be awarded if a key input is read as the note crosses the end of the fret board.
    4. Playing incorrect notes shall hurt the user's score.
    5. When the player consecutively hits a series of corrent notes, a multiplier shall be applied to their score.
    6. The amount of notes consecutivley hit shall be displayed on the screen.
    7. Missing 15 notes total shall send the player to the lose screen.
    8. The player shall be able to return to song selection screen from game screen.
    9. If the user makes it through the whole song without losing the game, the game shall change to the win screen.
    10. If the user misses a note, the streak shall be set back to 0.

# Nonfunctional Requirements

1. Main Menu
    1. The background of every screen shall change depending on what menu the user is in.
    2. The main menu shall provide clear feedback visually or audibly.
    3. The main menu shall be intuitive and user friendly.
    4. The main menu shall load within 5 seconds of the game starting.

2. Song Selection
    1. The system shall load in the selected song quickly.
    2. The system shall be able to add new songs into the game easily.
    3. All song names shall be displayed for the player to see.

3. Game Play
    1. The game and its inputs shall play the same on any OS.
    2. Notes on the fret board shall line up according to the beat of the current song.
    3. The controls shall be easy to understand for all users.
    4. The game shall have little to no audio latency for a better user experience.
    5. The notes shall move down the screen at a speed that coincides with the beat of the selected song.
