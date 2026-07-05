# MathOperatorGame

MathOperatorGame is an educational mobile game designed to help children improve their arithmetic skills through fun and interactive gameplay.

## Project Structure

```text
MathOperatorGame/
├── README.md
├── MathOperatorGame.xcodeproj
└── MathOperatorGame/
    ├── Models/
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

Core arithmetic operations planned for the first playable version:

* Addition
* Subtraction
* Multiplication
* Division

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
* Initial game screen
* Answer validation with user feedback
* Automatic question progression
* Dynamic question counter
* Player model
* MathOperation model
* OperationType enum
* Automatic answer calculation logic
* Random math operation generation

## Planned:

* Difficulty levels
* Score tracking
* Player progression
* Statistics and achievements
* Android version

## Project Status

Currently in early development with the core domain models, random math operation generation, the initial navigation flow, and a playable arithmetic game loop featuring answer validation and automatic question progression.
