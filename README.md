# Monologue Image Upload Extension

**THIS README IS FOR THE MASTER BRANCH AND IS ONLY COMPATIBLE WITH THE MASTER BRANCH OF MONOLOGUE**
-

## Questions? Problems? Documentation?

- [Mailing list for questions](http://groups.google.com/forum/#!forum/monologue-rb)
- [Issues and bugs](http://github.com/msevestre/monologue_image_upload/issues)
- [Wiki](https://github.com/jipiboily/monologue_image_upload/wiki/_pages)
- IRC channel (on Freenode): #monologue.

## What does this gem do?
- This is an extension that adds the image upload feature to monologue using imagemagick

## Installation
### 1. Add the gem to your `Gemfile`
```ruby
gem 'monologue_image_upload', :git => "https://github.com/msevestre/monologue_image_upload.git"
```
And run `bundle install` to fetch the gem and update your 'Gemfile.lock'.

### 2. Run the required migrations
Run these commands:

1. $`bundle exec rake monologue_image_upload:install:migrations`
2. $`bundle exec rake db:create` (only if this is a new project)
3. $`bundle exec rake db:migrate`

### 5. Configure Monologue.
This is all done in an initializer file, say `config/initializers/monologue.rb`.
```ruby
Monologue.config do |config|
  config.image_upload.max_picture_size = 2.megabytes
  config.image_upload.upload_path = "monologue"
end
```
## Requirements
- Rails 4 +
- Database: MySQL & Postgres are supported but other databases might work too.

## Authors
* Michael Sevestre, [@msevestre](https://github.com/msevestre)

## Contribute
Fork it, then pull request. Please add tests for your feature or bug fix.
