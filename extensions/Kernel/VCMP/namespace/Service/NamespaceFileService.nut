class NamespaceFileService {
    /**
     * This function created xml file
     */
    function CreateFile() {
        local namespace = ::ReadIniString(NAMESPACE_LOCAL_FILE_PATH + "namespaces.xml", "REGISTRED", "1");
        local  counter = ::ReadIniInteger(NAMESPACE_LOCAL_FILE_PATH + "counter.xml", "COUNTER", "val");
        if (!namespace) {
            ::system("cd " + NAMESPACE_LOCAL_FILE_PATH + " && touch namespaces.xml");
            ::print("created namespaces file");
        }
        if (!counter) {
            ::system("cd " + NAMESPACE_LOCAL_FILE_PATH + " && touch counter.xml");
            ::WriteIniInteger(NAMESPACE_LOCAL_FILE_PATH + "counter.xml", "COUNTER", "val", 0);
            ::print("created counter file");
        }


    }
}