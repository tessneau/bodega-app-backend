# 🏬 La Bodega API 🏬

La Bodega is an app that emulated the experience of shopping at your neighborhood bodega/ corner store deli. La Bodega talks to it's backend La Bodega API which contains seeded instances of produce and the ability to manipulate a customer's cart found in the controllers. 

This is a Ruby on Rails API created using ActiveRecord.

![app runthrough gif](https://giant.gfycat.com/FragrantSkinnyGemsbuck.gif)

## Installation

```
bundle install
rails db:migrate && rails db:seed
rails s
```
Copy the resulting url listed as `Listening on [url]` (often it will be localhost:3000), paste the url into your browser & voila. If there are problems, start by checking that the data has seeded by running `rails c`, then `User.all`

## How to Use La Bodega API
La Bodega API is needed in order to accept HTTP requests from it's frontend La Bodega. This allows users to:
* Create, read, and update their accounts with the help of JavaScript Web Tokens and Bcrypt.
* Manipulate a user's cart by adding, deleting, and updating cart item instances.
* Have access to seeded produce and their categories. 

## Developers
* [Tess Neau](https://github.com/tessneau)
* [Daniela Sandoval]

## Built With
* [Ruby on Rails](https://github.com/rails/rails)
* [Rack CORS](https://github.com/cyu/rack-cors)
* [JWT](https://github.com/jwt/ruby-jwt)
* [BCrypt Ruby](https://github.com/codahale/bcrypt-ruby)
