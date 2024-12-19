# homebrew-vsplugins

At the moment, this tap only supports [L-SMASH](https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works) because Akatsumekusa only needs it for [Av1an](https://github.com/master-of-zen/Av1an). However, if you want to have a complete vapoursynth workflow in macOS and want this tap to support more plugins, send me a message.

You may also try out other people's taps. A quick Google found me [Bl4Cc4t's](https://github.com/Bl4Cc4t/homebrew-vsplugins) and [XiNGRZ's](https://github.com/xingrz/homebrew-vsplugins) taps. Be aware that some plugins in those taps are outdated, such as lsmas. For this tap, Akatsumekusa will try to maintain it as long as Akatmks remains active.  

To install L-SMASH:  
```sh
brew tap Akatmks/vsplugins
brew install --HEAD vapoursynth-lsmas
```

Or to install only L-SMASH but not VapourSynth plugin:  
```sh
brew tap Akatmks/vsplugins
brew install --HEAD l-smash
```
