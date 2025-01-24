function updatePlayerPosition(event:Event):void {
  // ... other code ...

  // Check for and handle NaN or Infinity values before calculations
  player.velocityX = isNaN(player.velocityX) || player.velocityX == Infinity ? 0 : player.velocityX;
  player.velocityY = isNaN(player.velocityY) || player.velocityY == Infinity ? 0 : player.velocityY;
  player.x = isNaN(player.x) ? 0 : player.x;
  player.y = isNaN(player.y) ? 0 : player.y;

  // Update player's position using Math.max and Math.min to constrain to the stage bounds
  player.x = Math.max(0, Math.min(stage.stageWidth - player.width, player.x + player.velocityX));
  player.y = Math.max(0, Math.min(stage.stageHeight - player.height, player.y + player.velocityY));

  // ... more code ...
}