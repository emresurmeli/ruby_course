json.users @users do |user|
  json.user user

  json.accounts user.accounts do |account|
    json.account account
  end
end
