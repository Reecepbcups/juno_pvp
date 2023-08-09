# Guide

This document outlines the basic flows & requirements to play on the server.

FUTURE:
- Make a quick short video showing all this.
- Add Wallet balance to the /duels menu

## Requirements:
- [Minecraft Java Edition (Official) 1.20.1 latest](https://www.minecraft.net/en-us/store/minecraft-java-bedrock-edition-pc)
- [Keplr wallet Extension](https://chrome.google.com/webstore/detail/keplr/dmkamcknogkgcdfhhbddcghachkejeap)

## Optional:
- [Optifine 1.20.1 (Better MC Performance)](https://optifine.net/downloads)

---

## Launch & Join
- Open Minecraft, change the version to 1.20.1 (or 1.20.1 Optifine) and press play in the middle.
- Press multiplayer -> Add Server
    - Name: Juno MC
    - Server IP: (not public for now)
    - Done
- Double-click on the server which has the Juno logo (You may need to press 'refresh')

## Connecting your Wallet:
- You will see a large Juno logo in front of you, this is the spawn / hang-out area.
- Type in chat **/duels***(press t or the / to open the chat)* 
- In the menu, click the "Connect Wallet" icon
- In chat, You will see a "Click to copy" text, click this to copy to your clipboard *(keep this private)*
- 'Click Here" will then open the website <https://craft-app.reece.sh/auth/>
- In the Authentication tab, enter your unique code and press 'Link Wallet with Minecraft Code'.
- Confirm you can now see it in-game with **/wallet**
- *(NOTE: You can view your balance with **/wallet balance**)*

## Get some free testing tokens

You will need some JUNOX tokens to play with duels. You can get 10 of these tokens every 6 hours from <https://craft-app.reece.sh/faucet>

With this being testing, if someone you are battling runs our of funds you can send them some by running the following command

 - **/wallet send [PLAYER] 10**

---

## Helpful commands
You can type commands by pressing the letter 't' then '/' slash, or by pressing just '/'.

- /duels *(Main menu for the server)*
- /help *(list of useful commands)*
- /wallet *(current wallet, balance, pending Txs)*

---

## How To Play

Once your wallet is connected, you are ready to duel, run **/duels** and click the "Arenas" icon.

When you try to join an arena, you must first sign a Transaction. You have 60 seconds to sign this before it expires. During this time you are guaranteed into the arena and no one else can join first. In the event that you sign and are waiting, you're

Here all arenas are shown and are color-coded based on the status of the game.
- Green - open, ready to Join
- Yellow - 1 player pending to start
- Orange - Game in the countdown
- Red - game is currently live

Only 2 players can duel at a time per arena. Each duel currently cost 1 JUNOX token. The winner receives 2 tokens back (original + the other player's bet). In the future, duels will be able to modify their bet amount.

> Leaving a duel will be considered a loss (after the countdown has finished) and the other player will win the bet.

If the server crashes or the plugin fails, the bets are returned to both players. This is to prevent any loss of funds even if a duel is taking place at this time.
