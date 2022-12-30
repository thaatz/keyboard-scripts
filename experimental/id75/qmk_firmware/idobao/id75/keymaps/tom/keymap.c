/* Copyright 2020 IFo Hancroft
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
#include QMK_KEYBOARD_H

// https://github.com/qmk/qmk_firmware/blob/master/docs/keycodes.md

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

 [0] = LAYOUT_ortho_5x15(
    KC_ESC,  KC_1,         KC_2,         KC_3,         KC_4,         KC_5,          KC_NO,   KC_NO,   KC_NO,   KC_6,    KC_7,         KC_8,         KC_9,         KC_0,            KC_GRV,
    KC_TAB,  KC_Q,         KC_W,         LT(4, KC_E),  KC_R,         KC_T,          KC_NO,   KC_NO,   KC_NO,   KC_Y,    KC_U,         KC_I,         KC_O,         KC_P,            KC_BSLS,
    KC_BSPC, LGUI_T(KC_A), LALT_T(KC_S), LCTL_T(KC_D), LSFT_T(KC_F), KC_G,          KC_NO,   KC_NO,   KC_NO,   KC_H,    RSFT_T(KC_J), RCTL_T(KC_K), RALT_T(KC_L), RGUI_T(KC_SCLN), KC_ENT,
    KC_NO,   KC_Z,         KC_X,         KC_C,         KC_V,         KC_B,          KC_NO,   KC_NO,   KC_NO,   KC_N,    KC_M,         KC_COMM,      KC_DOT,       KC_SLSH,         KC_NO,
    KC_NO,   KC_NO,        KC_NO,        KC_SPC,       MO(3),        LT(3, KC_TAB), KC_SPC,  KC_SPC,  KC_SPC,  KC_SPC,  MO(2),        KC_SPC,       KC_SPC,       KC_SPC,          KC_SPC
 ),

// mousekeys
 [1] = LAYOUT_ortho_5x15(
    _______, KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   _______, _______, _______, KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_F11,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_VOLD, KC_MS_U, KC_VOLU, _______, KC_F12,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_BTN3, KC_MS_L, KC_MS_D, KC_MS_R, _______, _______,
    _______, _______, KC_WH_L, KC_WH_U, KC_WH_D, KC_WH_R, _______, _______, _______, KC_WH_L, KC_WH_D, KC_WH_U, KC_WH_R, _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_BTN1, KC_BTN2, KC_BTN3, _______, _______, _______
  ),

// arrows
 [2] = LAYOUT_ortho_5x15(
    QK_BOOT, _______, _______, _______, _______, _______, _______, QK_BOOT, _______, _______, _______, _______, _______, _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_UP,   _______, _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_LEFT, KC_DOWN,KC_RIGHT, _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, QK_BOOT, _______, _______, _______, _______, _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______
  ),

// symbols
 [3] = LAYOUT_ortho_5x15(
    KC_GRV, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_LCBR, KC_RCBR, _______, KC_MINS, KC_EQL,
    KC_DEL,  _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_LPRN, KC_RPRN, _______, _______, KC_QUOT,
    _______, _______, LCTL(KC_X), LCTL(KC_C), LCTL(KC_V), _______, _______, _______, _______, _______, KC_LBRC, KC_RBRC, _______, _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______
  ),

// numpad
 [4] = LAYOUT_ortho_5x15(
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_NUM,  _______, _______, _______, _______,
    _______, _______, TO(0),   _______, TO(1),   _______, _______, _______, _______, _______, KC_P7,   KC_P8,   KC_P9,   _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_P4,   KC_P5,   KC_P6,   _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_P1,   KC_P2,   KC_P3,   _______, _______,
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_P0,   _______, _______, _______, _______
  ),

};
