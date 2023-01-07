OBJS = src/BBE_main.o \
       src/BBE_match.o \
       src/BBE_ref.o \
       src/BBE_render.o \
       src/intset.o \
       src/strutil.o \
       data/BBE_data.o
CFLAGS += -Wall -Isrc/
LDLIBS += -lreadline

BBE: $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LDLIBS)

src/BBE_main.o: src/BBE_main.c src/BBE_config.h src/BBE_data.h src/BBE_match.h src/BBE_ref.h src/BBE_render.h src/strutil.h

src/BBE_match.o: src/BBE_match.h src/BBE_match.c src/BBE_config.h src/BBE_data.h src/BBE_ref.h

src/BBE_ref.o: src/BBE_ref.h src/BBE_ref.c src/intset.h src/BBE_data.h

src/BBE_render.o: src/BBE_render.h src/BBE_render.c src/BBE_config.h src/BBE_data.h src/BBE_match.h src/BBE_ref.h

src/insetset.o: src/intset.h src/insetset.c

src/strutil.o: src/strutil.h src/strutil.c

data/BBE_data.o: src/BBE_data.h data/BBE_data.c

data/BBE_data.c: data/BBE.tsv data/generate.awk src/BBE_data.h
	awk -f data/generate.awk $< > $@

.PHONY: clean
clean:
	rm -rf $(OBJS) BBE
