#pragma once

typedef struct {
    int number;
    char *name;
    char *abbr;
} BBE_book;

typedef struct {
    int book;
    int chapter;
    int verse;
    char *text;
} BBE_verse;

extern BBE_verse BBE_verses[];

extern int BBE_verses_length;

extern BBE_book BBE_books[];

extern int BBE_books_length;
