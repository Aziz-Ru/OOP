## Cubit

A Cubit is a class which extends BlocBase and can be extended to manage any type of state
A Cubit can expose functions which can be invoked to trigger state changes.

## Cubit Advantages

- Simplicity: One of the biggest advantages of using Cubit is simplicity. When creating a Cubit, we only have to define the state as well as the functions which we want to expose to change the state. In comparison, when creating a Bloc, we have to define the states, events, and the EventHandler implementation. This makes Cubit easier to understand and there is less code involved.

## Bloc

A Bloc is a more advanced class which relies on events to trigger state changes rather than functions. Bloc also extends BlocBase which means it has a similar public API as Cubit. However, rather than calling a function on a Bloc and directly emitting a new state, Blocs receive events and convert the incoming events into outgoing states.

## Flutter Bloc Concepts

### Bloc Widgets

- **BlocBuilder** is a Flutter widget which requires a Bloc and a builder function. BlocBuilder handles building the widget in response to new states.

- **BlocSelector** s a Flutter widget which is analogous to BlocBuilder but allows developers to filter updates by selecting a new value based on the current bloc state.

- **BlocProvider** BlocProvider is a Flutter widget which provides a bloc to its children via BlocProvider.of<T>(context)

- **MultiBlocProvider** is a Flutter widget that merges multiple BlocProvider widgets into one. MultiBlocProvider improves the readability and eliminates the need to nest multiple BlocProviders

```
MultiBlocProvider(
  providers: [
    BlocProvider<BlocA>(
      create: (BuildContext context) => BlocA(),
    ),
    BlocProvider<BlocB>(
      create: (BuildContext context) => BlocB(),
    ),
    BlocProvider<BlocC>(
      create: (BuildContext context) => BlocC(),
    ),
  ],
  child: ChildA(),
);
```

- **BlocListener** is a Flutter widget which takes a BlocWidgetListener and an optional Bloc and invokes the listener in response to state changes in the bloc.

- **BlocConsumer** exposes a builder and listener in order to react to new states. BlocConsumer is analogous to a nested BlocListener and BlocBuilder but reduces the amount of boilerplate needed
