--[[
 ───────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████████─██████─────────██████████████─██████─────────████████──████████─
─██░░░░░░░░░░██─██░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░██─────────██░░░░██──██░░░░██─
─██░░██████░░██─████░░████─██░░██─────────██░░██████████─██░░██─────────████░░██──██░░████─
─██░░██──██░░██───██░░██───██░░██─────────██░░██─────────██░░██───────────██░░░░██░░░░██───
─██░░██████░░██───██░░██───██░░██─────────██░░██████████─██░░██───────────████░░░░░░████───
─██░░░░░░░░░░██───██░░██───██░░██─────────██░░░░░░░░░░██─██░░██─────────────████░░████─────
─██░░██████████───██░░██───██░░██─────────██░░██████████─██░░██───────────────██░░██───────
─██░░██───────────██░░██───██░░██─────────██░░██─────────██░░██───────────────██░░██───────
─██░░██─────────████░░████─██░░██████████─██░░██████████─██░░██████████───────██░░██───────
─██░░██─────────██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██───────██░░██───────
─██████─────────██████████─██████████████─██████████████─██████████████───────██████───────
───────────────────────────────────────────────────────────────────────────────────────────
]]--
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_scripts {
	'@vrp/lib/utils.lua',
	'config.lua',
    'server.lua'
}

client_scripts {
	"lib/Tunnel.lua",
	"lib/Proxy.lua",
	'config.lua',
	'client.lua'
}

ui_page 'ui/index.html'

files {
	'ui/index.html',
	'ui/script.js',
	'ui/css/style.css'
}