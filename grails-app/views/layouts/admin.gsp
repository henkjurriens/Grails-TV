
<html>
    <head>
        <title><g:layoutTitle default="Grails TV" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'presentation.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />				
    </head>
    <body>
        <div id="content">
          <div id="logo">
          <img src="/images/GTV-logo-100.png"><h1> Admin</h1>
          </div>

          <g:render template="/layouts/admin-menu"/>

          <div id="page">
            <g:layoutBody />
          </div>
        </div>
    </body>
</html>