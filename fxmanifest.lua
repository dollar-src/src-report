fx_version 'bodacious'
games { 'gta5' }

client_script "client.lua"

server_script  {
 "server.lua"

}

ui_page {
	'html/index.html',
}

shared_script {
	'shared.lua'
}
files {
	'html/fonts/*.woff',
	'html/fonts/*.woff2',
	'html/fonts/*.ttf',
	'html/css/*.css',
	'html/js/*.js',
	'html/index.html',
	"html/fonts/*.ttf",
	"html/fontawesome/css/*.css",
	'html/img/index.html',
	'html/img/*.jpg',
    'html/img/*.png'}
