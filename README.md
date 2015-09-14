Ruby on Rails - Library Exercise
================================

This is a basic Ruby on Rails application to exercise and test developers
on tasks that are common in a Rails application. This project is a partially
completed application and includes several challenges documented below for a
developer to implement.

## Prerequisites ##

This project assumes you are familiar with rails. If not, there are several
great resources on the internet to help bring you up to speed, a few of which
are listed [below](#learning-resources).

You need to have [Ruby](https://www.ruby-lang.org) version 2.0.0 or greater
installed on your computer. Once you have Ruby, you will need to install the
`bundler` gem.

```
gem install bundler
```

For easy setup this application uses [SQLite3](https://www.sqlite.org/) for the
backend database.

Finally, the last tool you should have installed is [git](https://git-scm.com/).
This tool makes it easy to track your changes as you work your way through the
challenges. Git is a popular source control tool. If you've never used git
before, here is a great interactive [tutorial](https://try.github.io/levels/1/challenges/1) to
help learn it.

## Getting Started ##

Start by downloading the dependencies for this Rails application using the
`bundle` command. Open a terminal and make sure your are located at the
directory for this project. Then run this command:

```
bundle install
```

Next, you'll need to setup the database.

```
./bin/rake db:setup
```

And finally, start the Rails application

```
./bin/rails server
```

And that's it!

## The Challenge ##

You have a coworker, let's call him "Gary", and Gary has a moderate collection
of popular books in his office that people like to borrow. With so many books
coming and going out of Gary's office, Gary asked you to help him write a web
application that he can use to keep track of what books he has and who has them
checked out. This Rails project is the initial cut of that application.

What you'll find is a partially completed solution to the Library project.
Currently it only has the support to manage an inventory of books. Your job is
to finish the application by completing the following tasks:

  * Fix the broken tests
  * Implement the Checkout feature
  * Add support for uploading images of book covers
  * Improve selecting author(s) for a book

Each of these tasks are explained in more detail below, with some guidelines and
requirements for how to proceed. Please keep in mind that these exercises are
open ended and you are welcome to expand on the solution or the requirements as
you see fit. But at a minimum you must complete the task as they are described.

If for any reason you are unsure of a requirement or need to make an assumption
in order to complete your solution, then just clearly document that assumption
in your submission.

### Task 1: Fix the broken tests ###

Oh no! In the rush to make the initial cut of this application, it looks like a
few tests were overlooked and are now failing. Your job is to identify the
failing tests and determine how best to fix them.

You can use the rake command to run all of the test in the project:

```
./bin/rake spec
```

Fix the the failing tests and then commit your changes with git.

### Task 2: Implement the Checkout feature ###

To help make Gary's life easier, you need to implement the ability for Gary to
keep track of who has checked out a particular book. He specifically asked you
to track the following details:

  * The name of the person who checked out the book
  * The date and time when the book was checked out
  * The date and time when Gary expects the book to be returned

In addition to storing this information in the database, Gary needs to be able
to see if a book is checked out, by who, and show the checkout and return dates
when viewing a specific book. Finally, he asked that the checkout history be
tracked and shown on the page when viewing a specific book.

Your job is to implement all components (models, views, controllers, etc...) to
complete this feature.

Once complete, please commit your changes using git.

### Task 3: Upload book covers ###

Initially, each book was created with a cover that is a URL to an image on the
internet. This was good enough at first, but lately some of the websites that
Gary used for these covers had removed the images from their site. Now the books
in Gary's application have broken images and don't look as nice. To fix this,
Gary wants to be able to upload an image and have it saved in the Rails
application instead of using URLs from other websites.

Also, Gary wanted to know if it was possible to make it so that the book covers
could be displayed at different sizes on different pages. For example, on the
page that displays a specific book the cover would be really prominent. However,
on the page that indexes all of the books, the book cover would be smaller. And
finally, on the Author page which shows the books that author published, the
covers would be a moderate size (larger than the book index cover but smaller
than the book show cover).

To summarize, the requirements for this challenge are:

  * Allow a user to upload an image to be used as the book cover
  * Display different sized images depending on the page
    - Book page: large cover
    - Author page: medium cover(s)
    - Book index/list: small covers

To accomplish this, you are *encouraged* to use any popular file upload gems to
complete this task such as [Paperclip](https://github.com/thoughtbot/paperclip),
[Refile](https://github.com/refile/refile), or
[CarrierWave](https://github.com/carrierwaveuploader/carrierwave).

Once complete, please commit your changes using git.

### Task 4: Improve author selection when creating/editing a book ##

The initial cut of the Library database was a huge success for Gary and he was
very happy with how much easier it was to keep track of his books, and who was
borrowing them. However, as he entered more and more books and authors into his
database, he came back to you with a suggestion:

> Now that I have over 100 authors in my database, it has become more tedious to
> find and select the right author when I am creating a new book. Instead of
> listing each author as a different checkbox for me to select, would it be
> possible for me to type in the name of the author or authors of a book? Also,
> sometimes I don't always remember the right spelling for some authors' names.
> It would be helpful to see suggestions of the author name as I type it.

Of course! This would be a great improvement. To implement this, you are welcome
to leverage an existing Rubygem or Javascript library, or you can roll the
solution from scratch if you prefer.

Once complete, please commit your changes using git.

## Submission ##

After you have completed the tasks (or as much as you are able to do) you have
two options for sending this back to us:

* Zip up the whole project and email it as an attachment

... Or ...

* Post your changes to Github for us to pull down and look at.

The latter option is preferable. If you aren't familiar with Github, the steps
you will need to follow to share your solutions using this website are as
follows:

1. Create an account on Github if you don't already have one
2. Create a new public repository
3. Update the project on your workstation to point to the new repository
  a. The instructions for doing this are shown on the page for your newly
     created public repository
4. Push up your changes

You can find more detailed instructions on creating repositories and adding
remotes to git projects on the Github website.

## Learning Resources ##

If you are still new to Ruby or Ruby on Rails, not to worry. There are tons of
great resources online that you can review for free to get you started. Here's a
a few:

  * [Ruby in Twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/)
  * [Try Ruby](http://tryruby.org/levels/1/challenges/0)
  * [RubyMonk](https://rubymonk.com/)
  * [Ruby on Rails Guides](http://guides.rubyonrails.org/getting_started.html)
  * [Rails for Zombies](http://railsforzombies.org/)

