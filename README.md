# [RabbitMQ Tutorials](https://www.rabbitmq.com/getstarted.html)


## 1. ["Hello World!"](https://www.rabbitmq.com/tutorials/tutorial-one-ruby.html)

Step 1. `brew install rabbitmq`

Step 2. bundle install `bunny`

Step 3. create send.rb & recieve.rb ( more details in tutorial )

Step 4. run rabbitmq server : ```brew services start rabbitmq```; to stop the server: ```brew services stop rabbitmq```

Step 5. run ```ruby recieve.rb``` and open another terminal window then run ```ruby send.rb```

Screenshot:
<img width="1224" alt="Screenshot 2019-11-24 at 21 34 17" src="https://user-images.githubusercontent.com/47269063/69502020-85f50500-0f02-11ea-8996-a57bfe4f1747.png">
