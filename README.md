# Chat_Ding.ash
KOL after-adventure script that will 'ding' in clan chat when you gain a level

What does it do?
----------------
This script will run after your adventures, and check if you gained a level. If you did, it will type "Ding!" in clan chat.

How do I use it?
----------------
First, install it by running this command in KoLmafia's graphical CLI:

<pre>
svn checkout https://github.com/infopowerbroker/Chat_Ding/branches/release/
</pre>

Once it's installed, type the following commands: 

In the Graphical CLI frame, run the following commands:
<pre>
		set relayRunsAfterAdventureScript=true
		set afterAdventureScript=Chat_Dings.ash
</pre>
	Now, Mafia will "Ding!" in chat whenever you level up (after the combat adventures)
	
	The script can be disabled by running this command:
<pre>
		set afterAdventureScript=
</pre>
	Mafia aliases are useful for shortening the commands, e.g. like this:
<pre>	
		alias dingon => set afterAdventureScript=Chat_Dings.ash
		alias dingoff => set afterAdventureScript=
</pre>	
	Then it can be enabled/disabled with dingon/dingoff
!!First Time Run Warning!!
----------------
The first time you run this script, it will 'catch up' to your current level, which may spam chat.
You can avoid this by typing the following command in the CLI, where [Your Current Level] is your level (ex: 15)
<pre>
set Chat_Dings [Your Current Level]
</pre>
an example:
<pre>
set Chat_Dings 15
</pre>
