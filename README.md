# MathOperatorGame

MathOperatorGame is an educational mobile game designed to help children improve their arithmetic skills through fun and interactive gameplay.

## Project Structure

```text
MathOperatorGame/
├── README.md
├── MathOperatorGame.xcodeproj
└── MathOperatorGame/
    ├── Models/
    │   ├── Difficulty.swift
    │   ├── Player.swift
    │   ├── MathOperation.swift
    │   ├── OperationType.swift
    │   └── MathOperationFactory.swift
    ├── Views/
    │   ├── WelcomeView.swift
    │   ├── LearningAreasView.swift
    │   └── Arithmetic/
    │       ├── ArithmeticView.swift
    │       └── GameView.swift
    ├── ContentView.swift
    └── MathOperatorGameApp.swift
```

## Features

Current arithmetic operations:

* Addition
* Subtraction
* Multiplication
* Division (exact integer results)

## Technologies

### iOS

* Swift
* SwiftUI

### Android (planned)

* Kotlin
* Jetpack Compose

### Backend (planned)

Optional backend for online features:

* Java
* Spring Boot
* PostgreSQL

## Current Progress

Implemented:

* Welcome screen
* Navigation to learning areas
* Learning areas screen
* Arithmetic difficulty selection screen
* Playable arithmetic game screen
* Answer validation with user feedback
* Automatic question progression
* Dynamic question counter
* Score tracking
* Dynamic difficulty progression based on player score
* Exact division generation
* Difficulty selection integrated into gameplay
* Player model
* MathOperation model
* OperationType enum
* Automatic answer calculation logic
* Random math operation generation

## Planned

* Player progression
* Statistics and achievements
* Android version

## Project Status

Currently in early development with a playable arithmetic game loop featuring score tracking, automatic question progression, answer validation, adaptive difficulty based on the player's performance, exact integer division generation, and fully integrated difficulty selection.
