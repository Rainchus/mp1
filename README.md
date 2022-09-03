# Mario Party 1 US Decomp
Currently tested with 
- wsl2 and ubuntu 20.04 LTS.
- macOS 12

*For Windows, it is highly recommended to clone into the wsl filesystem and not /mnt/c or you will experience immensely slow building times/issues*

The original mario party 1 decomp repo can be found here: https://github.com/gamemasterplc/mpsource .<br/>
This was created before many of the decomp tools we have today.<br/>
For this reason I created a new repo and have been copying things over.


# Building
1. `git clone https://github.com/Rainchus/mp1 --recurse-submodules` to get the repo.
2. Take a vanilla US mario party 1 big-endion (`.z64`) rom named `baserom.us.z64` and place it in the root directory of the repo.
3. Run `make setup`.
4. Compile with `make`, with or without `-j` or `-j$(nproc)`.
