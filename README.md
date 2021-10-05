# Bank System
## Description
In this project, **bank-api-service**(Kafka producer) receives some transactions and determine if some of them are invalid. The **bank-api-service** send those invalid transaction to the **suspicious-transactions** topic and send the others to the **valid-transactions**.  
We have **account-manager** subscribe to the **valid-transactions** topic, **user-notification-service** subscribe to the **suspicious-transactions** topic, and **reporting-service** subscribe to both topics.  
This project gives me a hands-on experience with Kafka and distributed system.
## Installation
1. Install Kafka and Zookeeper
2. Install java
3. Run `build.sh` to build all jars that could be used.
## Testing
1. Launch zookeeper
2. Launch Kafka broker listening to port **9092**, **9093**, **9094**.
3. Create Kafka topics **valid-transactions** and **suspicious-transactions**.
4. Run `start_account_manager.sh` to start consumer: **account-manager**
5. Run `start_reporting_service.sh` to start consumer: **reporting-service**
6. Run `start_user_notification_service.sh` to start consumer: **user-notification-service**
7. After starting all consumer, run `send_transactions.sh` to send transactions to 
