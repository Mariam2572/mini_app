Anime Streaming App
A Flutter-based anime streaming application with a clean architecture structure, featuring subscription plans, anime browsing, and detailed anime information.
📱 Features

Home Screen: Browse anime content with categories (All, Popular, Trending, New Release)
Anime Cards: Display anime posters with titles and genres
Top Characters Section: Showcase popular anime characters
Upgrade Plan: Subscription options (Monthly/Annually) with family sharing
Anime Details: Full anime information with preview and watch options
Bottom Navigation: Easy navigation between app sections

🏗️ Architecture
This project follows Clean Architecture principles with separation of concerns:
lib/
├── core/
│   └── utils/
│       └── app_assets.dart          # Asset paths management
├── helper/
│   └── helper_extention.dart        # Extension methods (context.textTheme)
└── presentation/
    ├── home/
    │   └── widgets/                 # Home screen widgets
    ├── upgrade/
    │   ├── upgrade_screen.dart      # Subscription plans screen
    │   └── widgets/
    │       ├── plan_container.dart  # Subscription plan card
    │       └── upgrade_title.dart   # Screen title
    └── details/
        └── anime_details_screen.dart # Anime information screen
🎨 UI Components
Home Screen

Category filters with pill-shaped buttons
Horizontal scrollable anime cards
Character showcase section
Bottom navigation bar

Upgrade Screen

Animated background
Rocket illustration
Two subscription plans (Monthly $5, Annually $50)
Selectable plan cards with checkmarks
Continue button

Anime Details Screen

Full-screen anime poster
Genre tags
Statistics (views, claps, seasons)
Description section
Preview and Watch buttons

🔧 Key Widgets
PlanContainer
Reusable subscription plan card with:

Selection state management
Custom styling based on selection
Icon, title, price, and description
Circular checkbox indicator
![WhatsApp Image 2025-10-03 at 10 21 30_73e284d9](https://github.com/user-attachments/assets/d7ea1e73-f9b0-44e7-9939-ff1a6283a00f)
![WhatsApp Image 2025-10-03 at 10 19 47_99cefb8d](https://github.com/user-attachments/assets/985ebf20-7cb0-4f91-82c9-cf2ea539d29e)
![WhatsApp Image 2025-10-03 at 10 19 47_16df3c28](https://github.com/user-attachments/assets/a1e7893c-2f7a-4624-81cd-f8ae95913ec4)

Upgrade Screen

StatefulWidget for plan selection
Background image with overlay
Centered content layout
Responsive button placement
