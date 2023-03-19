class AuthValidator {
    user = null;
    constructor(player){
        this.user = player;
    }

    static function Password(data){
        if(data.len()<2){
            return "Please give a password and retype";
        }
        if(data[0] != data[1]){
            return "Password complexicty";
        }
        else{
            return true;
        }

    }

    static function User(name){
        //odwolanie do repo
        //if(user exists w repo){ return "user exsists"}
        return true;
    }
}