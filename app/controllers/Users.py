from system.core.controller import *

class Users(Controller):
    def __init__(self, action):
        super(Users, self).__init__(action)
        self.load_model('User')
        self.db = self._app.db

    def index(self):
        users = self.models['User'].fetch_all_users(session['user']['id'])
        return self.load_view('/users/index.html', users=users)

    def delete(self, id):
        result = self.models['User'].delete_user_by_id(id)
        return redirect('/users')

    def show(self, id):
        user = self.models['User'].fetch_user_by_id(id)
        return self.load_view('users/show.html', user=user)


    def logout(self):
        session.clear()
        return redirect('/')
        """
        A loaded model is accessible through the models attribute
        self.models['WelcomeModel'].get_users()

        self.models['WelcomeModel'].add_message()
        # messages = self.models['WelcomeModel'].grab_messages()
        # user = self.models['WelcomeModel'].get_user()
        # to pass information on to a view it's the same as it was with Flask

        # return self.load_view('index.html', messages=messages, user=user)
        """
