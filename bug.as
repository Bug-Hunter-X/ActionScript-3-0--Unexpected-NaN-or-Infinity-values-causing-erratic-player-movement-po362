function updatePlayerPosition(event:Event):void {
  // ... other code ...

  // This line could cause an error if player.x or player.y is NaN or Infinity
  player.x = Math.max(0, Math.min(stage.stageWidth - player.width, player.x + player.velocityX));
  player.y = Math.max(0, Math.min(stage.stageHeight - player.height, player.y + player.velocityY));

  // ... more code ...
}