<h1 align="center"><a href="https://paguiar.link/whatsmeow-quickstart">WhatsMeow® Quickstart</a></h1>

<p align="center">
    <br>
  <a href="https://pixabay.com/vectors/run-sport-stand-success-ready-2872201/">
    <img src="https://cdn.pixabay.com/photo/2017/10/20/18/10/run-2872201_960_720.png" width="160px" height="120px"/>
  </a>
  <br><br>
  Discover the power of WhatsMeow® with a just a few clicks
  <br>
</p>

<br>

## QuickStart with Docker (Recommended)

TODO

## Manual QuickStart

> **Note**: You'll need the latest version of Go installed on your system.

1. Clone the repository and cd into it:

```
git clone https://github.com/Paguiar735/whatsmeow-quickstart
cd whatsmeow-quickstart
```

2.  Download the dependencies used in the minimal working example

```
go mod download
```

3.  Run the minimal working example:

```
go run main.go
```

4. After scanning the QRCode, send "ping" (without quotes) to the WhatsApp account logged into the program. It'll send "pong" back.

<p align="center">
  <br>
    <img src="./bot_in_action.jpg" width="262px" height="120px"/>
  <br><br>
</p>

## Disclaimers

> **Note**: We are not affiliated, associated, authorized, endorsed by or in any way officially connected to WhatsMeow®. (go.mau.fi/whatsmeow).

> **Note**: This repository was built upon the currently official [minimal working example](https://godocs.io/go.mau.fi/whatsmeow#example-package) of WhatsMeow®.

> **Note**: This project will be archieved if it's merged into the official WhatsMeow repository.

> **Warning**: Do not log out immediately after logging in, otherwise various panics will be raised because the [program as a whole will probably not be ready by then](https://github.com/tulir/whatsmeow/issues/295). If you want to log out, wait a few seconds and only then press CRTL+C.
