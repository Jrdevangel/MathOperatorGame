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
    │   ├── GameSession.swift
    │   ├── GameState.swift
    │   ├── MathOperation.swift
    │   ├── MathOperationFactory.swift
    │   ├── OperationType.swift
    │   └── Player.swift
    ├── ViewModels/
    │   └── GameViewModel.swift
    │
    ├── Views/
    │   ├── WelcomeView.swift
    │   ├── LearningAreasView.swift
    │   └── Arithmetic/
    │       ├── ArithmeticView.swift
    │       └── GameView.swift
    │
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
* Game session state management with score tracking
* Dynamic difficulty progression based on player score
* Exact division generation
* Difficulty selection integrated into gameplay
* MVVM architecture implementation
* GameViewModel separation from SwiftUI views
* Reactive state management using Observation framework
* Player model
* MathOperation model
* OperationType enum
* Automatic answer calculation logic
* Random math operation generation
* GameSession model implemented for game state management, statistics tracking, accuracy calculation, and streak management
* GameState enum implemented for controlling game lifecycle states
* Game session completion detection with question limits

## Planned

* Player progression
* Statistics and achievements
* Android version

## Project Status

Currently in early development with a playable arithmetic game loop featuring score tracking, automatic question progression, answer validation, adaptive difficulty based on player performance, exact integer division generation, integrated difficulty selection, game statistics, streak tracking, and an MVVM architecture separating business logic from the SwiftUI presentation layer.
