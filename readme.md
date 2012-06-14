Music Folder Structure
=============
This Ruby script changes the folder structure from the iTunes format to the format I use.

It'll go from the iTunes format:

    /dir/to/music
    |~Bill Evans/
    | |+Portrait In Jazz/
    | |+Sunday at the Village Vanguard/
    | `+Waltz for Debby/
    |~Caravan Palace/
    | |+Caravan Palace/
    | `+Panic/
    `~Gorillaz/
      |+Demon Days/
      |+Gorillaz/
      `+Plastic Beach/
      
To the one I prefer:

    /dir/to/music
    |+Bill Evans - Portrait In Jazz/
    |+Bill Evans - Sunday at the Village Vanguard/
    |+Bill Evans - Waltz for Debby
    |+Caravan Palace - Caravan Palace/
    |+Caravan Palace - Panic/
    |+Gorillaz - Demon Days/
    |+Gorillaz - Gorillaz/
    `+Gorillaz - Plastic Beach/
    
Usage
-----
Clone the git repo

    git clone https://github.com/tomelm/folder-structure.git
    
Run the script

    ruby rename_music_folders.rb /path/to/music/dir
