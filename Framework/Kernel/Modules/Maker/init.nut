function onConsoleInput(  cmd=null, text=null, last_cmd=null, table=null, column=null, types=null, def=null )
{
    try {
        if( cmd == "make") {
            if(text){
                ::print("dfddf");
            }
            if(text=="module") {
                ::print("module");
                ::system("cd  "+path+" && .Module.sh");
            }
            else{
                throw("Select one value from the list and then type /make <type>");
            }
        }

    }
    catch(e) ::error("[FRAMEWORK ERROR]: " + e + "\n");
}