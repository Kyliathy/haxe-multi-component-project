# Haxe Multi Component Project

A repository that demonstrates multiple Tech Stacks using Haxe.

The ideal editor for using this is VS Code, and we've provided here launch configurations for it, based on the explored Tech Stacks. Load the `HaxeMulti.code-workspace` and enjoy!

Wait. Before enjoying, you should run `npm install`. After that, you will also have to run `npx dts2hx LIBRARY` for the following libraries:
- express
- luxon
- cors / **IMPORTANT:** due to an issue with dts2hx, you'll also need to copy `.haxelib-patched/Cors.hx` to `.haxelib/cors/VERSION/cors/Cors.hx`
- source-map-support

This will generate the Haxe classes for you, required in the imports and specified in the `build.hxml` files.

The project is focused on:

- Smooth workflow via `Live Reload` & `Watch`
- Using internal libraries.
- Using external libraries.

# JavaScript Client Application

- Switch the `Haxe Configuration` to `build-client.hxml`. How? Down in the `Status Bar`, next to `Haxe`, you will see `Neko` as `Current Configuration`. Click there and change it to `build-client.hxml`. Note that you might have to scroll down in the popup list because there are a lot of configurations in this project.
- You can use it in two ways:
  - Launch `start-javascript-client-with-watch-and-live-reload.bat` in `HaxeRepro`. This will launch the project in **Live Reload Mode**. You are stuck with the Chrome debugger in this case.
  - Launch a debug session by choosing to run `JavaScript Client (HMCP)`. This has no Live Reload nor Watch, but allows you to debug in VS Code.
- Go to `http://127.0.0.1:3000` for the Express endpoint or `http://127.0.0.1:8000` for the Standard NodeJS HTTP endpoint.

# JavaScript Server Application (Node JS)

- Switch the `Haxe Configuration` to `build-node.hxml`. How? Down in the `Status Bar`, next to `Haxe`, you will see `Neko` as `Current Configuration`. Click there and change it to `build-node.hxml`. Note that you might have to scroll down in the popup list because there are a lot of configurations in this project.
- You can use it in two ways:
  - Launch `start-javascript-node-with-watch.bat` in `HaxeRepro`. This will launch the project in **Watch Mode**. You are stuck with the Chrome debugger in this case.
  - Launch a debug session by choosing to run `Attach to Node (HMCP)`. This has no Watch, but allows you to debug in VS Code.
- Go to `http://127.0.0.1:9000` for the Live Reload server. If you go to `http://127.0.0.1:8080` you'll get the non-Live Reload version.