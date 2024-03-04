# poloniex_app

A flutter app used to track BTC live price by using 'Poloniex' web-socket. 

## Demo


[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/qhyXFiO_NnU/0.jpg)](https://www.youtube.com/watch?v=qhyXFiO_NnU)


## Architecture

The app is mainly using BLoC state management solution. While having core/feature folder structure style. 
![alt text](https://miro.medium.com/v2/resize:fit:1100/format:webp/1*ZAEdjV2HzjQvIKwjrLXu-w.png)

Each feature is composed of three layers mainly: presentation, domain, and infrastrucutre. And this diagram summarizes the flow of actions in the app. 
![alt text](https://miro.medium.com/v2/resize:fit:4800/format:webp/1*8T5B0WGSN4romtkIX5D0gA.png)


## Architecture

To run the app you first need to generate the auto-generated files by using this command. 

'dart run build_runner build'

P.S. You can use 'fvm' if you are facing an issue in your flutter SDK's version. 
