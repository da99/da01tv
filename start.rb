
require 'sinatra'

get '/' do
  ahref = "http://www.megauni.com/salud/"
  %~
  <html>
    <head>
      <title>Moved.</title>
    </head>
    <body>
      <h1>This page has moved to:</h1>
      <h2>(Nueva direccion)</h2>
      <p><a href="#{ahref}">#{ahref}</a></p>
    </body>
  </html>
  ~
end
