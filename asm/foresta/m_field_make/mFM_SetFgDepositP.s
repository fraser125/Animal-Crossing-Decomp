lbl_803A3204:
/* 803A3204  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A3208  7C 08 02 A6 */	mflr r0
/* 803A320C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A3210  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3214  4B CF 7C C1 */	bl func_8009AED4
/* 803A3218  7C 05 31 D7 */	mullw. r0, r5, r6
/* 803A321C  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 803A3220  7C 7F 1B 78 */	mr r31, r3
/* 803A3224  39 28 85 38 */	addi r9, r8, common_data@l /* 0x81138538@l */
/* 803A3228  39 00 00 00 */	li r8, 0
/* 803A322C  81 49 00 14 */	lwz r10, 0x14(r9)
/* 803A3230  7D 09 43 78 */	mr r9, r8
/* 803A3234  7C 09 03 A6 */	mtctr r0
/* 803A3238  40 81 00 14 */	ble lbl_803A324C
lbl_803A323C:
/* 803A323C  38 08 05 88 */	addi r0, r8, 0x588
/* 803A3240  39 08 06 14 */	addi r8, r8, 0x614
/* 803A3244  7D 23 01 2E */	stwx r9, r3, r0
/* 803A3248  42 00 FF F4 */	bdnz lbl_803A323C
lbl_803A324C:
/* 803A324C  54 80 04 27 */	rlwinm. r0, r4, 0, 0x10, 0x13
/* 803A3250  40 82 01 30 */	bne lbl_803A3380
/* 803A3254  2C 0A 00 07 */	cmpwi r10, 7
/* 803A3258  3B A0 00 00 */	li r29, 0
/* 803A325C  38 80 00 00 */	li r4, 0
/* 803A3260  39 00 00 00 */	li r8, 0
/* 803A3264  40 82 00 CC */	bne lbl_803A3330
/* 803A3268  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A326C  39 65 FF FF */	addi r11, r5, -1
/* 803A3270  39 46 FF FD */	addi r10, r6, -3
/* 803A3274  39 80 00 00 */	li r12, 0
/* 803A3278  39 24 85 38 */	addi r9, r4, common_data@l /* 0x81138538@l */
/* 803A327C  48 00 00 64 */	b lbl_803A32E0
lbl_803A3280:
/* 803A3280  3B C0 00 00 */	li r30, 0
/* 803A3284  7C A9 03 A6 */	mtctr r5
/* 803A3288  2C 05 00 00 */	cmpwi r5, 0
/* 803A328C  40 81 00 50 */	ble lbl_803A32DC
lbl_803A3290:
/* 803A3290  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 803A3294  40 80 00 48 */	bge lbl_803A32DC
/* 803A3298  2C 1E 00 00 */	cmpwi r30, 0
/* 803A329C  40 81 00 34 */	ble lbl_803A32D0
/* 803A32A0  7C 1E 58 00 */	cmpw r30, r11
/* 803A32A4  40 80 00 2C */	bge lbl_803A32D0
/* 803A32A8  2C 0C 00 00 */	cmpwi r12, 0
/* 803A32AC  40 81 00 24 */	ble lbl_803A32D0
/* 803A32B0  7C 0C 50 00 */	cmpw r12, r10
/* 803A32B4  40 80 00 1C */	bge lbl_803A32D0
/* 803A32B8  7C 89 42 14 */	add r4, r9, r8
/* 803A32BC  3B BD 00 01 */	addi r29, r29, 1
/* 803A32C0  3C 84 00 02 */	addis r4, r4, 2
/* 803A32C4  39 08 00 20 */	addi r8, r8, 0x20
/* 803A32C8  38 04 0F 1C */	addi r0, r4, 0xf1c
/* 803A32CC  90 03 05 88 */	stw r0, 0x588(r3)
lbl_803A32D0:
/* 803A32D0  38 63 06 14 */	addi r3, r3, 0x614
/* 803A32D4  3B DE 00 01 */	addi r30, r30, 1
/* 803A32D8  42 00 FF B8 */	bdnz lbl_803A3290
lbl_803A32DC:
/* 803A32DC  39 8C 00 01 */	addi r12, r12, 1
lbl_803A32E0:
/* 803A32E0  7C 0C 30 00 */	cmpw r12, r6
/* 803A32E4  41 80 FF 9C */	blt lbl_803A3280
/* 803A32E8  80 87 00 00 */	lwz r4, 0(r7)
/* 803A32EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A32F0  38 C3 85 38 */	addi r6, r3, common_data@l /* 0x81138538@l */
/* 803A32F4  38 00 00 08 */	li r0, 8
/* 803A32F8  1C 64 06 14 */	mulli r3, r4, 0x614
/* 803A32FC  38 80 00 00 */	li r4, 0
/* 803A3300  1C A5 30 A0 */	mulli r5, r5, 0x30a0
/* 803A3304  7C 63 2A 14 */	add r3, r3, r5
/* 803A3308  7C 7F 1A 14 */	add r3, r31, r3
/* 803A330C  7C 09 03 A6 */	mtctr r0
lbl_803A3310:
/* 803A3310  7C A6 22 14 */	add r5, r6, r4
/* 803A3314  38 84 00 20 */	addi r4, r4, 0x20
/* 803A3318  3C A5 00 02 */	addis r5, r5, 2
/* 803A331C  38 05 3D C8 */	addi r0, r5, 0x3dc8
/* 803A3320  90 03 05 88 */	stw r0, 0x588(r3)
/* 803A3324  38 63 06 14 */	addi r3, r3, 0x614
/* 803A3328  42 00 FF E8 */	bdnz lbl_803A3310
/* 803A332C  48 00 00 54 */	b lbl_803A3380
lbl_803A3330:
/* 803A3330  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803A3334  39 20 00 00 */	li r9, 0
/* 803A3338  39 07 85 38 */	addi r8, r7, common_data@l /* 0x81138538@l */
/* 803A333C  48 00 00 3C */	b lbl_803A3378
lbl_803A3340:
/* 803A3340  7C A9 03 A6 */	mtctr r5
/* 803A3344  2C 05 00 00 */	cmpwi r5, 0
/* 803A3348  40 81 00 2C */	ble lbl_803A3374
lbl_803A334C:
/* 803A334C  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 803A3350  40 80 00 24 */	bge lbl_803A3374
/* 803A3354  7C E8 22 14 */	add r7, r8, r4
/* 803A3358  3B BD 00 01 */	addi r29, r29, 1
/* 803A335C  3C E7 00 02 */	addis r7, r7, 2
/* 803A3360  38 84 00 20 */	addi r4, r4, 0x20
/* 803A3364  38 07 0F 1C */	addi r0, r7, 0xf1c
/* 803A3368  90 03 05 88 */	stw r0, 0x588(r3)
/* 803A336C  38 63 06 14 */	addi r3, r3, 0x614
/* 803A3370  42 00 FF DC */	bdnz lbl_803A334C
lbl_803A3374:
/* 803A3374  39 29 00 01 */	addi r9, r9, 1
lbl_803A3378:
/* 803A3378  7C 09 30 00 */	cmpw r9, r6
/* 803A337C  41 80 FF C4 */	blt lbl_803A3340
lbl_803A3380:
/* 803A3380  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3384  4B CF 7B 9D */	bl func_8009AF20
/* 803A3388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A338C  7C 08 03 A6 */	mtlr r0
/* 803A3390  38 21 00 20 */	addi r1, r1, 0x20
/* 803A3394  4E 80 00 20 */	blr 
