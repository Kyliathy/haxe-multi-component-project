# Haxe Multi Component Project

A project that demonstrates the Haxe tech stack using VS Code and multiple targets &amp; components.

# JavaScript Client Application

- Load `HaxeRepro` in VS Code.
- Down in the `Status Bar`, next to `Haxe`, you will see `Neko` as `Current Configuration`. Click there and change it to `JavaScript`.
- Launch a debug session by choosing to run `JavaScript (Client)` (the other JavaScript target will compile for Node JS).

# Current issues

- No recompilation on Haxe files changes.
- No live reload in browser.
- Even on normal refresh, the browser still shows the old code, until a hard refresh is used.