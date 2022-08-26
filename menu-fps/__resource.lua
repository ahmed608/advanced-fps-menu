resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

name "fps-menu"
description "fps-menu standlone"
author 'Egypt Studio & kh dev team'

ui_page "index.html"

client_script "client.lua"
server_script "server.lua"

files {
    "index.html",
    "style.css",
    "main.js",
    "img/*",
}
