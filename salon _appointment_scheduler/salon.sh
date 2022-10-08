#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE appointments, customers, services")

echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n"


MAIN_MENU() {
  if [[ $1 ]]; then
  echo -e "\n$1"#
  fi

echo -e "\n1) cut\n2) color\n3) perm\n4) style\n5) trim"
read SERVICE_ID_SELECTED

  INSERT_SERVICE_ID_SELECTED=$($PSQL "INSERT INTO services(service_id) VALUES('$SERVICE_ID_SELECTED')")

case $SERVICE_ID_SELECTED in
1) cut;;
2) color;;
3) perm;;
4) style;;
5) trim;;
*) MAIN_MENU "I could not find that service. What would you like today?";;
esac
}


SERVICE_FUNCTION() {

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
 # get customer info
if [[ $SERVICE_ID_SELECTED==1 ]];then
SERVICE='cut'
echo $SERVICE
fi
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$PHONE_NUMBER'")

       # if customer doesn't exist
        if [[ -z $CUSTOMER_NAME ]]; then
          # get new customer name
          echo -e "\nWhat's your name?"
      t    read CUSTOMER_NAME
           INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
        fi

echo -e "\nWhat time would you like your $SERVICE, $CUSTOMER_NAME"
read SERVICE_TIME
CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CUSTOMER_NAME'")

echo -e "\nI have put you down for a $SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."

}

cut(){
 SERVICE='cut'
}
color(){
 SERVICE='color'
}
perm(){
 SERVICE='perm'
}
style(){
 SERVICE='style'
}
trim(){
 SERVICE='trim'
}
 MAIN_MENU
 SERVICE_FUNCTION









#
# SERVICE_ID=$($PSQL "SELECT service_id FROM services WHERE service_id=1")
# SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id='$SERVICE_ID'")
# echo "$SERVICE_ID) $SERVICE_NAME"