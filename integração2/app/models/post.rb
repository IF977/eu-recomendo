class Post < ActiveRecord::Base
    has_many :comentarios
    validates :titulo, :presence => true, :length => { :minimum => 10 }
    validates :conteudo, :presence => true
    has_attached_file :imagem, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "R.png"
    do_not_validate_attachment_file_type :imagem
end
