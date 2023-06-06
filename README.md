set phoneNumber to "831-0051-6952"

set message to "Your phone has been infected with a virus! Contact 1-800-QUARANTINE for help."

tell application "Termux"

	set theBuddy to buddy phoneNumber

			send message to theBuddy

end tell
