# README

[Documento BD](https://docs.google.com/document/d/1OL7e3A0ZQTvvw3Po0vZ_AY1xifDHageNKSiht-vY8QU/edit?usp=sharing)

 para entrar en admin y poder subir películas y editarlas es https://sheltered-headland-16432.herokuapp.com/admins/sign_in
                          9:14
                          y las credenciales: admin@homie.mx admin123
                          
                          
                          
                          ---------------------------

To start the database again

`rake db:drop db:create db:migrate`
`rake db:seed`

--

All user accounts must be confirmed via email.
Check the _test.rb_ environment if you wish to
use a tool to catch emails. I suggest mailcatcher.

There is only one admin account and you cannot create
another one via the web app. The credentials for
the admin account are in _seeds.rb_



* Ruby version 2.4.1p111

* Deployment instructions: change _production.rb_
as you deem necessary



* ...
