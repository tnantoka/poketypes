# Poketypes

[![CircleCI](https://circleci.com/gh/tnantoka/poketypes.svg?style=svg)](https://circleci.com/gh/tnantoka/poketypes)

## Adding Poketypes to your project

```
dependencies:
  poketypes:
```

## Usage

```
import 'package:poketypes/poketypes.dart';

Poketype('normal').name;                   // normal
Poketype('normal').label['en'];            // Normal
Poketype('normal').label['ja'];            // ノーマル
Poketype('normal').color;                  // #b1b1b1
Poketype('normal').effectiveness['ghost']; // 0.0
Poketype('normal').weakness['fighting'];   // 2.0
```

## Example

![](example.png)
