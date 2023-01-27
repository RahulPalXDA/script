AUTHOR=RahulPalXDA  # My account which is 1.5Years Old now.
# AUTHOR=deadaf54  # Unknown account which is 4 days old as of January 27, 2023.


# Main Script from Below:

join_date=$(curl https://api.github.com/users/$AUTHOR | grep created_at | awk '{print $2}' | sed 's/"//g' | sed 's/Z//g' | sed 's/,//g' | sed 's/T/ /g' | sed 's/-/\//g')
DATEJ=`echo -n "$join_date"`
echo $DATEJ
join_stamp=$(date -d "$DATEJ" +%s)
now_stamp=$(date +%s)
echo "Current Stamp Time:"
echo $now_stamp
echo "Account Registered on GitHub DB At:"
echo $join_stamp
time_gap=$(expr $now_stamp - $join_stamp)
echo "User account's old (Seconds):"
echo $time_gap
if [[ $time_gap -gt 2592000 ]];
then
   echo "Github account is more than 30Days old Check Passed!";
else
   echo "Your github account is less than 30Days old. Please, nurture some experience then return back!"; exit 1;
fi
