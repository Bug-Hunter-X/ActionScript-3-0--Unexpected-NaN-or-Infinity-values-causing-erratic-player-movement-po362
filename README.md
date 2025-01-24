# ActionScript 3.0 Bug: Erratic Player Movement Due to NaN/Infinity Values

This repository demonstrates a bug in ActionScript 3.0 where unexpected NaN (Not a Number) or Infinity values in player position calculations lead to erratic and unpredictable player movement.  The bug occurs when the player's x or y coordinates become NaN or Infinity, often due to incorrect calculations or unhandled edge cases.

## Bug Description

The provided `bug.as` file contains a function `updatePlayerPosition` that updates the player's position based on its velocity.  However, there is no proper handling for scenarios where `player.x` or `player.y` may become NaN or Infinity. This results in incorrect position updates and unpredictable player behavior.

## Bug Solution

The `bugSolution.as` file provides a corrected version of the `updatePlayerPosition` function.  The solution incorporates checks to handle potential NaN or Infinity values before using them in calculations.  This ensures that the player's position remains valid and avoids erratic movement.

## How to Reproduce

1.  Compile and run `bug.as` (you'll need an ActionScript 3.0 compiler and runtime environment).
2.  Observe the player's erratic movement.  You may need to trigger the conditions that lead to NaN or Infinity values in `player.x` or `player.y` (e.g., by manipulating player velocity or introducing invalid input).
3.  Compare the results with the corrected version in `bugSolution.as`.