FLAGS= -lm
BITS=64
all: cordic-test 
	./out/$^ 
	
gentable: gentable.c
	gcc $^ -o ./out/$@ $(FLAGS) 

cordic.h: gentable 
	./out/$^ $(BITS)

cordic-test: cordic-test.c cordic.h
	gcc $^ -o ./out/$@ $(FLAGS) 

clean: 
	rm -r ./out/*
	rm cordic.h