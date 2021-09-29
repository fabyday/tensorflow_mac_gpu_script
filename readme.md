# tensorflow mac gpu script 

tensorflow auto install script in **intel** macbook. 

if you are **M1** macbook. check here [tensorflow ISSUE](https://github.com/apple/tensorflow_macos/issues/153)



## USAGE

if you already created your env, then just run below,
```bash
>>> conda activate <your_env_name>
>>> sh tf_gpu_mac_pip.sh
```

if you want to make new one, run this.
```bash
>>> sh tf_gpu_mac_pip.sh <your_env_name>
>>> conda activate <your_env_name>
```


## TEST

just run this code.

```bash
>>> python tf_test.py 
```
