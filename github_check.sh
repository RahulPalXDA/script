AUTHOR=RahulPalXDA  # My account which is 1.5Years Old now.
# AUTHOR=agathasenpai2  # A friends account which is 9days old.


# Main Script from Below:

join_date=$(curl https://api.github.com/users/$AUTHOR | grep created_at | awk '{print $2}' | sed 's/"//g' | sed 's/Z//g' | sed 's/,//g' | sed 's/T/ /g' | sed 's/-/\//g')
DATEJ=`echo -n "$join_date"`
echo $DATEJ
join_stamp=$(date -d "$DATEJ" +%s)
now_stamp=$(date +%s)
echo "Now Time is:"
echo $now_stamp
echo "User Joined Github At:"
echo $join_stamp
time_gap=$(expr $now_stamp - $join_stamp)
echo "User account's old (Seconds):"
echo $time_gap
if [[ $time_gap -gt 2592000 ]];
then
   echo "Your github account is more than 30Days old now. You can build!";
else
   echo "Your github account is less than 30Days old now. Please, be mature than return back!"; exit 1;
fi
