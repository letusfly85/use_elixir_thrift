struct MyChatMessage
{
  1: i32 senderId,
  2: i32 recieverId,
  3: string message
}

service MyChatService
{
  void sendMessage(1: i32 senderId, 2: i32 recieverId, 3: string message);
  void recieveMessage(1: i32 senderId, 2: i32 recieverId, 3: string message);
}
