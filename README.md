Devise confirmation token & after_create hook issue example 

See:

https://github.com/plataformatec/devise/issues/2706

https://groups.google.com/forum/#!topic/plataformatec-devise/Pimhafo4u6g

To reproduce issue:

``rake db:migrate
rails c
u = User.create(email: 'test@email.com', password: '12345678')
``

Check confirmation link in console. It doesn't work.
