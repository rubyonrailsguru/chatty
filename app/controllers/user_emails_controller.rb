class UserEmailsController < ApplicationController
 
 def new
   @user_email = UserEmail.new
 end
 
 def create
   @user_email = UserEmail.new(user_email_params)
   respond_to do |format|
     if @user_email.save
      UserMailer.welcome_email(@user_email).deliver!
      format.html { redirect_to(@user_email) }
     else
      format.html { render action: 'new' }
       format.json { render json: @user_email.errors, status: :unprocessable_entity }
     end
   end
 end
 
 def index
  @user_emails = UserEmail.all
 end

 def show
  @user_email = UserEmail.find(params[:id])
 end

 private

   def user_email_params
     params.require(:user_email).permit(:email,:body ,:subject ,:attachment)
   end
end