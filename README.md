
## 	Json Api 

***


##### Web page:
To do...


### Launching
***
##### Requirements:
* Ruby version _>= 2.3.0_
* Rails version _5.1.4_

##### Commands
Clone the repository to your local machine and run following commands:

```
$ bundle
```

```
$ bundle exec rake db:migrate
```

```
rails s
```

Open a `localhost:3000` page in your browser.

create post and user (send hash  example: {"post":
{ "title":"test",
"body":"test",
"IPAddr: IPv4":"192.168.0.1./132",
"login":"login"
}
})
```
POST  localhost:3000/posts   
```

get  Top (20) post

```
GET  localhost:3000/posts/show
```

put an estimate post (send hash example: { "rate": {
"rating":"5","post_id":"48"}
})

```
POST localhost:3000/rates/set
```







