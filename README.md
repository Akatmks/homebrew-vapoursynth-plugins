# homebrew-vapoursynth-plugins

At the moment, this tap only supports [BestSource](https://github.com/vapoursynth/bestsource) and [lsmas](https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works) because Akatsumekusa only needs them for [Av1an](https://github.com/master-of-zen/Av1an). However, if you want to have a complete vapoursynth workflow in macOS and want this tap to support more plugins, send me a message.

You may also want to try out other people's taps. A quick Google search found me [Bl4Cc4t's](https://github.com/Bl4Cc4t/homebrew-vsplugins) and [XiNGRZ's](https://github.com/xingrz/homebrew-vsplugins) taps. Be aware that some plugins in either of those taps are outdated, such as lsmas. For this tap, Akatsumekusa will try to maintain it as long as Akatsumekusa remains active.  

To install BestSource:  

```sh
mkdir -p "$(brew --prefix)/lib/vapoursynth"
brew tap Akatmks/vapoursynth-plugins
brew install --HEAD vapoursynth-bestsource
```

lsmas can be a little bit dedicate. From my own testing in mid 2025, it looks like lsmas with FFmpeg 6 is the only version that can seek accurately. Updates and fixes happen all the time in the original lsmas repository so your mileage may vary.  

To install lsmas compiled with [HomeOfAviSynthPlusEvolution/FFmpeg](https://github.com/HomeOfAviSynthPlusEvolution/FFmpeg/tree/custom-patches-for-lsmashsource):  
```sh
mkdir -p "$(brew --prefix)/lib/vapoursynth"
brew tap Akatmks/vapoursynth-plugins
brew install --HEAD vapoursynth-lsmas
```

To install lsmas compiled with ffmpeg version 8:  
```sh
mkdir -p "$(brew --prefix)/lib/vapoursynth"
brew tap Akatmks/vapoursynth-plugins
brew install --HEAD vapoursynth-lsmas-ffmpeg-8
```

To install lsmas compiled with ffmpeg version 7:  
```sh
mkdir -p "$(brew --prefix)/lib/vapoursynth"
brew tap Akatmks/vapoursynth-plugins
brew install --HEAD vapoursynth-lsmas-ffmpeg-7
```

To install lsmas compiled with ffmpeg version 6:  
```sh
mkdir -p "$(brew --prefix)/lib/vapoursynth"
brew tap Akatmks/vapoursynth-plugins
brew install --HEAD vapoursynth-lsmas-ffmpeg-6
```

Or to install only L-SMASH but not the VapourSynth plugin:  
```sh
mkdir -p "$(brew --prefix)/lib/vapoursynth"
brew tap Akatmks/vapoursynth-plugins
brew install --HEAD l-smash
```

At last, this is not a part of this tap, but for completeness, here is how to install ffms2:  
```sh
mkdir -p "$(brew --prefix)/lib/vapoursynth"
brew install ffms2
ln -s "$(brew --prefix)/lib/libffms2.dylib" "$(brew --prefix)/lib/vapoursynth/ffms2.dylib"
```
