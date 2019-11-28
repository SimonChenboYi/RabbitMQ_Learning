# [RabbitMQ Tutorials](https://www.rabbitmq.com/getstarted.html)


## 1. ["Hello World!"](https://www.rabbitmq.com/tutorials/tutorial-one-ruby.html)

Step 1. `brew install rabbitmq`

Step 2. bundle install `bunny`

Step 3. create send.rb & recieve.rb ( more details in tutorial )

Step 4. run rabbitmq server : ```brew services start rabbitmq```; to stop the server: ```brew services stop rabbitmq```

Step 5. run ```ruby recieve.rb``` and open another terminal window then run ```ruby send.rb```

Screenshot:
<img width="1224" alt="Screenshot 2019-11-24 at 21 34 17" src="https://user-images.githubusercontent.com/47269063/69502020-85f50500-0f02-11ea-8996-a57bfe4f1747.png">


## 2. ["Work Queues"](https://www.rabbitmq.com/tutorials/tutorial-two-ruby.html)

Step 1. Without Acknowledgment and prefetch

Step 2. With Acknowledgment and prefetch

Screenshot:
<img width="1390" alt="Screenshot 2019-11-25 at 23 52 13" src="https://user-images.githubusercontent.com/47269063/69587879-cde95a00-0fde-11ea-9117-ffdee56a172b.png">

## 3. ["Publish/Subscribe"](https://www.rabbitmq.com/tutorials/tutorial-three-ruby.html)

Step 1. declare the exchange in the producer side. the channel.fanout will allow exchange to send message to all binding queues.

Step 2. declare the exchange in the consumer side, and bind the queue to the exchange

Screenshot:
<img width="1390" alt="Screenshot 2019-11-26 at 21 34 28" src="https://user-images.githubusercontent.com/47269063/69675750-44e22980-1097-11ea-892c-1b0682a97f78.png">


## 4. ["Routing"](https://www.rabbitmq.com/tutorials/tutorial-four-ruby.html)

Step 1: Declare the exchange to be ```channel.direct('name')```  

Step 2: Declare the routing_key for the publisher ``` exchange.publish(message,routing_key: 'the_rounting_key')```  

Step 3: declare the queue and bind the queue to the routing_key from consumer side ```queue.bind(exchange, routing_key: 'the_rounting_key')```

Screenshot:
![Screenshot 2019-11-27 at 16 35 53](https://user-images.githubusercontent.com/47269063/69742252-5fb6ab80-1134-11ea-9de2-2bc4f02536c4.png)


## 5. ["Topics"](https://www.rabbitmq.com/tutorials/tutorial-five-ruby.html)

Step 1: Declare the exchange to be ```channel.topic('name')```  

Step 2: Declare the routing_key for the publisher ``` exchange.publish(message,routing_key: 'the_rounting_key')```  

Step 3: Use wild cards ```*``` or ```#``` to match the rounting_keys from the consumer side

Screenshot:
<img width="1405" alt="Screenshot 2019-11-28 at 09 55 12" src="https://user-images.githubusercontent.com/47269063/69796105-53c6fa00-11c5-11ea-97cc-8f984697e9f5.png">
