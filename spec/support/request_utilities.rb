
def log_in( user )
  post user_session_path, user: { email: user.email, password: user.password}
  follow_redirect!
end
