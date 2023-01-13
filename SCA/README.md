# script and code for trace capture@chipwhisperer

- install chipwhisperer framework (and make sure that `arm-none-eabi-gcc` is available)
- link or copy this project to `<chipwhisperer_path>/hardware/victims/firmware`
- to check everything, before starting the python script, build the image files by running `make PLATFORM=CWLITEARM CRYPTO_TARGET=NONE CRYPTO_OPTIONS=NONE` from `<chipwhisperer_path>/hardware/victims/firmware/UOV`
- run `python UOV.py <chipwhisperer_path>/hardware/victims/firmware/UOV` from `<chipwhisperer_path>/hardware/victims/firmware/UOV`

It should generate 84 `*.csv` files containing the traces.