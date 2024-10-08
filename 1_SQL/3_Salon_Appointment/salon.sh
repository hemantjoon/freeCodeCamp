#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon -t --no-align -c"

MAIN_MENU() {
 SERVICES_LIST=$($PSQL "SELECT * FROM services")

 echo -e "\nWelcome to the Salon!!!\nOur services:"

 ## Replaces '|' with ')'
 echo "$SERVICES_LIST" | sed "s/|/) /"

 SELECTED_SERVICE_FUN
}

SELECTED_SERVICE_FUN(){
 echo -e "\nPlease choose your service"
 read SERVICE_ID_SELECTED

 SERVICE_ID_SELECTED=$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED")
 SERVICE_SELECTED_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
 if [[ -z $SERVICE_ID_SELECTED ]]
 then
    MAIN_MENU
 else
    echo -e "\nPlease provide your Phone Number"
    read CUSTOMER_PHONE
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
    if [[ -z $CUSTOMER_ID ]]
    then
       echo -e "\nPlease provide your name"
       read CUSTOMER_NAME

       echo -e "\nDear $CUSTOMER_NAME, please confirm your timings"
       read SERVICE_TIME

       INSERT_CUSTOMER_DATA_BOOL=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")

       CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

       INSERT_APPOINTMENT_DATA_BOOL=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

       echo -e "\nI have put you down for a $SERVICE_SELECTED_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
    else
       CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")

       echo -e "\nDear $CUSTOMER_NAME, please confirm your timings"
       read SERVICE_TIME

       CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

       INSERT_APPOINTMENT_DATA_BOOL=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

       echo -e "\nI have put you down for a $SERVICE_SELECTED_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
    fi
 fi
}

MAIN_MENU