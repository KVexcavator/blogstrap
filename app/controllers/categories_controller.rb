class CategoriesController<ApplicationController

  before_action :set_category, only: [ :show, :edit, :update, :destroy ]

  def index
    @categories=Category.all
  end

  def show
  end

  def new
    @category=Category.new
  end

  def create
    @category=Category.new(category_params)
    if @category.save 
      redirect_to categories_path, success: "Категория успешно создана!"
    else
     flash.now[:danger] = "Категория не создана!" 
     render :new
    end
  end

  def edit
  end

  def update
    if @category.update_attributes(category_params)
      redirect_to categories_path, success: "Категория успешно обновлена!"
    else
      flash.now[:danger] = "Категория не обновлена!"
      render :edit  
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, success: "Категория удалена!"
  end
    
  private

  def set_category
    @category=Category.find(params[:id])
  end  
  
  def category_params
    params.require(:category).permit(:name)
  end
end  