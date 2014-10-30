class CreateMediaRankers < ActiveRecord::Migration
  def change
    create_table :media_rankers do |t|

      t.timestamps
    end
  end
end
