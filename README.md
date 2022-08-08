# Mario Party 1 US Decomp
Currently tested with wsl2 and ubuntu 20.04 LTS.
*It is highly recommended to use the wsl directory and not /mnt/c or you will experience immensely slow building times/issues*

The original mario party 1 decomp repo can be found here: https://github.com/gamemasterplc/mpsource<br/>
This was created before many of the decomp tools we have today<br/>
For this reason i created a new repo and have been copying things over


# Building
1. `git clone https://github.com/Rainchus/mp1` to get the repo
2. Take a vanilla US mario party 1 .z64 rom named `baserom.us.z64` and place it in the root directory of the repo
3. Run `make setup`
4. Compile with `make -j`
