<html>
    <head>
    	<meta name="layout" content="home" />
    </head>
    <body>
          <gtv:setActiveMenu menu="${params.id}"/>

          <g:render template="menu"/>


           <div id="page">

              <g:def var="media" value="${params.media}" />

              <h1>${item?.title}</h1>

              <g:if test="${params.media == 'photos'}">
                  <div >
                      <img src="/${item.image}"  height="400"/>
                  </div>

                  <p>${item?.description}</p>
              </g:if>
              <g:else>

                  <div class="image-large" >
                      <g:link action="play" id="${item.id}" params="[media : media]"><img src="${item.image}" width="300" height="400"/></g:link>
                  </div>

                  <p>${item?.description}</p>

              </g:else>


           </div>



    </body>
</html>