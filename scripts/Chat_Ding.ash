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
	if(!(property_exists("Chat_Dings"))){
		set_property("Chat_Dings",my_level());
		print("initializing Value at level "+my_level());
	}
	
	if(to_boolean((to_int(my_daycount()) == 1)) & to_boolean((to_int(get_property("Chat_Dings") > my_level())))){
		set_property("Chat_Dings",1);
		print("Resetting the Ding Counter, Welcome Back, N00b.");
	}
	if(to_int(get_property("Chat_Dings")) < my_level()){
		If((my_level() - to_int(get_property("Chat_Dings")))>9){ 
			Print("Ding! Ding! Ding! ("+(my_level() - to_int(get_property("Chat_Dings")))+") levels jumped!");
		}
		else{
			while(to_int(get_property("Chat_Dings")) < my_level()){
			set_property("Chat_Dings", to_int(get_property("Chat_Dings"))+1);
			print("Ding! "+"("+ to_int(get_property("Chat_Dings")) +")");
			print("Telling Everyone in Chat: Ding! "+"("+ to_int(get_property("Chat_Dings")) +")");
			wait(1);
			}
		}
	}
}
