
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
      <script type='text/javascript'> var mp_protocol = (('https:' == document.location.protocol) ? 'https://' : 'http://'); document.write(unescape('%3Cscript src="' + mp_protocol + 'api.mixpanel.com/site_media/js/api/mixpanel.js" type="text/javascript"%3E%3C/script%3E')); </script> 
      <script type='text/javascript'> try {  var mpmetrics = new MixpanelLib('a94dda27cc928fbc7c9bef186497a3d8'); } catch(err) { null_fn = function () {}; var mpmetrics = {  track: null_fn,  track_funnel: null_fn,  register: null_fn,  register_once: null_fn, register_funnel: null_fn }; } </script>
      <script type="text/javascript">mpmetrics.track("visitor", { 'ip_address' : '#{request.env['REMOTE_ADDR']}', 'user_agent' : '#{request.env['HTTP_USER_AGENT'].gsub("'", ' -- ')}', 'referer' : '#{request.env['HTTP_REFERE']}' } );</script>
    </body>
  </html>
  ~
end
