###
 # @Author: taoxiang
 # @Date: 2021-04-25 17:02:01
 # @LastEditTime: 2021-04-26 10:43:17
 # @LastEditors: taoxiang
 # @Description: vuepress deploy
 # @FilePath: /docs/deploy.sh
 # 打工人,打工魂,打工都是人上人
### 
#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:/Thawsoar/docs.git master:gh-pages

# 如果使用 travis 持续集成
git push -f https://${access_token}@github.com/Thawsoar/docs.git master:gh-pages

cd -