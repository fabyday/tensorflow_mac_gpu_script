# seealso https://github.com/apple/tensorflow_macos/issues/153

# check parameter nums.
# sh this_sh.sh ENV_NAME ==> install package on new environment where you give name.
# or 
# sh this_sh.sh ==> install package on current environment
# this Script Only Works on Intel  MacBook.

valid_param_num=1


if [ $valid_param_num -eq $# ]
then
    name = $1
    echo "create conda env ... \n env name : $name"
    conda env create --file=tf_configure.yml --name=$name
    conda activate $name
else
    echo "update conda env ..."
    conda env update -f tf_configure.yml --prune
fi 


# If you are using Intel and got a not a supported wheel on this platform error, 
# run export SYSTEM_VERSION_COMPAT=0 in your terminal and try again. If this works, you'll need to do this everytime you use Python until a Python Bug is resolved.

if [ -z "$SYSTEM_VERSION_COMPAT" ]
then 
     "export SYSTEM_VERSION_COMPAT=0">>~/.zshrc
fi 
pip install --upgrade --force --no-dependencies https://github.com/apple/tensorflow_macos/releases/download/v0.1alpha3/tensorflow_macos-0.1a3-cp38-cp38-macosx_11_0_x86_64.whl https://github.com/apple/tensorflow_macos/releases/download/v0.1alpha3/tensorflow_addons_macos-0.1a3-cp38-cp38-macosx_11_0_x86_64.whl
