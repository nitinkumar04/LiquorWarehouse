/*  
  DO NOT SAVE THE CHANGES OUTLINED BELOW INTO VISUAL STUDIO!!!!!!
  How to run this script:
    1)  Copy and paste it into SQL SMS, and make sure you're in the database you want to run the script against
    2)  Change <certificatename> to be the name of the certificate on the server you're publishing to.  
          If you have questions, do not run this script until you speak with someone that can help.  The data can be potentially lost if done correctly!
    3)  Change <databasename> to be the name of the database that you're encrypting
    4)  Execute it
*/

exec SeedStageData;

create database encryption key with algorithm = aes_256
encryption by server certificate <certificatename>;

alter database <databasename> set encryption on;