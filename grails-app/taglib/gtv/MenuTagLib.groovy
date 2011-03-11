package gtv

class MenuTagLib {

  static namespace = 'gtv'

   def menu = { attrs , body ->

     def clazz = ""


     if (attrs.id == session['menu'])
     {
       clazz =  ' class="active" '
     }


     def writer = out
         writer << '<a href="'
         writer << createLink(attrs).encodeAsHTML()
         writer << '"'

         writer << clazz

         writer << '>'
         // output the body
         writer << body()
         // close tag
         writer << '</a>'

   }

   def setActiveMenu = { attrs, body ->
       session['menu'] = attrs.menu
   }
}
