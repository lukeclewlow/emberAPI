module API
  module V1
    class Tunes < Grape::API
      include API::V1::Defaults

      resource :tunes do
        desc "Return all tunes"
        get "", root: :tunes do
          Tune.all
        end

        desc "Return a tune"
        params do
          requires :id, type: String, desc: "ID of the tune"
        end
        get ":id", root: "tune" do
          Tune.where(id: permitted_params[:id]).first!
        end

        desc "Return a genre of tunes"
        params do
          requires :genre_id, type: String, desc: "ID of the genre"
        end
        get ":genre_id", root: "tune" do
          Tune.where(genre_id: permitted_params[:genre_id]).first!
        end
      end
    end
  end
end