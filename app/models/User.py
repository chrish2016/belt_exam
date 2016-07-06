from system.core.model import Model

class User(Model):
    def __init__(self):
        super(User, self).__init__()
        self.validation_errors = {
            'name_exist' : "Name can't be blank.",
            'alias_exist' : "Alias can't be blank.",
            'email_exist' : "Email can't be blank.",
            'dob_exist' : "Date of birth can't be blank.",
            'email_valid' : "Email must be valid.",
            'password_exist' : "Password can't be blank.",
            'password_match' : "Passwords must match.",
            'email_taken' : "Email already in use.",
            'alias_taken' : "Alias already taken.",
            'login_fail' : "Email/password don't match."
        }
        self.queries = {
            'create_user' : "INSERT INTO users (name, alias, email, dob, pw_hash, created_at, updated_at) VALUES( :name, :alias, :email, :dob, :pw_hash, NOW(), NOW())",
            'get_user' : "SELECT id, name, alias, email, dob, friend, admin, created_at, updated_at FROM users WHERE id = :id",
            'get_user_by_email' : "SELECT * FROM users WHERE email = :email LIMIT 1",
            'fetch_all_users' : "SELECT id, name, alias, email, admin, created_at, updated_at FROM users WHERE id != :id",
            'fetch_user_by_id' : "SELECT id, name, alias, email, dob, friend, admin, created_at, updated_at FROM users WHERE id = :id",
            'update_user' : "UPDATE users SET name=:name, alias=:alias, email=:email, dob=:dob WHERE id = :id",
            'delete_user' : "DELETE FROM users WHERE id = :id",
        }

    def fetch_all_users(self, id):
        query = self.queries['fetch_all_users']
        data = { 'id' : id}
        result = self.db.query_db(query, data)
        return result

    def delete_user_by_id(self, id):
        query = self.queries['delete_user']
        data = { 'id' : id }
        result = self.db.query_db(query, data)
        return result

    def fetch_user_by_id(self, id):
        query = self.queries['fetch_user_by_id']
        data = { 'id' : id }
        result = self.db.query_db(query, data)
        return result[0]
