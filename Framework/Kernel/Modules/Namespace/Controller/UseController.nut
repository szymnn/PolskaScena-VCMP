class Use extends AbstractNamespaceFunctionsController {
    constructor(var) {
        base.constructor(var);
        getNamespace();
    }
/**
 *
 */
    function getNamespace() {
        try {
            if (empty(this.Namespace)) {
                throw ("The given Namespace is wrong");
            }
            local actual = ::ReadIniInteger(NAMESPACE_LOCAL_FILE_PATH + "counter.xml", "COUNTER", "val");
            for (local i = 1; i <= actual; i++) {
                local ns = ::ReadIniString(NAMESPACE_LOCAL_FILE_PATH + "namespaces.xml", "REGISTRED", i.tostring());
                if (ns == this.Namespace) {
                    local file = getenv("HOME") + "/" + this.Namespace + ".nut";
                    return ::dofile(file);
                }
            }

        } catch (e) {
            ::print(e);
        }
    }
}

class use extends Use {
    constructor(var) {
        base.constructor(var);
        getNamespace();
    }
}