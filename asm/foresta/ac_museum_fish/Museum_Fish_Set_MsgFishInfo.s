lbl_8042FD04:
/* 8042FD04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042FD08  7C 08 02 A6 */	mflr r0
/* 8042FD0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042FD10  39 61 00 30 */	addi r11, r1, 0x30
/* 8042FD14  4B C6 B1 B1 */	bl func_8009AEC4
/* 8042FD18  7C 7A 1B 78 */	mr r26, r3
/* 8042FD1C  3C A0 80 68 */	lis r5, group_fish_name@ha /* 0x806862F0@ha */
/* 8042FD20  3B A0 00 00 */	li r29, 0
/* 8042FD24  3C 60 80 68 */	lis r3, group_max_num@ha /* 0x8068623C@ha */
/* 8042FD28  3C DA 00 01 */	addis r6, r26, 1
/* 8042FD2C  54 9C 10 3A */	slwi r28, r4, 2
/* 8042FD30  93 A6 4D 20 */	stw r29, 0x4d20(r6)
/* 8042FD34  3B C5 62 F0 */	addi r30, r5, group_fish_name@l /* 0x806862F0@l */
/* 8042FD38  3B E3 62 3C */	addi r31, r3, group_max_num@l /* 0x8068623C@l */
/* 8042FD3C  3B 60 00 00 */	li r27, 0
/* 8042FD40  93 A6 4D 24 */	stw r29, 0x4d24(r6)
/* 8042FD44  48 00 00 60 */	b lbl_8042FDA4
lbl_8042FD48:
/* 8042FD48  7C 7E E0 2E */	lwzx r3, r30, r28
/* 8042FD4C  7C 03 E8 2E */	lwzx r0, r3, r29
/* 8042FD50  7C 19 07 34 */	extsh r25, r0
/* 8042FD54  7F 23 CB 78 */	mr r3, r25
/* 8042FD58  4B F9 77 71 */	bl mMmd_FishInfo
/* 8042FD5C  7C 65 07 35 */	extsh. r5, r3
/* 8042FD60  41 82 00 3C */	beq lbl_8042FD9C
/* 8042FD64  3C 9A 00 01 */	addis r4, r26, 1
/* 8042FD68  80 04 4D 20 */	lwz r0, 0x4d20(r4)
/* 8042FD6C  54 03 10 3A */	slwi r3, r0, 2
/* 8042FD70  3C 63 00 01 */	addis r3, r3, 1
/* 8042FD74  38 63 4D 28 */	addi r3, r3, 0x4d28
/* 8042FD78  7F 3A 1B 2E */	sthx r25, r26, r3
/* 8042FD7C  80 04 4D 20 */	lwz r0, 0x4d20(r4)
/* 8042FD80  54 03 10 3A */	slwi r3, r0, 2
/* 8042FD84  3C 63 00 01 */	addis r3, r3, 1
/* 8042FD88  38 63 4D 2A */	addi r3, r3, 0x4d2a
/* 8042FD8C  7C BA 1B 2E */	sthx r5, r26, r3
/* 8042FD90  80 64 4D 20 */	lwz r3, 0x4d20(r4)
/* 8042FD94  38 03 00 01 */	addi r0, r3, 1
/* 8042FD98  90 04 4D 20 */	stw r0, 0x4d20(r4)
lbl_8042FD9C:
/* 8042FD9C  3B 7B 00 01 */	addi r27, r27, 1
/* 8042FDA0  3B BD 00 04 */	addi r29, r29, 4
lbl_8042FDA4:
/* 8042FDA4  7C 1F E0 2E */	lwzx r0, r31, r28
/* 8042FDA8  7C 1B 00 00 */	cmpw r27, r0
/* 8042FDAC  41 80 FF 9C */	blt lbl_8042FD48
/* 8042FDB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8042FDB4  4B C6 B1 5D */	bl func_8009AF10
/* 8042FDB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042FDBC  7C 08 03 A6 */	mtlr r0
/* 8042FDC0  38 21 00 30 */	addi r1, r1, 0x30
/* 8042FDC4  4E 80 00 20 */	blr 
