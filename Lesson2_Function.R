## 함수 이해하기

# 개념
# 데이터 분석은 함수를 이용해 변수를 조작하는 일
# 한자로 함수는 '숫자를 담는 상자', 영어로 함수는 'function' 기능이라는 의미를 갖고 있습니다.

# 평균을 구하는 함수 mean()

x <- c(1, 2, 3)
x

mean(x)


# 최대값 max() / 최솟값 min()

max(x)
min(x)


# 문자 처리 전용 함수 paste()
# collapse="," : 하나로 문자를 합칠경우 쉽표로 구분
# collapse는 함수의 옵션을 설정하는 명령어이며 '파라미터(parameter)' 또는 '매개변수'라고 합니다.

str5
paste(str5, collapse = " ") #str5 문자를 합칠 때 사이에 띄어쓰기가 들어간 형태로 출력


# 함수의 결과물로 새로운 변수 만들기
x_mean <- mean(x)
x_mean

str5_paste <- paste(str5, collapse = " ")
str5_paste


## 함수 꾸러미, '패키지' 이해하기

# 패키지 안에 다양한 함수가 포함되어 있습니다.
# 함수를 사용하기 앞서 패키지 설치 필수!
# 그래프를 만들 때 많이 사용하는 함수: ggplot2
# ggplot2에는 ggplot(), qplot(), geom_histogram() 등 수십가지 그래프 관련 함수가 들어 있습니다.

# ggplot2 설치 -> install.packages("ggplot2")
# 순서 : 패키지 설치 -> 패키지 로드 -> 함수 사용
# 패키지 설치는 1번, 로드는 R스튜디오 실행시 반복 작업

install.packages("ggplot2")


# ggplot2 패키지 로드
library(ggplot2)


# 함수 사용하기
# 여러 문자로 구성된 변수 생성

x <- c("a", "a", "b", "c")
x

# 빈도 막대그래프 생성
qplot(x)


# 복습
j <- c("a", "c", "c", "d", "f", "d")
j
qplot(j)


# 실습(고속도록 연비별 빈도 막대 그래프)

library(ggplot2)
qplot(data = mpg, x = hwy) #data에 mpg, x축에 hwy 변수 지정해 그래프 생성

# x축 cty
qplot(data = mpg, x = cty)

# x축 drv, y축 hwy
qplot(data = mpg, x = drv, y = hwy)

# x축 drv, y축 hwy, 선 그래프 형태
qplot(data = mpg, x = drv, y = hwy, geom = "line")

# x축 drv, y축 hwy, 상자 그림 형태
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")

# x축 drv, y축 hwy, 상자 그림 형태, drv별 색 표현
qplot(data = mpg, x = drv, y = hwy, geom ="boxplot", colour = drv)

?qplot


#혼자해보기
score <- c(80, 60, 70, 50, 90)
mean(score)
avg <- mean(score)
avg






