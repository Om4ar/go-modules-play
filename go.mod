module testone

go 1.12

require (
	github.com/sirupsen/logrus v1.4.2
	testone/hello v0.0.0
)

replace testone/hello v0.0.0 => ./hello
