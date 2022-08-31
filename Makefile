say_Hello:
	@echo "Hellow meow"
generate:
	@echo "Creating empty text files"
	touch file-{1..10}.txt
clean:
	@echo "Cleaning up.."
	rm *.txt
