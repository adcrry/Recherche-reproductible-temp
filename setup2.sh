conda create -n rr python==3.6.13

conda activate rr

pip install -r requirements.txt

wget https://ivc.uwaterloo.ca/database/WaterlooExploration/exploration_database_and_code.rar

mkdir -p ~/exploration_database_and_code
cd ~/exploration_database_and_code
mv ../exploration_database_and_code.rar .
unrar x exploration_database_and_code.rar

mkdir ../data
mkdir ../data/rgb
mkdir ../data/rgb/train
mkdir ../data/rgb/val

mv *.bmp ../data/rgb/train

cd ../data/rgb/val

for i in $(seq -w 1 24); do
    wget -nc "https://r0k.us/graphics/kodak/kodak/kodim${i}.png"
done