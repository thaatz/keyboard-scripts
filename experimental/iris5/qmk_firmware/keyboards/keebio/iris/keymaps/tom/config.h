// https://www.reddit.com/r/olkb/comments/72u8ou/qmk_mouse_keys_rock/
// https://github.com/qmk/qmk_firmware/blob/master/keyboards/ergodox_ez/config.h

#define MOUSEKEY_INTERVAL 16
#define MOUSEKEY_DELAY 0
// #define MOUSEKEY_TIME_TO_MAX 60
// #define MOUSEKEY_MAX_SPEED 7
#define MOUSEKEY_TIME_TO_MAX 40
#define MOUSEKEY_MAX_SPEED 5
#define MOUSEKEY_WHEEL_DELAY 0

// https://beta.docs.qmk.fm/using-qmk/software-features/tap_hold
#define TAPPING_TERM 150
// https://precondition.github.io/home-row-mods
// https://docs.qmk.fm/#/config_options?id=behaviors-that-can-be-configured
#define PERMISSIVE_HOLD
#define IGNORE_MOD_TAP_INTERRUPT

// https://www.reddit.com/r/MechanicalKeyboards/comments/mq3n12/via_how_to_add_more_than_4_layers/
#define DYNAMIC_KEYMAP_LAYER_COUNT 5
