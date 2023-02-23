##Задание № 1

cat > pets

cat pets

cat > pack_animals

cat pack_animals

cat pets pack_animals > all_animals

cat all_animals

mv all_animals human_friends

cat human_friends

mkdir GeekBrainsFinal

mv human_friends GeekBrainsFinal/

mv pets GeekBrainsFinal/

mv pack_animals GeekBrainsFinal/

cd GeekBrainsFinal/

git init

git add -A

git commit -m "task 1 finish"

ssh-keygen

cat ~/.ssh/id_rsa.pub

git remote add origin git@github.com:VladimirTialin/GeekBrainsFinalTask.git

git branch -M main

git push -u origin main


##Задание № 2

mkdir task2

ll

mv human_friends task2/

cd task2/

ll

cd ..

git add task2/

git commit -m "task 2 finish"

git push


##Задание № 3

sudo apt install mysql-server

sudo service mysql restart

mysql -u root -p


***В терминале mysql***

show databases;

exit


##Задание № 4

wget http://archive.ubuntu.com/ubuntu/pool/universe/v/vifm/vifm_0.12-1_amd64.deb

ll

chmod ugo+rwx vifm_0.12-1_amd64.deb

ll

sudo dpkg -i vifm_0.12-1_amd64.deb*

vifm

sudo dpkg -r vifm

ll

git branch debpacket

git branch

git checkout debpacket

git branch

git add vifm_0.12-1_amd64.deb

git commit -m "task 3-4 finish"

git push --set-upstream origin debpacket
