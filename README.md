# 🇺🇳 GuessTheFlag

Welcome to **GuessTheFlag** — a beautifully designed iOS game built with SwiftUI that tests your knowledge of world flags while keeping things fun, fast, and educational.

## 🎯 About the Game

**GuessTheFlag** is a simple yet addictive flag quiz game where users are challenged to pick the correct flag for a randomly selected country from a set of three choices. With every correct guess, you earn a point — but beware, wrong guesses can cost you! The game ends after 8 attempts, and your final score is displayed, giving you the option to restart and beat your high score.

---

## 🛠️ Features

- 🌍 A vibrant collection of flags from 11 different countries
- 🧠 Randomized flag display and correct answer on each round
- 📊 Score tracking with real-time updates
- ⚡ Fast gameplay with immediate feedback
- 🧃 Elegant and modern UI using SwiftUI with gradients and materials
- 🔄 Replayable design with a restart option after each game

---

## 📸 Preview
<table align="center">
  <tr>
    <th>Gameplay</th>
    <th>Correct Answer Alert</th>
    <th>Wrong Answer Alert</th>
    <th>Final Score Alert</th>
  </tr>
  <tr>
    <td><img width="250" height="450" alt="Gameplay" src="https://github.com/user-attachments/assets/c9eb23d7-ed25-490a-a4c7-25ca6e473f22" /></td>
    <td><img width="250" height="450" alt="Correct Answer" src="https://github.com/user-attachments/assets/4385acd8-5751-46ba-9a7b-8121dd0e206d" /></td>
    <td><img width="250" height="450" alt="Wrong Answer" src="https://github.com/user-attachments/assets/2d7cf46d-86d9-4459-9199-aa324b6b2e19" /></td>
    <td><img width="250" height="450" alt="Final Score" src="https://github.com/user-attachments/assets/89ab6a05-379d-46c2-8151-dc6ad1ce897e" /></td>
  </tr>
</table>


## 🧑‍💻 Built With

- **SwiftUI**: For designing responsive and modern user interfaces
- **Xcode**: Project built and run on the latest version of Xcode
- **MVVM Pattern (Lightweight)**: Logic and UI separation for clarity and scalability

---

## 🧪 How It Works

1. The app randomly selects 3 flags from a shuffled list of 11 countries.
2. The name of one country is displayed, and the user must tap the correct flag.
3. Feedback is provided instantly — correct or wrong.
4. After 8 rounds, a final score alert appears with an option to restart the game.

---

## 📁 File Structure

GuessTheFlag/
├── Assets.xcassets/ # Country flag images
├── ContentView.swift # Main game logic and UI
└── GuessTheFlagApp.swift # Entry point of the app

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/GuessTheFlag.git
2. Open GuessTheFlag.xcodeproj in Xcode.
3. Run the app on a simulator or your connected iOS device.

## 💡 Future Enhancements

Add more countries and flags
Track high scores locally
Add sound effects and animations
Add haptic feedback for physical interactions
Introduce a difficulty mode or timer
