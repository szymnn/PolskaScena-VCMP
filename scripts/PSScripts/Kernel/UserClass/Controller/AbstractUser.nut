class AbstractUser{
    user = array(10000,null);
    player = null;
    Player = null;

    constructor(plr) {
        this.user[plr.ID] = UserModel();
        this.player = this.user[plr.ID];
        this.Player = plr;
    }
}