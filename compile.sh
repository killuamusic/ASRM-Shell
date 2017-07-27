JAVA_PATH=/opt/java1.6.0_10/bin
LIB_PATH=/AP_CM01/trbdata01/CCBSRM/ASRM_lib

JAVA_LIB=.
for JAR in `ls $LIB_PATH/*.jar`
do
#echo $JAR
JAVA_LIB=`echo $JAVA_LIB:$JAR`
done

#echo $JAVA_LIB

$JAVA_PATH/javac -classpath $JAVA_LIB *.java
