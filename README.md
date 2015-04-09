# soundBash

Sometimes it is just nice to be able to play a film sample in conversation, or a random sound after a task has completed. I am well aware how trivial this is, but ultimately, its the little things that brighten an [otherwise dull day](https://www.youtube.com/watch?v=oOBbJw0MLvk)...



### Examples

play a sound from your sound library (based on filename)

    s martini.mp3

using a shortened form

    s mart

after some task

    rsync somebigfolderremote mylittlecreakinglaptop; randomsound;

These scripts are intended for use on a mac, though you could replace afplay with mpg123 (or similar) to use on linux (if you do, remove the g from gsort command).

## Usage

Download some sounds or copy some samples/tunes into a folder on your computer. You can organise in subfolders if you would like. There are a lot 

In .bash_profile

    sound_library="/Users/tom/system/sounds"
    . $script_directory"/soundbash/soundbash.sh"

Now you can use the commands listed above.