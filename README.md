# OSProject
This repository create for save my project in subject operating systems
### Main topic in repository


## Batch file
* Topic in project
    * What is Batch file?
    * Basic batch file.
    * Example batch file on Windows
    * Exmaple batch file on Ubuntu(Linux)
    * Example batch file on Mac osx

* What is Batch file?
    * A batch file is a kind of script file in DOS, OS/2 and Microsoft Windows. It consists of a series of commands to be executed by the command-line interpreter, stored in a plain text file. A batch file may contain any command the interpreter accepts interactively and use constructs that enable conditional branching and looping within the batch file, such as IF, FOR, and GOTO labels. The term "batch" is from batch processing, meaning "non-interactive execution", though a batch file may not process a batch of multiple data.

* Filename extensions
    * windows xp or Newer versions: file name is
    * Linux : file name is .sh
    * Mac osx : file name is .sh
    * Linux and Mac os x file name is same. because base of operating system is unix it same.

* Basic Batch file
    > Example basic bacth file show text one screen.
    ```bat
    @Echo Hello World
    ```

    > Example basic batch file For loop.
    ```bat
    @Echo off
    @Echo This a loop show Hello world 10 times
    FOR /l %%a  in (1,1,10) do (
        @Echo Hello World %%a
    )
    pause
    ```
    > Example basic batch file goto loop.
    ```bat
    @Echo off
    @Echo This a loop show Hello world 10 times
    %%a = 0
    :Loop
        %%a += 1
        @Echo Hello World %%a
    if %%a < 10(
        Goto Loop
    )
    pause
    ```


