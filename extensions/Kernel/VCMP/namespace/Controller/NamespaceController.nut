::print("loaded Namespaces");
class Namespace extends AbstractNamespaceFunctionsController {

    constructor(var) {
        base.constructor(var);
        NamespaceFileService.CreateFile();
        NamespaceValidateEmpty();
        NamesaceParseFunction();
    }


/**
 * This function has start preparing to register new namepsace
 */
    function NamesaceRegisterFunction() {
        local actual = ::ReadIniInteger(NAMESPACE_LOCAL_FILE_PATH + "counter.xml", "COUNTER", "val")
        local row = actual += 1;
        NamesaceExsistsFunction(this.Namespace, row);
    }
/**
 * This function has write to file new namespace
 * row = int
 */
    function NamespaceWriteToFileFunction(row) {
        try {
            ::WriteIniString(NAMESPACE_LOCAL_FILE_PATH + "namespaces.xml", "REGISTRED", row.tostring(), this.Namespace);
            ::WriteIniInteger(NAMESPACE_LOCAL_FILE_PATH + "counter.xml", "COUNTER", "val", row);
        } catch (e) {
            ::print(e);
        }
    }
/**
 * Duplication Protect
 */
    function NamesaceExsistsFunction(namespace, line) {
        try {
            if (empty(namespace)) {
                throw ("The recived Namespace is invalid");
            }
            if (empty(line)) {
                throw ("The recived Line is invalid");
            }
            local counter = 0;

            for (local i = 0; i <= line; i++) {
                local check = ::ReadIniString(NAMESPACE_LOCAL_FILE_PATH + "namespaces.xml", "REGISTRED", i.tostring());
                if (check == this.Namespace) {
                    counter++;
                }
            }

            if (counter == 0) {
                NamespaceWriteToFileFunction(line);
            } else return;

        } catch (e) {
            ::print(e);
        }

    }
/**
 * Patrse namespace - > required "/" sybmol
 */
    function NamesaceParseFunction() {
        try {
            local parse = split(this.Namespace, "/");
            if (typeof(parse) != "array" || parse.len() <= 1) {
                throw ("The namepsace given has wrong syntax");
            }
            foreach (data in parse) {
                if (empty(data)) {
                    throw ("The given namespace is invalid");
                }
            }
            NamesaceRegisterFunction();
            NamesaceExistsFunction();
        } catch (e) {
            ::print(e);
        }
    }
/**
 * check given namespace
 */
    function NamespaceValidateEmpty() {
        if (empty(this.Namespace)) {
            throw ("The given Namespace is invalid");
        } else return true;
    }


}
class namespace extends Namespace {
    constructor(var) {
        base.constructor(var);
        base.NamespaceFileService.CreateFile();
        base.NamespaceValidateEmpty();
        base.NamesaceParseFunction();

    }
}