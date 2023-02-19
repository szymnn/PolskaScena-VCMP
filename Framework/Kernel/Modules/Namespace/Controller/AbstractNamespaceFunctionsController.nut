class AbstractNamespaceFunctionsController {
    Namespace = "";
    Class = "";

    constructor(var) {
        this.Namespace = var;
    }

    function NamesaceExistsFunction(){
        try{
//            local a = ::system("cd "+getenv("HOME")+"/SH && ./Namespace.sh");
//            ::print(a);
//            local a = file("/home/vcmp/Modules/Namespace/namespaces.txt","r");
//            ::print(a.len());
//            ::print(a.eos());
//            foreach(line in a){
//                ::print(line)
//            }
        }catch(e){
            ::print(e);
        }

    }
}