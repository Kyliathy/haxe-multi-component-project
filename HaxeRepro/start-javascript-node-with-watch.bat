# As the name says, this starts the Project as a Server Application. That is the one using using MainNode.hx.
# This will start TWO processes. The Haxe Compile Server and script to Watch for changes. 
# Start the Node server by running /export/start-node.bat.

# If you don't like the Haxe Compile Server to be verbose, uncomment the line below.
# start cmd /k haxe --wait 6060

start cmd /k haxe -v --wait 6060
start cmd /k npm run watch-node

