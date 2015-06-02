module API
  module V1
    class Genres < Grape::API
      include API::V1::Defaults

      resource :genres do
        desc "Return all genres"
        get "", root: :genres do
          Genre.all
        end

        desc "Return a genre"
        params do
          requires :id, type: String, desc: "ID of the genre"
        end
        get ":id", root: "genre" do
          Genre.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end