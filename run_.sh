
JAVA_PATH=/opt/java1.6.0_10/bin

LIB_PATH=/AP_CM01/trbdata01/CCBSRM/ASRM_lib

APP_PATH_OPER=

JAVA_LIB=.
for MY_CLASS in `ls $LIB_PATH/*.jar`

do
JAVA_LIB=`echo $JAVA_LIB:$MY_CLASS`
done

cd ${APP_PATH_OPER} 

#######################    RUN JAVA    ########################

$JAVA_PATH/java -classpath $JAVA_LIB:. 

#######################    RUN JAVA    ########################


banner "Finished"
