class AuthController{
    user = null;

    constructor(id) {
        this.user = UserModel(id);
    }


    static function register(){
        ::print("huj");

        local kill = this.user.kills = 10;
        print(kill);

    }

    static function login(){

    }
}

