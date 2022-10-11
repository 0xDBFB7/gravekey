

To minimize the number of keystrokes. Auto-updating on save is okay for HTML, but I tend to save much more frequently than I run code, so this gets in the way. You can use an IDE where F5 autoruns a build, but this is only effective where you're running the IDE. 

The kicker is that whatever you use needs to forcibly kill the previous process. 

I auto-run a command using the grave key on the keyboard using xbindkeys. This has worked fantastic for me. 

prepare grave script:





echo "cd ${PWD} && python jumps.py " > ~/.gravekey

chmod +x ~/.gravekey



cat .xbindkeysrc 

"pkill -SIGQUIT xterm || true && sleep 0.2 && xterm -hold -e "~/.gravekey""              
grave 



should have an "activate" script in each directory that switches the gravekey around

I had xterm crash hard and bring down the wm -SIGQUIT is a lot safer.



Run xbindkeys using

~/Programs/xbindkeys/bin/xbindkeys -n