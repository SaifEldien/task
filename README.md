# Flutter Products Task (Clean Architecture)

## 🚀 Architecture Overview
This project follows **Clean Architecture** principles to ensure scalability and maintainability:
- **Domain Layer:** Contains Entities and Contracts (Interfaces).
- **Data Layer:** Implements Repositories and handles Data Mapping (Models).
- **Presentation Layer:** Managed by **Provider** for state handling.

## 🛠 Key Features Implemented:
- **Dependency Inversion:** Used abstract repositories for better testability.
- **State Management:** Handled Loading, Success, and Error states reactively.
- **Service Locator:** Ready for `GetIt` integration (via `injection.dart`).

## ⏳ What's Next (If more time was available):
- Implement Unit Tests for the Provider and UseCases.
- Add local caching using Hive or Shared Preferences.
- Enhance UI with Shimmer loading effect.
