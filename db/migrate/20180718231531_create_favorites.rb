class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      #{to_table} 外部キーとしてusersテーブルを参照する
      t.references :micropost, foreign_key: true
      t.timestamps
      
      t.index [:user_id, :micropost_id], unique: true
    end
  end
end
