class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :gardener_id
     t.timestamps
    end

    add_index :documents, :gardener_id
    add_attachment :documents, :attachement
    end

   create_table :identity_documents do |i|
    i.integer :document_id
   end
  end
