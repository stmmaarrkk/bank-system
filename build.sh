pushd account-manager
mvn clean package
popd

pushd bank-api-service
mvn clean package
popd

pushd reporting-service
mvn clean package
popd

pushd user-notification-service
mvn clean package
popd
