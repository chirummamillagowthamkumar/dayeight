 #!/bin/bash -x

#randomperson=$(( RANDOM % 50 +1 ))
declare -A birthwishes
month =$(( RANDOM % 12 + 1 ))
echo $randomperson
   for (( i=1; i<=50; i++ ))
   do         
          month=$(( RANDOM % 12 +1 ))

         echo "person birthday" $i 
         echo "${!birthwishes[@]} ${#bithwishes[@]}" 

done

birthwishes[jan]=$i
birthwishes[feb]=$i
birthwishes[march]=$i
birthwishes[april]=$i
birthwishes[may]=$i
birthwishes[june]=$i
birthwishes[july]=$i
birthwishes[august]=$i
birthwishes[september]=$i
birthwishes[november]=$i
birthwishes[december]=$i
