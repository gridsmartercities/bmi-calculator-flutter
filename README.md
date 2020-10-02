# BMI Calculator in Flutter

An app that talks to an api to calculate a BMI.

First, take a look at the app's architecture and understand it - specifically the layering:

1 - UI
2 - Business Logic (Bloc)
3 - Services 

The UI (Widgets) sends events to the Bloc, and the Bloc emits streams that the UI reacts to. 

The Bloc performs the logic and is has an Api instance to use. Dependencies are injected via constructors.  

## Tasks

1/ Implement the call to the API and display the result.

2/ Make it so that pressing the soft-keyboard return key jumps to the next field, or submits the button is focused.

3/ Fix bug where button remains enabled when you clear a field (after both having valid input).

4/ Fix bug where you can type a non-digit key using the soft-keyboard.

5/ Fix bug where you can type a non-digit key using the hardware keyboard.  

## Questions

1/ Can you explain some of the benefits of the layering?

2/ Why is the `Client` instance injected in `BmiApi`'s constructor?