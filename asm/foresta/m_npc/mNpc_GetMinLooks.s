lbl_803D2308:
/* 803D2308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D230C  7C 08 02 A6 */	mflr r0
/* 803D2310  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D2314  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2318  4B CC 8B B5 */	bl func_8009AECC
/* 803D231C  7C 7B 1B 78 */	mr r27, r3
/* 803D2320  38 00 00 00 */	li r0, 0
/* 803D2324  98 03 00 00 */	stb r0, 0(r3)
/* 803D2328  7C 9C 23 78 */	mr r28, r4
/* 803D232C  3B E0 00 0F */	li r31, 0xf
/* 803D2330  3B C0 00 06 */	li r30, 6
/* 803D2334  90 04 00 00 */	stw r0, 0(r4)
/* 803D2338  3B A0 00 00 */	li r29, 0
/* 803D233C  48 00 00 80 */	b lbl_803D23BC
lbl_803D2340:
/* 803D2340  7F A3 EB 78 */	mr r3, r29
/* 803D2344  4B FF CD 35 */	bl mNpc_GetLooks2NotHaveAppearedNum
/* 803D2348  2C 03 00 00 */	cmpwi r3, 0
/* 803D234C  40 81 00 6C */	ble lbl_803D23B8
/* 803D2350  7F A3 EB 78 */	mr r3, r29
/* 803D2354  4B FF A7 F1 */	bl mNpc_GetSameLooksNum
/* 803D2358  7C 1F 18 00 */	cmpw r31, r3
/* 803D235C  40 81 00 34 */	ble lbl_803D2390
/* 803D2360  38 80 00 00 */	li r4, 0
/* 803D2364  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803D2368  98 9B 00 00 */	stb r4, 0(r27)
/* 803D236C  38 80 00 01 */	li r4, 1
/* 803D2370  7C 7F 1B 78 */	mr r31, r3
/* 803D2374  7F BE EB 78 */	mr r30, r29
/* 803D2378  88 7B 00 00 */	lbz r3, 0(r27)
/* 803D237C  7C 80 00 30 */	slw r0, r4, r0
/* 803D2380  7C 60 03 78 */	or r0, r3, r0
/* 803D2384  98 1B 00 00 */	stb r0, 0(r27)
/* 803D2388  90 9C 00 00 */	stw r4, 0(r28)
/* 803D238C  48 00 00 2C */	b lbl_803D23B8
lbl_803D2390:
/* 803D2390  40 82 00 28 */	bne lbl_803D23B8
/* 803D2394  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803D2398  38 60 00 01 */	li r3, 1
/* 803D239C  88 9B 00 00 */	lbz r4, 0(r27)
/* 803D23A0  7C 60 00 30 */	slw r0, r3, r0
/* 803D23A4  7C 80 03 78 */	or r0, r4, r0
/* 803D23A8  98 1B 00 00 */	stb r0, 0(r27)
/* 803D23AC  80 7C 00 00 */	lwz r3, 0(r28)
/* 803D23B0  38 03 00 01 */	addi r0, r3, 1
/* 803D23B4  90 1C 00 00 */	stw r0, 0(r28)
lbl_803D23B8:
/* 803D23B8  3B BD 00 01 */	addi r29, r29, 1
lbl_803D23BC:
/* 803D23BC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803D23C0  28 00 00 06 */	cmplwi r0, 6
/* 803D23C4  41 80 FF 7C */	blt lbl_803D2340
/* 803D23C8  88 1B 00 00 */	lbz r0, 0(r27)
/* 803D23CC  28 00 00 00 */	cmplwi r0, 0
/* 803D23D0  40 82 00 68 */	bne lbl_803D2438
/* 803D23D4  80 1C 00 00 */	lwz r0, 0(r28)
/* 803D23D8  2C 00 00 00 */	cmpwi r0, 0
/* 803D23DC  40 82 00 5C */	bne lbl_803D2438
/* 803D23E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D23E4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803D23E8  3C 64 00 02 */	addis r3, r4, 2
/* 803D23EC  3C 84 00 01 */	addis r4, r4, 1
/* 803D23F0  38 84 74 38 */	addi r4, r4, 0x7438
/* 803D23F4  38 63 13 4E */	addi r3, r3, 0x134e
/* 803D23F8  4B FF CD 31 */	bl mNpc_ResetHaveAppeared_common
/* 803D23FC  38 A0 00 00 */	li r5, 0
/* 803D2400  38 80 00 01 */	li r4, 1
/* 803D2404  48 00 00 28 */	b lbl_803D242C
lbl_803D2408:
/* 803D2408  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803D240C  88 7B 00 00 */	lbz r3, 0(r27)
/* 803D2410  7C 80 00 30 */	slw r0, r4, r0
/* 803D2414  38 A5 00 01 */	addi r5, r5, 1
/* 803D2418  7C 60 03 78 */	or r0, r3, r0
/* 803D241C  98 1B 00 00 */	stb r0, 0(r27)
/* 803D2420  80 7C 00 00 */	lwz r3, 0(r28)
/* 803D2424  38 03 00 01 */	addi r0, r3, 1
/* 803D2428  90 1C 00 00 */	stw r0, 0(r28)
lbl_803D242C:
/* 803D242C  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803D2430  28 00 00 06 */	cmplwi r0, 6
/* 803D2434  41 80 FF D4 */	blt lbl_803D2408
lbl_803D2438:
/* 803D2438  80 1C 00 00 */	lwz r0, 0(r28)
/* 803D243C  2C 00 00 01 */	cmpwi r0, 1
/* 803D2440  40 81 00 08 */	ble lbl_803D2448
/* 803D2444  3B C0 00 06 */	li r30, 6
lbl_803D2448:
/* 803D2448  7F C3 F3 78 */	mr r3, r30
/* 803D244C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2450  4B CC 8A C9 */	bl func_8009AF18
/* 803D2454  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D2458  7C 08 03 A6 */	mtlr r0
/* 803D245C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D2460  4E 80 00 20 */	blr 
