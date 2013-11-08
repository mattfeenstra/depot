class CreateProducts < ActiveRecord::Migration


  def change

    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url

      # add some definitions to price
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end

  end


  def self.up

    create_table :products do |t|
      
      t.string 	:title
      t.text 	:description
      t.string 	:image_url
      t.decimal :price, :precision => 8, :scale => 2
      t.timestamps

    end
  end



  def self.down
    drop_table:products
  end





end
