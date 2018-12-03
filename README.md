# Chat_Ding
a simple KOL after-action script to 'ding' in chat when you gain a level

	Instructions:

	Save this file to the "scripts" folder of mafia.

	In the Graphical CLI frame, run the following commands:

		set relayRunsAfterAdventureScript=true
		set afterAdventureScript=Chat_Dings.ash

	Now, Mafia will "Ding!" in chat whenever you level up (after the combat adventures)
	
	The script can be disabled by running this command:

		set afterAdventureScript=
	
	Mafia aliases are useful for shortening the commands, e.g. like this:
	
		alias dingon => set afterAdventureScript=Chat_Dings.ash
		alias dingoff => set afterAdventureScript=
	
	Then it can be enabled/disabled with dingon/dingoff
