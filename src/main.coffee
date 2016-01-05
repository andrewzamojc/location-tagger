Parse.initialize 'rcm8ngiAy0fdyPrOsMmr7WvD9GgYCYUrW2DROWOd', 'MoTIrboBLNqVO4UZOPvX5rcAoNCy6x9A2OFt6iSw'

angular.module('LocationTagger', []).controller 'SignUpController', ($scope) ->
  $scope.user =
    username: 'andrewzamojc@gmail.com'
    email: 'andrewzamojc@gmail.com'
    password: '12345'

  $scope.signUp = (userData) ->
    user = new (Parse.User)
    user.set 'username', userData.email
    user.set 'password', userData.password
    user.set 'email', userData.email
    console.log 'signing up'
    user.signUp null,
      success: (user) ->
        console.log user
        alert 'Success Finally!'
        return
      error: (user, error) ->
        console.log user
        alert 'Error: ' + error.code + '\n\nwhat is the error \n\n ' + error.message
        return
    return

  return
