class users {
  $usersvar = hiera('users')
  create_resources('user',$usersvar)
}

