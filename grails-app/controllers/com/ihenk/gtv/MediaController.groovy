package com.ihenk.gtv

import com.ihenk.gtv.Movie
import com.ihenk.gtv.Video
import com.ihenk.gtv.Photo

class MediaController {

    def index = {




      if (!params.id)
      {
        redirect(action:"index", id: "movies")
      }



      switch (params.id)
      {
        case "movies" :

          def content =  Movie.findAll()


           return [ content : content]


        case "video" :

          def content =  Video.findAll()

          return [ content : content]


        case "photos" :

          def content =  Photo.findAll()

          return [ content : content]

      }


    }


  def play = {

    def content


    switch (params.media)
        {
          case "movies" :

            content =  Movie.get(params.id).movie
            break



          case "video" :

             content =  Video.get(params.id).video
             break


          case "photos" :

            content =  Photo.findAll()

        }

      return  [movie : content]
  }


   def detail = {

      def item


      switch (params.media)
          {
            case "movies" :

              item  =  Movie.get(params.id)
              break



            case "video" :

               item =  Video.get(params.id)
               break


            case "photos" :

              item =  Photo.get(params.id)

          }

        return  [item : item]
    }

}
