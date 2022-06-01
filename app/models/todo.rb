class Todo < ActiveRecord::Base
    belongs_to :category

    def self.add_todo(text, category_id)
        Todo.create(text: text, category_id: category_id)
    end

    def delete_todo
        self.destroy
    end

    def update_todo(text, category_id)
        self.update(text: text, category_id: category_id)
    end

    def self.filter_todos(category)
        Todo.all.where(category_id: category)
    end
end