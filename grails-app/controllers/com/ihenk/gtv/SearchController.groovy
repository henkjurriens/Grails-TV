package com.ihenk.gtv

class SearchController {

    def index = { }

    def show =  {


        def movies = Movie.findByTitleLike("%${params.q}%")

        def videos  = Video.findByTitleLike("%${params.q}%")

        def photos  = Photo.findByTitleLike("%${params.q}%")

        return  [ movies : movies,videos : videos, photos : photos ]
    }
}
