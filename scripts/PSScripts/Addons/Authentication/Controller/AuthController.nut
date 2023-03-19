class AuthController extends AbstractUser{

    validator = null;

    constructor(plr){
        base.constructor(plr);
        validator = AuthValidator(plr);
    }


    static function register(data){

            local validatePass = validator.Password(data);

            if( validatePass == true){
              local validateUser = validator.User(Player.Name);
                //jak wyzej czyli
                //if(validateUser == true){ repo->saveUser() service=>setStats() }
                return "ok";
            }
            return validatePass;

    }


    static function login(){

    }
}

