class ComentariosController < ApplicationController
   def create
    @post = Post.find(params[:post_id])
    #@comentario = @post.comentarios.create(params[:comentarios])
    redirect_to post_path(@post)
    @comentario = @post.comentarios.new params.require(:comentario).permit(:autor, :conteudo)
  @comentario.save
   end
   def destroy
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to post_path(@post)
    
  end
   def edit
   end
   
   def edit
   end
   
   def show
     @comentario = @post.comentarios.find(params[:id])
   end
end