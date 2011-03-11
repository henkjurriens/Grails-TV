<html>
    <head>
    	<meta name="layout" content="home" />
    </head>
    <body>
       <gtv:setActiveMenu menu="${params.id}"/>

       <g:render template="menu"/>

       <div id="page">
         <table>

             <g:def var="media" value="${params.id}" />

             <g:each in="${content}" var="item">

                  <g:if test="${params.id == 'photos'}">
                      <div class="image" style="width : 150px; height : 150px">
                          <g:link action="detail" id="${item.id}" params="[media : media]"><img src="${item.thumbnail}" width="150" height="150"/></g:link>
                          <h2>${item.title}</h2>
                      </div>
                  </g:if>
                  <g:else>
                     <div class="image" >
                        <g:link action="detail" id="${item.id}" params="[media : media]"><img src="${item.image}" width="150" height="200"/></g:link>
                        <h2>${item.title}</h2>
                      </div>
                  </g:else>

             </g:each>

          </table>

       </div>



    </body>
</html>