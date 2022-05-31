lbl_803B31CC:
/* 803B31CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B31D0  7C 08 02 A6 */	mflr r0
/* 803B31D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B31D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803B31DC  4B CE 7C F9 */	bl func_8009AED4
/* 803B31E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B31E4  3B A0 00 00 */	li r29, 0
/* 803B31E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B31EC  3F E3 00 01 */	addis r31, r3, 1
/* 803B31F0  3F C3 00 02 */	addis r30, r3, 2
/* 803B31F4  3B FF 9C E8 */	addi r31, r31, -25368
lbl_803B31F8:
/* 803B31F8  7F E3 FB 78 */	mr r3, r31
/* 803B31FC  48 02 CE 49 */	bl mPr_NullCheckPersonalID
/* 803B3200  2C 03 00 00 */	cmpwi r3, 0
/* 803B3204  40 82 01 48 */	bne lbl_803B334C
/* 803B3208  88 1F 00 2C */	lbz r0, 0x2c(r31)
/* 803B320C  88 7F 00 2E */	lbz r3, 0x2e(r31)
/* 803B3210  7C 00 18 40 */	cmplw r0, r3
/* 803B3214  41 82 00 08 */	beq lbl_803B321C
/* 803B3218  98 7F 00 2C */	stb r3, 0x2c(r31)
lbl_803B321C:
/* 803B321C  88 7F 00 2A */	lbz r3, 0x2a(r31)
/* 803B3220  54 60 DF 7E */	rlwinm r0, r3, 0x1b, 0x1d, 0x1f
/* 803B3224  54 63 F7 7E */	rlwinm r3, r3, 0x1e, 0x1d, 0x1f
/* 803B3228  7C 00 18 40 */	cmplw r0, r3
/* 803B322C  41 82 00 7C */	beq lbl_803B32A8
/* 803B3230  28 03 00 04 */	cmplwi r3, 4
/* 803B3234  40 80 00 74 */	bge lbl_803B32A8
/* 803B3238  88 7F 00 26 */	lbz r3, 0x26(r31)
/* 803B323C  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 803B3240  7C 03 00 40 */	cmplw r3, r0
/* 803B3244  40 82 00 24 */	bne lbl_803B3268
/* 803B3248  88 7F 00 27 */	lbz r3, 0x27(r31)
/* 803B324C  88 1E 61 25 */	lbz r0, 0x6125(r30)
/* 803B3250  7C 03 00 40 */	cmplw r3, r0
/* 803B3254  40 82 00 14 */	bne lbl_803B3268
/* 803B3258  A0 7F 00 28 */	lhz r3, 0x28(r31)
/* 803B325C  A0 1E 61 26 */	lhz r0, 0x6126(r30)
/* 803B3260  7C 03 00 40 */	cmplw r3, r0
/* 803B3264  41 82 00 E8 */	beq lbl_803B334C
lbl_803B3268:
/* 803B3268  88 1F 00 2D */	lbz r0, 0x2d(r31)
/* 803B326C  38 80 00 01 */	li r4, 1
/* 803B3270  7F E3 FB 78 */	mr r3, r31
/* 803B3274  98 1F 00 2C */	stb r0, 0x2c(r31)
/* 803B3278  88 1F 00 2D */	lbz r0, 0x2d(r31)
/* 803B327C  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 803B3280  88 BF 00 2A */	lbz r5, 0x2a(r31)
/* 803B3284  50 A5 1E 34 */	rlwimi r5, r5, 3, 0x18, 0x1a
/* 803B3288  98 BF 00 2A */	stb r5, 0x2a(r31)
/* 803B328C  88 1F 00 2B */	lbz r0, 0x2b(r31)
/* 803B3290  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 803B3294  98 1F 00 2B */	stb r0, 0x2b(r31)
/* 803B3298  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 803B329C  54 04 DF 7E */	rlwinm r4, r0, 0x1b, 0x1d, 0x1f
/* 803B32A0  4B FF FE A1 */	bl mHm_RehouseWallDoor
/* 803B32A4  48 00 00 A8 */	b lbl_803B334C
lbl_803B32A8:
/* 803B32A8  88 7F 00 2B */	lbz r3, 0x2b(r31)
/* 803B32AC  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 803B32B0  41 82 00 50 */	beq lbl_803B3300
/* 803B32B4  88 7F 00 26 */	lbz r3, 0x26(r31)
/* 803B32B8  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 803B32BC  7C 03 00 40 */	cmplw r3, r0
/* 803B32C0  40 82 00 24 */	bne lbl_803B32E4
/* 803B32C4  88 7F 00 27 */	lbz r3, 0x27(r31)
/* 803B32C8  88 1E 61 25 */	lbz r0, 0x6125(r30)
/* 803B32CC  7C 03 00 40 */	cmplw r3, r0
/* 803B32D0  40 82 00 14 */	bne lbl_803B32E4
/* 803B32D4  A0 7F 00 28 */	lhz r3, 0x28(r31)
/* 803B32D8  A0 1E 61 26 */	lhz r0, 0x6126(r30)
/* 803B32DC  7C 03 00 40 */	cmplw r3, r0
/* 803B32E0  41 82 00 6C */	beq lbl_803B334C
lbl_803B32E4:
/* 803B32E4  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 803B32E8  48 00 01 F1 */	bl mHm_SetBasement
/* 803B32EC  88 1F 00 2B */	lbz r0, 0x2b(r31)
/* 803B32F0  38 60 00 01 */	li r3, 1
/* 803B32F4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 803B32F8  98 1F 00 2B */	stb r0, 0x2b(r31)
/* 803B32FC  48 00 00 50 */	b lbl_803B334C
lbl_803B3300:
/* 803B3300  54 60 D7 FE */	rlwinm r0, r3, 0x1a, 0x1f, 0x1f
/* 803B3304  28 00 00 01 */	cmplwi r0, 1
/* 803B3308  40 82 00 44 */	bne lbl_803B334C
/* 803B330C  88 7F 00 26 */	lbz r3, 0x26(r31)
/* 803B3310  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 803B3314  7C 03 00 40 */	cmplw r3, r0
/* 803B3318  40 82 00 24 */	bne lbl_803B333C
/* 803B331C  88 7F 00 27 */	lbz r3, 0x27(r31)
/* 803B3320  88 1E 61 25 */	lbz r0, 0x6125(r30)
/* 803B3324  7C 03 00 40 */	cmplw r3, r0
/* 803B3328  40 82 00 14 */	bne lbl_803B333C
/* 803B332C  A0 7F 00 28 */	lhz r3, 0x28(r31)
/* 803B3330  A0 1E 61 26 */	lhz r0, 0x6126(r30)
/* 803B3334  7C 03 00 40 */	cmplw r3, r0
/* 803B3338  41 82 00 14 */	beq lbl_803B334C
lbl_803B333C:
/* 803B333C  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 803B3340  38 60 00 04 */	li r3, 4
/* 803B3344  50 60 16 FA */	rlwimi r0, r3, 2, 0x1b, 0x1d
/* 803B3348  98 1F 00 2A */	stb r0, 0x2a(r31)
lbl_803B334C:
/* 803B334C  3B BD 00 01 */	addi r29, r29, 1
/* 803B3350  3B FF 26 B0 */	addi r31, r31, 0x26b0
/* 803B3354  2C 1D 00 04 */	cmpwi r29, 4
/* 803B3358  41 80 FE A0 */	blt lbl_803B31F8
/* 803B335C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3360  38 00 00 04 */	li r0, 4
/* 803B3364  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803B3368  38 60 00 00 */	li r3, 0
/* 803B336C  7C 09 03 A6 */	mtctr r0
lbl_803B3370:
/* 803B3370  7C 85 1A 14 */	add r4, r5, r3
/* 803B3374  38 63 24 40 */	addi r3, r3, 0x2440
/* 803B3378  80 04 23 68 */	lwz r0, 0x2368(r4)
/* 803B337C  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 803B3380  90 04 23 68 */	stw r0, 0x2368(r4)
/* 803B3384  42 00 FF EC */	bdnz lbl_803B3370
/* 803B3388  39 61 00 20 */	addi r11, r1, 0x20
/* 803B338C  4B CE 7B 95 */	bl func_8009AF20
/* 803B3390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B3394  7C 08 03 A6 */	mtlr r0
/* 803B3398  38 21 00 20 */	addi r1, r1, 0x20
/* 803B339C  4E 80 00 20 */	blr 
