#ifndef INIT_SEC_H
#define INIT_SEC_H

#include <string.h>

enum device_variant {
    VARIANT_A530N = 0,
    VARIANT_MAX
};

typedef struct {
    std::string model;
    std::string codename;
} variant;

static const variant korea_unified_models = {
    .model = "SM-A530N",
    .codename = "jackpotlte"
};

static const variant *all_variants[VARIANT_MAX] = {
    &korea_unified_models,
};

#endif // INIT_SEC_H
