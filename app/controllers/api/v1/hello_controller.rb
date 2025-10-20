module Api
  module V1
    class HelloController < ApplicationController
      def index
        render json: { 
          message: "Hello! Blog API'ye hoş geldiniz!",
          version: "1.0",
          endpoints: {
            users: "/api/v1/users",
            categories: "/api/v1/categories",
            posts: "/api/v1/posts",
            tags: "/api/v1/tags"
          }
        }
      end
    end
  end
end
