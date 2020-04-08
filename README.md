<!-- In a README.md file, indicate how you would use ActiveRecord to return... -->

<!-- all the recipes -->
Recipe.all
<!-- all the comments -->
Comment.all
<!-- the most recent recipe posted -->
Recipe.last
<!-- all the comments of the most recent recipe -->
Recipe.last.comments
<!-- the most recent comment of all your comments -->
Comment.last
<!-- the recipe associated with the most recent comment -->
Comment.last.recipe
<!-- all comments that include the string brussels -->
<!-- Wild card isn't working for me -->
Comment.where(body: "%brussels%")
