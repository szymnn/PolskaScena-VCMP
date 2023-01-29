class AbstractNamespaceFunctionsController {
    Namespace = "";
    Class = "";

    constructor(var) {
        this.Namespace = var;
    }

    function NamesaceExistsFunction(){
        try{
//            local a = ::system("cd "+getenv("HOME")+"/SH && ./namespace.sh");
//            ::print(a);
//            local a = file("/home/vcmp/modules/namespace/namespaces.txt","r");
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