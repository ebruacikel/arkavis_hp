class UpdatePagesAndSaveCategoriesFromPagesAsCategories < ActiveRecord::Migration
  def up
  	add_column :pages, :category_id, :integer

    Page.all.each do |p|		
			#wenn nicht existiert, leg an UND speicher in pages mit category_id
			cats = Category.where(:name => p.category)
			if cats.blank?
				new_category = Category.new
				new_category.name = p.category
				new_category.save
				
				p.category_id = new_category.id
				p.save
			else #falls es schon was gibt
				p.category_id = cats.first.id
				p.save
			end
    end

    remove_column :pages, :category

  end

  def down
  end
end
