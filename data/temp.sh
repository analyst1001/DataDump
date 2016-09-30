    echo '<Document>
      <Style id="bluepoly">
              <PolyStyle>
                <color>ffff0000</color>
              </PolyStyle>
         </Style>' > tempfile
for file in `ls -1 states`
do
    state=`echo $file |cut -d'.' -f1`
    echo '<Placemark>
        <name>'$state'</name>
        <styleUrl>#bluepoly</styleUrl>' >> tempfile
    cat states/$file >> tempfile
    echo '</Placemark>' >> tempfile
done
echo '</Document>' >> tempfile
