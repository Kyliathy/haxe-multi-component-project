# As the name says, this starts the Project as a Client Application. That is the one using using MainClient.hx.
# This will start THREE processes. The Haxe Compile Server and scripts to Watch and Live Reload when changes are detected.
# If you want to debug via Visual Studio code, you must also start a local web server by launching /export/start-client-server.bat (assuming you have http-server installed).

# If you don't like the Haxe Compile Server to be verbose, uncomment the line below.
# start cmd /k haxe --wait 6060

start cmd /k haxe -v --wait 6060
start cmd /k npm run watch
start cmd /k npm run dev

