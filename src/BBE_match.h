#pragma once

#include "BBE_config.h"
#include "BBE_ref.h"

typedef struct {
    int start;
    int end;
} BBE_range;

typedef struct {
    int current;
    int next_match;
    BBE_range matches[2];
} BBE_next_data;

int
BBE_next_verse(const BBE_ref *ref, const BBE_config *config, BBE_next_data *next);
