class UserModel{
    register = false;
    login = false;
    pass = "";

    //stats
    kills = 0;
    deaths = 0;
    score  = 0;
    health = 100;
    armor = 0;

    static function getRepository(){
        return UserRepository();
    }

    // static function getKills(){
    //     return this.kills;
    // }

    // static function setDeaths(deaths){
    //     return this.deaths = deaths;
    // }

    // static function getDeaths(){
    //     return this.deaths;
    // }

}
