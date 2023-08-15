# Guide

This document outlines the basic flows & requirements to play on the server.

## Requirements:
- [Minecraft Java Edition (Official) 1.20.1 latest](https://www.minecraft.net/en-us/store/minecraft-java-bedrock-edition-pc)
- [Keplr wallet Extension](https://chrome.google.com/webstore/detail/keplr/dmkamcknogkgcdfhhbddcghachkejeap)
- [Have >1.5 JUNO in your wallet after being created](https://app.osmosis.zone/?from=USDC&to=JUNO)

## Optional:
- [Optifine 1.20.1 (Better Minecraft Performance)](https://optifine.net/downloads)

---

## Create your Keplr Wallet
- Use this guide: [https://help.keplr.app/articles/installation-guide](https://help.keplr.app/articles/installation-guide-for-keplr-extension-for-beginners) to set up your wallet account.
- **NOTE** You can use an existing account if you already have one, including a Ledger Nano S/X. Keplr IS required for the webapp.

## Launch & Join
- Open Minecraft, change the version to 1.20.1 (or 1.20.1 Optifine) and press play in the middle.
- Press multiplayer -> [Add Server](https://i.imgur.com/rKryuZX.png)
    - Name: Juno Craft
    - Server IP: reece.sh
    - Done
- [Double-click on the server which has the Juno logo](https://i.imgur.com/1lX0Rva.png) (You may need to press 'refresh')

## Connecting your Wallet:
- You will see a large Juno logo in front of you, this is the hang-out area (**/spawn**).
- Run forward using the 'W' key and you will see a player with 'CONNECT WALLET' above their head.
- Click the player and you will see a chat message with a ['Click Here' message](https://i.imgur.com/YmCfHpC.png).
- This will then [prompt you to open the website](https://i.imgur.com/8HxNUnC.png). Continue with 'Yes'.
- In the Authentication tab, if your unique code was not pre-filled, you need to [copy that from the in game chat](https://i.imgur.com/gG983AT.png).
- Press ['Link Wallet With Minecraft Code'](https://i.imgur.com/gA0kUMC.png) and you will see a popup from Keplr.
- Sign-in and it will link your wallet and username together.
- Confirm you can now see it in-game with **/wallet**.

<!-- TODO: Testnet only -->
<!-- ## Get some free testing tokens
You will need some JUNOX tokens to play with duels. You can get 10 of these tokens every 6 hours from <https://craft-app.reece.sh/faucet>
With this being testing, if someone you are battling runs our of funds you can send them some by running the following command
 - **/wallet send [PLAYER] 10** -->

---

## Helpful commands
You can type commands by pressing the letter 't' then '/' slash, or by pressing just '/'.

- /duels *(Main menu for the server)*
- /help *(list of useful commands)*
- /info *(Developer endpoints, Open Sourced plugins & Server)*
- /wallet *(current wallet, balance, pending Txs)*

---

## How To Play

Once your wallet is connected, you are ready to duel, run **/duels** and click the "Arenas" icon OR click the 'DUELS MENU' character at spawn.

When you try to join an arena, you must first sign a Transaction. You have 60 seconds to sign this before it expires. During this time you are guaranteed into the arena and no one else can join first.

Here all arenas are shown and are color-coded based on the status of the game. These update every 1 second when the menu is open.
- Green - open, ready to Join
- Yellow - 1 player pending to start
- Orange - Game in the countdown
- Red - game is currently live

Only 2 players can duel at a time per arena. Each duel currently cost 1 JUNO token. The winner receives 2 tokens back (original + the other player's bet). In the future, duels will be able to modify their bet amount.

> Leaving a duel will be considered a loss (after the countdown has finished) and the other player will win the bet.

If the server crashes or the plugin fails, the bets are returned to both players. This is to prevent any loss of funds even if a duel is taking place at this time.
