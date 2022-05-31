lbl_8055D1F0:
/* 8055D1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055D1F4  7C 08 02 A6 */	mflr r0
/* 8055D1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055D1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055D200  7C 9F 23 78 */	mr r31, r4
/* 8055D204  38 80 00 09 */	li r4, 9
/* 8055D208  93 C1 00 08 */	stw r30, 8(r1)
/* 8055D20C  7C 7E 1B 78 */	mr r30, r3
/* 8055D210  38 60 00 04 */	li r3, 4
/* 8055D214  4B E3 B2 69 */	bl mDemo_Get_OrderValue
/* 8055D218  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8055D21C  41 82 00 24 */	beq lbl_8055D240
/* 8055D220  38 60 00 04 */	li r3, 4
/* 8055D224  38 80 00 09 */	li r4, 9
/* 8055D228  38 A0 00 00 */	li r5, 0
/* 8055D22C  4B E3 B2 0D */	bl mDemo_Set_OrderValue
/* 8055D230  7F C3 F3 78 */	mr r3, r30
/* 8055D234  7F E4 FB 78 */	mr r4, r31
/* 8055D238  38 A0 00 1F */	li r5, 0x1f
/* 8055D23C  48 00 1B 95 */	bl aNSC_setupAction
lbl_8055D240:
/* 8055D240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055D244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055D248  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055D24C  7C 08 03 A6 */	mtlr r0
/* 8055D250  38 21 00 10 */	addi r1, r1, 0x10
/* 8055D254  4E 80 00 20 */	blr 
