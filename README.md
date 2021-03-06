# Android/IOS keyboard for Game Maker Studio (1.4/2 ?)
# Introduction

<details>

<summary></summary>

I created this keyboard because there was no good *free* keyboard on the marketplace.

Furthermore, paid extensions were for the **native keyboard**, which means we need a different keyboard for **both** IOS and Android, alongside the lack of customization they have.

So I spent 20 initial hours creating this keyboard, and less than 4 a few days after to fix few bugs and optimize the project.

</details>



# Features

<details>

<summary></summary>

* Fast and easy to setup !
* Highly customizable through simple and straightforward ~~functions~~ scripts !
* Minimal performance impact on your game !
* Supports up 5 keys at the same time !
* Compatible both Android and IOS !

</details>



# Setup

<details>

<summary></summary>

### Create the keyboard
    keyboard_create(Left_position, Top_position, Width, Height);

[Then customize it with to get the design you want.](#visual-customization)

### Get keyboard text
    keyboard_get_text();
**returns:** String

### Clear keyboard text
    keyboard_clear_text();

### Destroy the keyboard
    keyboard_destroy();

<br>

------------

<br>

</details>

# Obtaining key presses

<details>

<summary></summary>

### Obtaining last pressed key
    keyboard_get_lastkey();
**returns:** String

### Obtaining pressed key
    keyboard_get_pressed_key();
**returns:** String

### Obtaining released key
    keyboard_get_released_key();
**returns:** String



<br>

------------

<br>

</details>

# Keyboard coordinates

<details>

<summary></summary>

The x and y coordinates represents the top left of the keyboard.
However, **DON'T** move the keyboard by accessing directly thoses values !

The keyboard is defined by its 4 borders (Left, Top, Right, Bottom).
You can set and/or get the coordinate of any of the keyboard borders.

## Moving the keyboard around

<details>

<summary></summary>

### Move the keyboard from its top border
    keyboard_set_from_top(Y_coordinate);

### Move the keyboard from its bottom border
    keyboard_set_from_bottom(Y_coordinate);

### Move the keyboard from its left border
    keyboard_set_from_left(X_coordinate);

### Move the keyboard from its right border
    keyboard_set_from_right(X_coordinate);

</details>

## Getting keyboard coordinates

<details>

<summary></summary>

### Get the top border
    keyboard_get_bbox_top();
**returns:** real number

### Get the bottom border
    keyboard_get_bbox_bottom();
**returns:** real number

### Get the left border
    keyboard_get_bbox_left();
**returns:** real number

### Get the right border
    keyboard_get_bbox_right();
**returns:** real number

</details>

<br>

------------

<br>

</details>


# Visual customization

<details>

<summary></summary>

The keyboard have many visual properties that can be customized.
*I don't want to describe them all but here I am*

<br>

## Keyboard Size

<details>

<summary></summary>

### Resize the keyboard
    keyboard_resize(Width, Height);

### Get keyboard size
    keyboard_get_width();
**returns:** real number

    keyboard_get_height();
**returns:** real number

<br>

</details>

## Keyboard background

<details>

<summary></summary>

### Background state
    keyboard_set_background_visible(Boolean);
    
&ensp;

    keyboard_get_background_visible();
**returns:** boolean

### Background color
    keyboard_set_background_color(Color);

    keyboard_get_background_color();
**returns:** color

</details>

## Keyboard font

<details>

<summary></summary>

### Font used

<details>

<summary></summary>

    keyboard_set_font(Font);
    
&ensp;

    keyboard_get_font();
**returns:** Font index

</details>

### Font color

<details>

<summary></summary>

     keyboard_set_text_color(Color);
     
 &ensp;

    keyboard_get_text_color();
**returns:** color

</details>

</details>

## Keyboard keycaps

<details>

<summary></summary>

### State

<details>

<summary></summary>

    keyboard_set_keycaps_visible(boolean);

</details>

### Corners

<details>

<summary></summary>

    keyboard_set_keycaps_radius(real_number);

If desired, you can set the radius on each axis individually.

    keyboard_set_keycaps_x_radius(Radius);
	keyboard_set_keycaps_y_radius(Radius);

</details>

### Offsets

<details>

<summary></summary>

    keyboard_set_keycaps_offset(Offset);

If desired, you can set the offset on each axis individually.

    keyboard_set_keycaps_x_offset(Offset);
	keyboard_set_keycaps_y_offset(Offset);

</details>

### Colors

<details>

<summary></summary>

#### Idle state

<details>

<summary></summary>

    keyboard_set_keycaps_color(Color);
    
&ensp;

    keyboard_get_keycaps_color();
**returns:** color

</details>

#### Pressed state

<details>

<summary></summary>

    keyboard_set_keycaps_pressed_color(Color);
&ensp;

    keyboard_get_keycaps_pressed_color();
**returns:** color

</details>

</details>

</details>

<br>

------------

<br>

</details>

# Things to improve on the keyboard

<details>

<summary></summary>

* Check if it works with GM 2 I guess, or port it for GM 2 if it doesn't
* Performance, always better performance !
Without kidding, drawing with round_rect on the surface is extremely inefficient.
* Better handling of spriteless special keys like _ENTER_, _DELETE_...
* Add a resizing system for keys with a sprite.
* Make the keyboard works as a normal keyboard to allow seemless integration from a PC typing game !
* And surely other things that I can't think of right now.

</details>




