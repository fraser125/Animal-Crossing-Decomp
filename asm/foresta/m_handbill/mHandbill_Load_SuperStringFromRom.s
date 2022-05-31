lbl_803B23A8:
/* 803B23A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803B23AC  7C 08 02 A6 */	mflr r0
/* 803B23B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 803B23B4  39 61 00 60 */	addi r11, r1, 0x60
/* 803B23B8  4B CE 8B 11 */	bl func_8009AEC8
/* 803B23BC  2C 06 00 00 */	cmpwi r6, 0
/* 803B23C0  7C 7D 1B 78 */	mr r29, r3
/* 803B23C4  7C 9F 23 78 */	mr r31, r4
/* 803B23C8  7C BE 2B 78 */	mr r30, r5
/* 803B23CC  41 80 01 18 */	blt lbl_803B24E4
/* 803B23D0  2C 06 03 D6 */	cmpwi r6, 0x3d6
/* 803B23D4  40 80 01 10 */	bge lbl_803B24E4
/* 803B23D8  7C C3 33 78 */	mr r3, r6
/* 803B23DC  38 81 00 10 */	addi r4, r1, 0x10
/* 803B23E0  38 A1 00 0C */	addi r5, r1, 0xc
/* 803B23E4  4B FF FE 8D */	bl mHandbill_Get_SuperStringDataAddressAndSize
/* 803B23E8  7F A3 EB 78 */	mr r3, r29
/* 803B23EC  7F E4 FB 78 */	mr r4, r31
/* 803B23F0  38 A0 00 20 */	li r5, 0x20
/* 803B23F4  48 00 86 55 */	bl mem_clear
/* 803B23F8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803B23FC  28 00 00 00 */	cmplwi r0, 0
/* 803B2400  41 82 00 E4 */	beq lbl_803B24E4
/* 803B2404  83 81 00 0C */	lwz r28, 0xc(r1)
/* 803B2408  28 1C 00 00 */	cmplwi r28, 0
/* 803B240C  41 82 00 D8 */	beq lbl_803B24E4
/* 803B2410  3C 60 81 16 */	lis r3, buff_652@ha /* 0x81167F78@ha */
/* 803B2414  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 803B2418  38 63 7F 78 */	addi r3, r3, buff_652@l /* 0x81167F78@l */
/* 803B241C  38 80 00 5A */	li r4, 0x5a
/* 803B2420  7F 5B 00 50 */	subf r26, r27, r0
/* 803B2424  4B CA AC 45 */	bl bzero
/* 803B2428  38 1C 00 1F */	addi r0, r28, 0x1f
/* 803B242C  3C 60 81 16 */	lis r3, buff_652@ha /* 0x81167F78@ha */
/* 803B2430  7C 1A 02 14 */	add r0, r26, r0
/* 803B2434  38 83 7F 78 */	addi r4, r3, buff_652@l /* 0x81167F78@l */
/* 803B2438  7F 63 DB 78 */	mr r3, r27
/* 803B243C  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 803B2440  4B C5 48 35 */	bl _JW_GetResourceAram
/* 803B2444  3C 60 81 16 */	lis r3, buff_652@ha /* 0x81167F78@ha */
/* 803B2448  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803B244C  38 03 7F 78 */	addi r0, r3, buff_652@l /* 0x81167F78@l */
/* 803B2450  7C 03 03 78 */	mr r3, r0
/* 803B2454  7C A0 D2 14 */	add r5, r0, r26
/* 803B2458  7C 89 03 A6 */	mtctr r4
/* 803B245C  2C 04 00 00 */	cmpwi r4, 0
/* 803B2460  40 81 00 18 */	ble lbl_803B2478
lbl_803B2464:
/* 803B2464  88 05 00 00 */	lbz r0, 0(r5)
/* 803B2468  38 A5 00 01 */	addi r5, r5, 1
/* 803B246C  98 03 00 00 */	stb r0, 0(r3)
/* 803B2470  38 63 00 01 */	addi r3, r3, 1
/* 803B2474  42 00 FF F0 */	bdnz lbl_803B2464
lbl_803B2478:
/* 803B2478  38 61 00 14 */	addi r3, r1, 0x14
/* 803B247C  38 80 00 2B */	li r4, 0x2b
/* 803B2480  38 A0 00 20 */	li r5, 0x20
/* 803B2484  48 00 85 C5 */	bl mem_clear
/* 803B2488  3C 60 81 16 */	lis r3, buff_652@ha /* 0x81167F78@ha */
/* 803B248C  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 803B2490  38 C3 7F 78 */	addi r6, r3, buff_652@l /* 0x81167F78@l */
/* 803B2494  38 A1 00 08 */	addi r5, r1, 8
/* 803B2498  38 61 00 14 */	addi r3, r1, 0x14
/* 803B249C  38 80 00 2B */	li r4, 0x2b
/* 803B24A0  4B FF FE A9 */	bl mHandbill_CheckSuperStringBorderAndCopy
/* 803B24A4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803B24A8  38 61 00 14 */	addi r3, r1, 0x14
/* 803B24AC  38 C1 00 08 */	addi r6, r1, 8
/* 803B24B0  38 80 00 2B */	li r4, 0x2b
/* 803B24B4  38 A5 FF FF */	addi r5, r5, -1
/* 803B24B8  38 E0 00 02 */	li r7, 2
/* 803B24BC  4B FF FD 0D */	bl mHandbill_Change_ControlCode2
/* 803B24C0  2C 1F 00 2B */	cmpwi r31, 0x2b
/* 803B24C4  7F A4 EB 78 */	mr r4, r29
/* 803B24C8  38 61 00 14 */	addi r3, r1, 0x14
/* 803B24CC  38 A0 00 2B */	li r5, 0x2b
/* 803B24D0  40 80 00 08 */	bge lbl_803B24D8
/* 803B24D4  7F E5 FB 78 */	mr r5, r31
lbl_803B24D8:
/* 803B24D8  4B CA AB 45 */	bl func_8005D01C
/* 803B24DC  80 01 00 08 */	lwz r0, 8(r1)
/* 803B24E0  90 1E 00 00 */	stw r0, 0(r30)
lbl_803B24E4:
/* 803B24E4  39 61 00 60 */	addi r11, r1, 0x60
/* 803B24E8  4B CE 8A 2D */	bl func_8009AF14
/* 803B24EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803B24F0  7C 08 03 A6 */	mtlr r0
/* 803B24F4  38 21 00 60 */	addi r1, r1, 0x60
/* 803B24F8  4E 80 00 20 */	blr 
