echo "Building FormulaPlus"

echo "Building the database"
cd 0\ -\ \ Database
./build.sh

echo "Building the FormulaPro core"
cd ..
cd 2\ -\ \ FormulaPro
./build.sh

echo "Building Reference"
cd ..
cd 3\ -\ \ Reference\ Part
./build.sh

echo "Building Libraries"
cd ..
cd Global\ Libraries
./build.sh

cd ..

echo "Putting it all together"
cat Database.big.lua lib.big.lua FormulaPro.big.lua Reference.big.lua main.lua > FormulaPlus.big.lua
./luna/luna FormulaPlus.big.lua FormulaPlus.tns

echo "Done building"

echo "Cleaning up"
rm *.big.lua

echo "Done. Enjoy!"