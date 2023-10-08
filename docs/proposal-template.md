Team name: Bobcats

Team members: James McKevitt, Jack Bohannon, Parker Bernreuter, Kyle Scott

# Introduction

(In 2-4 paragraphs, describe your project concept)

For our project we decided to create a PC version of the game guitar hero. We plan on having a very similar layout with notes moving down the screen and the player having to strum at a certain time. To be more specific we are going to have 4 to 5 paths for notes to move on and at the bottom of the screen there will be corresponding stationary notes representing when the player should strum. For user input we plan to have key bindings for the specific notes along with a key binding for when the player needs to strum. The program will track whether or not you strum the specific notes when they move over the stationary notes at the bottom of the screen.

Along with the actual gameplay part of this project will be other features like a music library. For this we plan on using a python library to store all the different songs that we add to the project. To add the song we are going to code specific notes that correlate to the notes of the song and synchronize them during gameplay. Other features we plan on adding are things like difficulty settings and adding a scoring element to the game. If time allows it will also have a local multiplayer option that will allow two people to play at the same time.
      

# Anticipated Technologies

In preperation for starting our project, we have determined some technologies that we are anticipating needing.
    
* Python
* PyGame
* A Python library for playing music
* A way to import graphics and implement them in the game
* A graphical user interface (GUI)

# Method/Approach

We have layed out a plan for developing this project that involves going about the game in broken down steps.

### Create a the pygame window

*  We want to start by creating a window that displays the 5 notes that will be used in each song

### Take keyboard input

* Next we want to be able to link the 5 notes on the screen with keyboard input from 5 keys. 

### Load in music 

* Next we want to load the music in and play the music timed with the opening of the window.

### Load notes in coorelation with song

* Next we will need to create the individual notes that go along with the song and scroll down the screen.

### Check if the user input matches the song notes

* Next we will need to check if the user keyboard input is matching up with the notes going down the screen with the song.

### Manage score

* Finally we will need to track the score of the user by tracking notes missed and notes hit.

### If we have time

* At the end if we have extra time we would like to incorporate things like difficulty settings, better graphics, a larger library of songs, and possibly syncing a guitar hero guitar to use with the game.

# Estimated Timeline

* Study and practice with pyGame (2 weeks, mid October)
* Create GUI with notes that scroll across the screen, key inputs for hitting notes, score tracker, song selection, etc. (3-4 weeks, end of October)
* Upload music and sync with the notes on screen (2 weeks, mid-November)
* Debugging and finish testing (2 weeks, end of November)
* Presentation (December)

# Anticipated Problems

(Describe any problems you foresee that you will need to overcome)
* We are not very proficient with pyGame, this will take some studying/practice to get the hang of creating a working GUI with appropriate key inputs
* Syncing music with the notes on the screen requires precise timing to get the result we want. Anticipating a lot of trial and error