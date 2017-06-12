# blog  
Python Korea 블로그입니다.  

* http://blog.pycon.kr  
* 본 블로그는 파이콘 준비위원회에서 파이콘 혹은 파이썬과 관련한 내용을 제공합니다.  
* static site generator인 [jekyll](https://jekyllrb.com/)로 운영됩니다.  


## repository에 access  

먼저, 아래 두가지 방법 중 하나를 선택하여 repository에 접근할 수 있습니다.  

1. blog 저장소를 clone하여 local에서 작성.  
  - terminal 사용 시 :
    `git clone https://github.com/pythonkr/blog.git`

2. github상에서 pull request 생성.  
  - `_posts/` 폴더로 이동  
  - `create new file` 혹은  `upload files`  
  
## post 작성  
> https://jekyllrb.com/docs/posts/  
> Markdown 형식으로의 작성이 필수적입니다. (참고 : https://guides.github.com/features/mastering-markdown/)  

- repository 내 `_posts/` 폴더에 `yyyy-mm-dd-slug.md`형식의 파일명으로 저장. (ex. `2017-05-10-using-python.md`)  
- YAML Front Matter 작성. (글의 첫 머리에 yaml 형식의 아래 내용 포함)   

```
---
layout : post
comments : true
title : <글제목>
author : <작성자>
---
```


## 작성한 post를 blog에 반영
* repository에 access한 방법에 따라 pull request.
