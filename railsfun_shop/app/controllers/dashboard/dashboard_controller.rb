class Dashboard::DashboardController < ApplicationController
  before_action :authenticate_user      #驗證使用者登入
end

