import 'package:nyxx/nyxx.dart' as api;
import 'package:nyxx/commands.dart' as command;
//import 'package:nyxx/utils.dart' as utils;

import 'dart:io';
import 'dart:async';

// Main function
void main() {
  // Create new bot instance
  api.Client bot = new api.Client('TOKEN');

  print(bot);

  // Creating new CommandsFramework object and registering commands.
  new command.CommandsFramework('.', bot)
    ..admins = [""]
    ..registerLibraryCommands();
}

@command.Command('prueba')
class TestComando extends command.CommandContext {
  @command.Maincommand()
  Future run() async {
      await reply(content: "${channel.id} - ${channel.lastMessageID}");
  }
}
