
- i have idobao id75 v1 with atmega32u4
- https://docs.qmk.fm/#/newbs_getting_started
  - on windows, use qmk msys to compile from source
  - https://github.com/qmk/qmk_distro_msys/releases
  - the firmware will download to `%userprofile%\qmk_firmware`
  - setup qmk with `qmk setup`
    - update with `git pull --recurse-submodules`
  - compile using `qmk compile -kb idobao/id75/v1 -km tom`
    - if you get make error 35584, delete some of the files in the keyboards folder https://www.reddit.com/r/olkb/comments/obilno/qmk_setup_help_when_compiling_invalid_return_code/
    - https://github.com/qmk/qmk_firmware/issues/13416
- use qmk toolbox to flash
  - https://github.com/qmk/qmk_toolbox/releases
- use vial to easily modify the layout
  - https://get.vial.today/download/