#include <iostream>
#include <string>
#include <cmath>
using namespace std;

int ReadNumber(string message) {
	int N = 0;
	cout << message;
	cin >> N;
	return N;
}
int RandomNumber(int From, int To) {
	int randNumb = rand() % (To - From + 1) + From;
	return randNumb;
}
int RoundsNumber() {
	return ReadNumber("How Many Rounds do you want to Play? \n");
}
enum Items
{
	Rock = 1,
	Paper = 2,
	Scissor = 3
};
Items ReadPlayerChoice() {
	int PChoice = ReadNumber("What is Your Choice? [1] = Rock, Paper = 2, Scissor = 3? \n");
	while (PChoice > 3 || PChoice < 1)
	{
		cout << "Between 1 and 3 only!! \n";
		PChoice = ReadNumber("What is Your Choice? [1] = Rock, Paper = 2, Scissor = 3? \n");
	}
	return Items(PChoice);
}
Items GetComputerChoice() {
	int CChoice = RandomNumber(1,3);
	return Items(CChoice);
}
string ShowChoice(int Choice) {
	switch (Items(Choice)) {
		case Items::Paper:
			return "Paper";
		case Items::Rock:
			return "Rock";
		case Items::Scissor:
			return "Scissor";
	}
}
struct stRoundInfo {
	Items PlayerChoice;
	Items ComputerChoice;
};
void TheCalculation(int& ComputerWins, int& PlayerWins, int& Draws, Items Player1choice,Items Computerchoice) {

	if (Player1choice == Computerchoice)
	{
		cout << "DRAW!!" << endl;
		Draws++;
		system("color 6F");
	}
	else if (Player1choice == Items::Rock)
	{
		if (Computerchoice == Items::Scissor)
		{
			cout << "Round Winner: The Player \n";
			system("color 2F");
			cout << "---------------------- \n";
			PlayerWins++;
		}

	}
	else if (Player1choice == Items::Paper)
	{
		if (Computerchoice == Items::Rock)
		{
			cout << "Round Winner: The Player \n";
			system("color 2F");
			cout << "---------------------- \n";
			PlayerWins++;
		}
		else
		{
			cout << "Round Winner: The Computer \n";
			system("color 4F");
			cout << '\a';
			cout << "---------------------- \n";
			ComputerWins++;
		}
	}
	else if (Player1choice == Items::Scissor)
	{
		if (Computerchoice == Items::Paper)
		{
			cout << "Round Winner: The Player \n";
			system("color 2F");
			cout << "---------------------- \n";
			PlayerWins++;
		}
		else
		{
			cout << "Round Winner: The Computer \n";
			system("color 4F");
			cout << '\a';
			cout << "---------------------- \n";
			ComputerWins++;
		}
	}
	else
	{
		cout << "Round Winner: The Computer \n";
		system("color 4F");
		cout << '\a';
		cout << "---------------------- \n";
		ComputerWins++;
	}
}
void MainGame(int& RoundsNumber, int& ComputerWins, int& PlayerWins, int& Draws) {
	stRoundInfo RoundInfo;
	for (short i = 1; i <= RoundsNumber; i++)
	{
		RoundInfo.PlayerChoice = ReadPlayerChoice();
		RoundInfo.ComputerChoice = GetComputerChoice();
		cout << "______________________Round [" << i << "]__________________" << endl;
		cout << "Player Choice: " << ShowChoice(RoundInfo.PlayerChoice)  << endl;
		cout << "Computer Choice: " << ShowChoice (RoundInfo.ComputerChoice) << endl;
		TheCalculation(ComputerWins, PlayerWins, Draws, RoundInfo.PlayerChoice, RoundInfo.ComputerChoice);
	}
}
void GameOverScreen() {
	cout << "\t\t\t----------------------------------------\n";
	cout << "\t\t\t             ++GAME OVER++      \t" << '\n';
	cout << "\t\t\t----------------------------------------\n";
}
void FinalResult(int PlayerWins, int ComputerWins, int Draws,int RoundsNumber) {
	GameOverScreen();
	cout << "\t\t\t Number of Rounds: " << RoundsNumber << endl;
	cout << "\t\t\t Number of Draws: " << Draws << endl;
	cout << "\t\t\t Number of Player Wins: " << PlayerWins << endl;
	cout << "\t\t\t Number of Computer Wins: " << ComputerWins << endl;
	if (PlayerWins < ComputerWins)
	{
		cout << "\t\t\t The Computer Wins The Game..." << endl;
		system("color 4F");
	}
	if (PlayerWins > ComputerWins)
	{
		cout << "\t\t\t The Player Wins The Game..." << endl;
		system("color 2F");
	}
	if (PlayerWins == ComputerWins)
	{
		cout << "\t\t\t Its a drawn Game..." << endl;
		system("color 6F");
	}
	cout << "\t\t\t----------------------------------------\n";
}
void ResetScreen() {
	system("CLS");
	system("color 0F");
}
void StartGame() {
	char Replay = 'y';
	do
	{
		int ComputerWins = 0, PlayerWins = 0, Draws = 0, Rounds = RoundsNumber();
		
		MainGame(Rounds, ComputerWins, PlayerWins, Draws);
		FinalResult(ComputerWins, PlayerWins, Draws, Rounds);
		cout << "Do you want to play again? Y/n " << '\n';
		cin >> Replay;
		ResetScreen();
	} while (Replay == 'y' || Replay == 'Y');

}
int main() {
	srand((unsigned)time(NULL));

	StartGame();
	
	return 0;
}
