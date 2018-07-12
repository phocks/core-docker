# Core Docker

An (almost successful) attempt to make CoreMedia run in a Docker container on Mac.

From: [https://hub.docker.com/r/phocks/core/](https://hub.docker.com/r/phocks/core/)

You need XQuartz installed.

Then go into Preferences and make sure in the Security tab that Allow connections from network clients is selected.

Then

open -a XQuartz
xhost + 127.0.0.1
docker run -it --rm -e DISPLAY=docker.for.mac.localhost:0 --name core phocks/core

Running Java Web Start from the ENTRYPOINT or CMD didn't seem to work for me so let's do it manually

javaws editor.jnlp

OR

javaws http://nucwed.aus.aunty.abc.net.au/editor/webstart/editor.jnlp

Note: It brings up the Windows in the center of 2 screens if you have 2 monitors and sometimes you can't input your password. Try switching to single screen mode to log in if necessary.
