var responseChain = [];//[0] = newMessage(false,"umm...");
responseChain = PhoneAddMessage(responseChain,false,"...");
responseChain = PhoneAddMessage(responseChain,false,". . .");
responseChain = PhoneAddMessage(responseChain,false,"hello?");
return responseChain;