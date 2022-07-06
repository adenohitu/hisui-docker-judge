# run

### Python

```sh
docker cp ./sample/python/main.py hisui-judge-docker:/home/python/main.py
docker exec -it hisui-judge-docker python3 /home/python/main.py
```

### C++

```sh
docker cp ./sample/cpp/a.cpp  hisui-judge-docker:/home/cpp/a.cpp
docker exec -it hisui-judge-docker g++ -std=gnu++17 -Wall -Wextra -O2 -DONLINE_JUDGE -o /home/cpp/a.out /home/cpp/a.cpp
docker exec -it hisui-judge-docker /home/cpp/a.out
```
