{"filter":false,"title":"sessions_controller.rb","tooltip":"/app/controllers/sessions_controller.rb","undoManager":{"mark":29,"position":29,"stack":[[{"start":{"row":2,"column":5},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":3,"column":2},"end":{"row":11,"column":5},"action":"insert","lines":["def new","  end","","  def create","    render 'new'","  end","","  def destroy","  end"],"id":3}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":5},"action":"remove","lines":["  def new","  end"],"id":4}],[{"start":{"row":0,"column":48},"end":{"row":1,"column":0},"action":"remove","lines":["",""],"id":5}],[{"start":{"row":4,"column":2},"end":{"row":6,"column":5},"action":"remove","lines":["def create","    render 'new'","  end"],"id":6},{"start":{"row":4,"column":2},"end":{"row":11,"column":7},"action":"insert","lines":["def create","    user = User.find_by(email: params[:session][:email].downcase)","    if user && user.authenticate(params[:session][:password])","      # Log the user in and redirect to the user's show page.","    else","      # Create an error message.","      render 'new'","    end"]}],[{"start":{"row":5,"column":2},"end":{"row":5,"column":4},"action":"remove","lines":["  "],"id":7}],[{"start":{"row":5,"column":2},"end":{"row":5,"column":4},"action":"insert","lines":["  "],"id":8}],[{"start":{"row":5,"column":2},"end":{"row":5,"column":4},"action":"remove","lines":["  "],"id":9}],[{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"remove","lines":["  "],"id":10}],[{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "],"id":11}],[{"start":{"row":5,"column":2},"end":{"row":5,"column":4},"action":"insert","lines":["  "],"id":12}],[{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"remove","lines":["  "],"id":13}],[{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"insert","lines":["  "],"id":14}],[{"start":{"row":11,"column":7},"end":{"row":12,"column":0},"action":"insert","lines":["",""],"id":15},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":12,"column":2},"end":{"row":12,"column":4},"action":"remove","lines":["  "],"id":16}],[{"start":{"row":12,"column":2},"end":{"row":12,"column":3},"action":"insert","lines":["e"],"id":17}],[{"start":{"row":12,"column":3},"end":{"row":12,"column":4},"action":"insert","lines":["n"],"id":18}],[{"start":{"row":12,"column":4},"end":{"row":12,"column":5},"action":"insert","lines":["d"],"id":19}],[{"start":{"row":12,"column":5},"end":{"row":13,"column":0},"action":"remove","lines":["",""],"id":20}],[{"start":{"row":8,"column":8},"end":{"row":9,"column":0},"action":"insert","lines":["",""],"id":21},{"start":{"row":9,"column":0},"end":{"row":9,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":9,"column":6},"end":{"row":9,"column":78},"action":"insert","lines":["flash[:danger] = 'Invalid email/password combination' # Not quite right!"],"id":22}],[{"start":{"row":9,"column":6},"end":{"row":9,"column":78},"action":"remove","lines":["flash[:danger] = 'Invalid email/password combination' # Not quite right!"],"id":23},{"start":{"row":9,"column":6},"end":{"row":9,"column":63},"action":"insert","lines":["flash.now[:danger] = 'Invalid email/password combination'"]}],[{"start":{"row":7,"column":6},"end":{"row":7,"column":61},"action":"remove","lines":["# Log the user in and redirect to the user's show page."],"id":24},{"start":{"row":7,"column":6},"end":{"row":8,"column":22},"action":"insert","lines":["log_in user","      redirect_to user"]}],[{"start":{"row":11,"column":6},"end":{"row":11,"column":32},"action":"remove","lines":["# Create an error message."],"id":25}],[{"start":{"row":11,"column":4},"end":{"row":11,"column":6},"action":"remove","lines":["  "],"id":26}],[{"start":{"row":11,"column":2},"end":{"row":11,"column":4},"action":"remove","lines":["  "],"id":27}],[{"start":{"row":11,"column":0},"end":{"row":11,"column":2},"action":"remove","lines":["  "],"id":28}],[{"start":{"row":10,"column":63},"end":{"row":11,"column":0},"action":"remove","lines":["",""],"id":29}],[{"start":{"row":0,"column":0},"end":{"row":17,"column":0},"action":"remove","lines":["class SessionsController < ApplicationController","  def new","  end","","  def create","    user = User.find_by(email: params[:session][:email].downcase)","    if user && user.authenticate(params[:session][:password])","      log_in user","      redirect_to user","    else","      flash.now[:danger] = 'Invalid email/password combination'","      render 'new'","    end","  end","  def destroy","  end","end",""],"id":31},{"start":{"row":0,"column":0},"end":{"row":18,"column":3},"action":"insert","lines":["class SessionsController < ApplicationController","","  def new","  end","","  def create","    user = User.find_by(email: params[:session][:email].downcase)","    if user && user.authenticate(params[:session][:password])","      log_in user","      redirect_to user","    else","      flash.now[:danger] = 'Invalid email/password combination'","      render 'new'","    end","  end","","  def destroy","  end","end"]}],[{"start":{"row":16,"column":2},"end":{"row":17,"column":5},"action":"remove","lines":["def destroy","  end"],"id":33},{"start":{"row":16,"column":2},"end":{"row":19,"column":5},"action":"insert","lines":["def destroy","    log_out","    redirect_to root_url","  end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":19,"column":5},"end":{"row":19,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1435014100958,"hash":"5ca343d3aff96ac62155e1778c8f5d1b4f989ba4"}