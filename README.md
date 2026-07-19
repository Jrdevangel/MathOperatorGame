# MathOperatorGame

MathOperatorGame is an educational mobile game designed to help children improve their arithmetic skills through fun and interactive gameplay.

## Project Structure

```text
MathOperatorGame/
├── README.md
├── MathOperatorGame.xcodeproj
└── MathOperatorGame/
    ├── Models/
    │   ├── Achievement.swift
    |   ├── AchievementManager.swift 
    |   ├── Difficulty.swift
    │   ├── GameSession.swift
    │   ├── GameState.swift
    │   ├── MathOperation.swift
    │   ├── MathOperationFactory.swift
    │   ├── OperationType.swift
    │   ├── Player.swift
    │   └── PlayerManager.swift    
    ├── ViewModels/
    │   └── GameViewModel.swift
    │
    ├── Views/
    │   ├── WelcomeView.swift
    │   ├── LearningAreasView.swift
    │   ├── StatisticsView.swift
    │   ├── AchievementsView.swift
    │   ├── AchievementRow.swift
    │   └── Arithmetic/
    │       ├── ArithmeticView.swift
    │       ├── GameView.swift
    │       └── ResultView.swift
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
* ResultView implemented for displaying final game statistics
* Final score summary
* Selected difficulty displayed on the result screen
* Accuracy percentage display
* Correct answers summary
* Best streak statistics display
* ResultView integrated into the arithmetic game flow
* Game lifecycle management and navigation between active gameplay and final results
* Play Again functionality implemented
* Result screen action handling
* Game session restart flow
* Result screen action buttons
* Play Again and Back to Menu user actions
* NavigationStack based game flow
* Result screen dismissal returning to difficulty selection
* Difficulty displayed on the result screen
* Player model redesigned for persistent statistics
* Global player statistics tracking
* Best score tracking per difficulty
* Global accuracy calculation
* Player session registration
* PlayerManager implemented for shared player state
* Shared PlayerManager integration
* Automatic player statistics registration after completed games
* Dependency injection of shared player state
* Player persistence using UserDefaults
* Automatic player loading at application startup
* Automatic player saving after completed games
* StatisticsView implemented
* Statistics screen integrated into the main navigation
* Shared player propagated across the application
* Persistent player statistics available from the home screen
* Achievement model implemented
* AchievementManager implemented
* Achievement evaluation system
* Achievements integrated into the statistics screen
* Achievement status visualization (locked and unlocked)
* Reusable AchievementRow SwiftUI component
* Dedicated AchievementsView screen
* NavigationStack-based achievements navigation
* Sample achievement data for SwiftUI previews

## Planned

* Player progression
* Android version

## Project Status

Currently in early development with a complete arithmetic game flow featuring difficulty selection, question generation, answer validation, score tracking, persistent player statistics using UserDefaults, a shared player state across the application, a dedicated statistics screen, an achievements screen with reusable SwiftUI components, achievement tracking, and an MVVM architecture separating business logic from the SwiftUI presentation layer.
