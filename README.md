# Planet Argon Application Project

## Steps.
``` Ruby
git clone git@github.com:Patrickmnts/pa_uploader.git
bundle install
rake db:migrate
rails server
```

Head on over to `localhost:3000` and enjoy.

## Maintenance:

`rake clean:expired_files` will clean the database of all uploaded files older than 72 hours.

`rake clean:all` will clean all users uploaded files.

## Issues.

The issues that I feel need to be addressed in Refactoring include.  
 - Naming.  I am not as happy with the naming conventions of the variables as I feel I should be.  Unfortunately I did not come to this full revelation until I saw the upload URL along the lines of upload/uploads/#/upload_file, not pretty.
 - Tokenization.  I considered the fact that each uploaded document was assigned an individualized url this could act as a token.  A SHA1 tokenization would have been more desirable in hindsight, but late implementation was my biggest concern.
 - Testing. My test suite covers some major issues, but I still feel it could be improved upon... as always.

:)
