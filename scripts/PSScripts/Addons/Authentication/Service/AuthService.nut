class AuthService extends AbstractUser{
    repo = null;
    constructor(plr){
        base.constructor(plr);
        this.repo = player.getRepository();
    }

    static function setStats(){
        //repo wyszukanie po Player.Name
        //local user = repo.findBy("name",player.Name);
       //
    }
}