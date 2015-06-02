module API
  module V1
    class Genres < Grape::API
      include API::V1::Defaults

      resource :genres do
        desc "Return all genres"
        get "", root: :genres do
          Genre.all
        end

        desc "Return all tunes within a certain genre"
        params do
          requires :id, type: String, desc: "ID of the genre"
        end
        get ":id", root: "tune" do
          Tune.where(genre_id: permitted_params[:id])
        end
      end

      resource :'tunes/genres' do
        desc "Return all tunes within a certain genre"
        params do
          requires :id, type: String, desc: "ID of the genre"
        end
        get ":id", root: "tune" do
          Tune.where(genre_id: permitted_params[:id])
        end
      end
    end
  end
end