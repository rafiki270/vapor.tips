docker stop vapor.tips
docker rm vapor.tips
docker run --name vapor.tips -p 3001:2368 -v /Projects/Web/vapor.tips/data:/var/lib/ghost/content ghost