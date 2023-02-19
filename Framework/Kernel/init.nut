::system("cd "+getenv("HOME")+"/Framework/Kernel/SH && ./autoload.sh");

/**
 * INITIATION BASED FUNCTIONS LIKE dump();
 */
::dofile("Framework/Kernel/BaseFunction.nut");

/**
 * INITIATION VCMP NAMESPACE ADDON
 */
::dofile("Framework/Kernel/Modules/Namespace/init.nut");

/**
 * INITIATION VCMP MAKER ADDON
 */
::dofile("Framework/Kernel/Modules/Maker/init.nut");
/**
 * INITITIATION AUTOLOAD
 */
::dofile("Framework/Autoload/autoload.nut");


//local b = ::system("printenv");
//::print(b);
