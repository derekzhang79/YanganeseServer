# About

The backend server for Yanganese.

# API

The app works mostly just through a public JSON API, mostly because I didn't want to inconvenience people with making accounts and the like (I really hate making new accounts).

## Quizzes

You can create a quiz using a `POST` request to `/quizzes`.
The payload looks like this:

``` javascript
{
  "quiz": {
    "title": "Mad Hard Quiz",
    "author": "Me",
    "category_id": 1
  }
}
```

The `category_id` can be a number from 1 to 7, representing: Astronomy, Biology, Chemistry, Earth Science, General Science, Mathematics, and Physics.

If that's successful, you'll get a response like this:

``` javascript
{
  "success": true,
  "quiz_id": 15
}
```

Using the `quiz_id`, you can edit that quiz by sending a `PUT` request to `/quizzes/quiz_id`.

Also, hold on to the `quiz_id`, because you'll need it to attach questions to your quiz.

## Questions

You can create a question using a `POST` request to `/questions`.
The payload looks like this:

``` javascript
{
  "question": {
    "text": "What is the largest planet in our solar system?",
    "answer": "x",
    "w": "Earth",
    "x": "Saturn",
    "y": "Mercury",
    "category_id": 1,
    "quiz_id": 15
  }
}
```

And you'll get a response similar to the quiz, like this:

``` javascript
{
  "success": true,
  "question_id": 2
}
```

And that's pretty much it.

# Contact

Issues can be posted on Github.

Questions, comments, concerns, and the like can go to mikkyang at mikkyang.com.
