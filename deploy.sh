curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

npm install hexo-cli

mkdir hexoblog
cd hexoblog
hexo init

git clone -b master https://github.com/jerryc127/hexo-theme-butterfly.git themes/butterfly

rm -rf source
git clone git@gitlab.com:arviny/hexoblog.git source
cp source/.rsc/img/* themes/butterfly/source/img/
cp source/.rsc/root/* .

cd source
git config --local user.name "arviny"
git config --local user.email "arviny@111.com"
cd ..

npm install hexo-renderer-pug;
npm install hexo-deployer-git;
npm install hexo-generator-baidu-sitemap;
npm install hexo-generator-sitemap;
npm install hexo-math;
npm install hexo-wordcount;
npm install hexo-blog-encrypt
npm uninstall hexo-generator-index
npm install hexo-generator-indexed
npm install hexo-util --save
npm install hexo-algoliasearch --save

hexo s