#include "include/jsmn.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

enum SpaceTypes {
    NONE = 0,
    BLUE = 1,
    RED = 2,
    MINIGAME = 3,
    HAPPENING = 4,
    STAR_SPACE = 5,
    CHANCE_TIME = 6,
    MUSHROOM = 8,
    BOWSER = 9,
};

typedef struct Vec3f {
    float x;
    float y;
    float z;
} Vec3f;

typedef struct SpaceData {
/* 0x00 */ char unk_00;
/* 0x01 */ unsigned char space_type; // enum board_space_type
/* 0x02 */ short unk_02;
/* 0x04 */ Vec3f coords;
/* 0x10 */ float sx;
/* 0x14 */ float sy;
/* 0x18*/  float sz;
/* 0x1C */ void* event_list;
} SpaceData;

/*
 * A small example of jsmn parsing when JSON structure is known and number of
 * tokens is predictable.
 */

static int jsoneq(const char *json, jsmntok_t *tok, const char *s) {
  if (tok->type == JSMN_STRING && (int)strlen(s) == tok->end - tok->start &&
      strncmp(json + tok->start, s, tok->end - tok->start) == 0) {
    return 0;
  }
  return -1;
}

int main() {
    int spaceIndex, totalSpaces;
    char buffer[50];
    SpaceData spacePositions[255] = { 0 };
    char jsonStringSpaces[0x2000];
    int i;
    int r;
    jsmn_parser p;
    jsmntok_t t[5000]; /* We expect no more than 1000 tokens */

    FILE *f = fopen("test.json", "r");
    fseek(f, 0, SEEK_END);
    long fsize = ftell(f);
    rewind(f);

    char *jsonFileString = malloc(fsize + 1);
    fread(jsonFileString, fsize, 1, f);
    fclose(f);
    jsonFileString[fsize] = 0;

    jsmn_init(&p);
    r = jsmn_parse(&p, jsonFileString, strlen(jsonFileString), t,
                 sizeof(t) / sizeof(t[0]));
    if (r < 0) {
        printf("Failed to parse JSON: %d\n", r);
        return 1;
    }

    /* Assume the top-level element is an object */
    if (r < 1 || t[0].type != JSMN_OBJECT) {
        printf("Object expected\n");
        return 1;
    }

    for (i = 1, spaceIndex = 0; i < r; i++) {
        if (jsoneq(jsonFileString, &t[i], "x") == 0) {
            sprintf(buffer, "%.*s\n", t[i + 1].end - t[i + 1].start,
                    jsonFileString + t[i + 1].start);
            spacePositions[spaceIndex++].coords.x = atoi(buffer);
        }
    }

    //save spaceIndex here for later so we know how many spaces there are total
    totalSpaces = spaceIndex;

    //flip writing Y and Z. Partyplanner is a 2d grid but the actual game uses 3d coords for spaces
    for (i = 1, spaceIndex = 0; i < r; i++) {
        if (jsoneq(jsonFileString, &t[i], "y") == 0) {
            sprintf(buffer, "%.*s\n", t[i + 1].end - t[i + 1].start,
                    jsonFileString + t[i + 1].start);
            spacePositions[spaceIndex].coords.z = atoi(buffer); //swap y to z
            spaceIndex++;
        }
    }

    for (i = 1, spaceIndex = 0; i < r; i++) {
        if (jsoneq(jsonFileString, &t[i], "z") == 0) {
            sprintf(buffer, "%.*s\n", t[i + 1].end - t[i + 1].start,
                    jsonFileString + t[i + 1].start);
            spacePositions[spaceIndex].coords.y = atoi(buffer); //swap z to y
            spaceIndex++;
        }
    }

    for (i = 1, spaceIndex = 0; i < r; i++) {
        if (jsoneq(jsonFileString, &t[i], "type") == 0) {
            sprintf(buffer, "%.*s\n", t[i + 1].end - t[i + 1].start,
                    jsonFileString + t[i + 1].start);
            spacePositions[spaceIndex].space_type = atoi(buffer);
            spaceIndex++;
        }
    }

    for (i = 0; i < totalSpaces; i++) {
        spacePositions[i].sx = 1.0f;
        spacePositions[i].sy = 1.0f;
        spacePositions[i].sz = 1.0f;
        spacePositions[i].unk_00 = 0;
        spacePositions[i].unk_02 = 0;
        spacePositions[i].event_list = 0;
    }

    printf("//unk_00, space_type, unk_02, x, y, z, sx, sy, sz, event_list\nSpaceData spaces[] = {\n");

    for (i = 0; i < totalSpaces; i++) {
        printf("/* 0x%02X */ {%d, %d, %d, %.1ff, %.1ff, %.1ff, %.1ff, %.1ff, %.1ff, %X, 0},\n", i + 1, spacePositions[i].unk_00, spacePositions[i].space_type,
                spacePositions[i].unk_02, spacePositions[i].coords.x, spacePositions[i].coords.y, spacePositions[i].coords.z,
                spacePositions[i].sx, spacePositions[i].sy, spacePositions[i].sz, spacePositions[i].event_list);
    }

    printf("};\n");

    return EXIT_SUCCESS;
}