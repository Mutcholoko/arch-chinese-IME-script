# Arch Linux Chinese IME Automatic Install Script
This is just a small script to automatize installing the Chinese IME (via Fcitx5) on Arch Linux, because I'm very lazy and I format my PC a lot. It also installs the Chinese fonts for you.

## Steps
1. `sudo pacman -Sy git`
2. `git clone https://github.com/Mutcholoko/arch-chinese-IME-script.git`
3. `cd arch-chinese-IME-script/`
4. `sudo chmod +x install-chinese-IME.sh`
5. `sudo ./install-chinese-IME.sh`
6. Just type your password and press Enter
7. Press enter when prompted with the default options
8. Log out and log back in
9. Configure Fcitx5 using the Config Tool, i.e. add the Pinyin input method

### Here are my recommended options for Fcitx5 Pinyin:

- [x] Enable Cloud Pinyin
- [x] Change Previous Candidate Hotkey To "Up" key
- [x] Change Next Candidate Hotkey To "Down" key
- [ ] Remove "Up" and "Down" Hotkeys from Previous Page and Next Page 
- [x] Change Minimum Pinyin Length to 2 (on Cloud Pinyin Settings)
- [x] Change Backend to Baidu (on Cloud Pinyin Settings)
- [x] Change Trigger Input Method Hotkey to "Super+Space" (on Global Options)
- [ ] Remove Enumerate Input Method Group Forward/Backward Hotkeys (on Global Options)


### 谢谢！
