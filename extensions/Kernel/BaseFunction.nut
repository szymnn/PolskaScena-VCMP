function empty(...) {
    try {
        foreach (var in vargv) {
            if (var != "" || var != null) {
                return false;
            }
            return true;
        }
    } catch (e) {
        ::print(e);
    }
}

function die() {
    try{
        throw(null);
    }catch(e){
        ::print(e);
    }
}

function dd(...) {
    try {
        local response = "\n";
        foreach (var in vargv) {
            response += "virable given [ " + var + " ] type: [ " + typeof(var) + " ]";
            if (typeof(var) == "string" || typeof(var) == "array") {
                response += " lenght: [ " + var.len() + " ] \n";
            }

        }
        throw("DEBUG:" + response);
    } catch (e) {
        ::print(e);
    }
}
