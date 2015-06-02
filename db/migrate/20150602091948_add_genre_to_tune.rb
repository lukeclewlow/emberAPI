class AddGenreToTune < ActiveRecord::Migration
  def change
    add_reference :tunes, :genre, index: true, foreign_key: true
  end
end
