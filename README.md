# Gource animation with multiple repositories

How to run in Windows:

```
docker run -it --rm --name gource -v c:\dev\videos\repos:/repos -v c:\dev\videos\results:/results -v c:\dev\videos\avatars:/avatars -v c:\dev\videos\mp3:/mp3s --env GOURCE_ARGS="--title 'Hercules 2020' --logo /repos/logo.png" super-gource
```

## Troubleshooting

This docker file currently does not work well, and when gource renders the animation to the PPM format, it occurs a memory access violation error that I did not spent much time trying to correct.

So, this step can be performed manually with a command like this:

```
gource c:\dev\videos\results\combined.txt -r 60 --auto-skip-seconds 1 --max-file-lag 0.1 --stop-at-end "-1920x1080" --user-image-dir c:\dev\videos\avatars/ --highlight-all-users -s 0.5 --start-position 0.30438 --seconds-per-day 0.4 --bloom-intensity 0.5 --bloom-multiplier 0.5 --hide dirnames,filenames,mouse --title 'Hércules - Jornada 2020' --date-format "%d/%m/%y" --logo c:\dev\videos\repos\logo.png -o c:\dev\videos\results\gource.ppm
```
