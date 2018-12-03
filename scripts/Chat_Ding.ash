/*
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
*/
void main(){
	if(get_property("Chat_Dings") == ""){
		set_property("Chat_Dings",1);
		print("initializing Value");
	}
	if(to_boolean((to_int(my_daycount()) == 1)) & to_boolean((to_int(get_property("Chat_Dings") > my_level())))){
		set_property("Chat_Dings",1);
		print("Resetting the Ding Counter, Welcome Back, N00b.");
	}
	if(to_int(get_property("Chat_Dings")) < my_level()){
			while(to_int(get_property("Chat_Dings")) < my_level()){
			set_property("Chat_Dings", to_int(get_property("Chat_Dings"))+1);
			chat_clan("Ding! "+"("+ to_int(get_property("Chat_Dings")) +")");
			print("Ding! "+"("+ to_int(get_property("Chat_Dings")) +")");
			wait(1);
		}
	}
}