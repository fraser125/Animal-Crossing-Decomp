lbl_8053D200:
/* 8053D200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053D204  7C 08 02 A6 */	mflr r0
/* 8053D208  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053D20C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053D210  4B B5 DC C5 */	bl func_8009AED4
/* 8053D214  7C 7E 1B 78 */	mr r30, r3
/* 8053D218  38 60 00 04 */	li r3, 4
/* 8053D21C  38 80 00 02 */	li r4, 2
/* 8053D220  4B E5 B2 5D */	bl mDemo_Get_OrderValue
/* 8053D224  54 7F 04 3F */	clrlwi. r31, r3, 0x10
/* 8053D228  41 82 00 B4 */	beq lbl_8053D2DC
/* 8053D22C  38 60 00 04 */	li r3, 4
/* 8053D230  38 80 00 08 */	li r4, 8
/* 8053D234  4B E5 B2 49 */	bl mDemo_Get_OrderValue
/* 8053D238  2C 1F 00 09 */	cmpwi r31, 9
/* 8053D23C  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 8053D240  41 80 00 28 */	blt lbl_8053D268
/* 8053D244  38 60 00 04 */	li r3, 4
/* 8053D248  38 80 00 02 */	li r4, 2
/* 8053D24C  38 A0 00 00 */	li r5, 0
/* 8053D250  4B E5 B1 E9 */	bl mDemo_Set_OrderValue
/* 8053D254  38 60 00 04 */	li r3, 4
/* 8053D258  38 80 00 08 */	li r4, 8
/* 8053D25C  38 A0 00 00 */	li r5, 0
/* 8053D260  4B E5 B1 D9 */	bl mDemo_Set_OrderValue
/* 8053D264  48 00 00 78 */	b lbl_8053D2DC
lbl_8053D268:
/* 8053D268  2C 1F 00 06 */	cmpwi r31, 6
/* 8053D26C  41 82 00 40 */	beq lbl_8053D2AC
/* 8053D270  40 80 00 10 */	bge lbl_8053D280
/* 8053D274  2C 1F 00 05 */	cmpwi r31, 5
/* 8053D278  40 80 00 14 */	bge lbl_8053D28C
/* 8053D27C  48 00 00 30 */	b lbl_8053D2AC
lbl_8053D280:
/* 8053D280  2C 1F 00 08 */	cmpwi r31, 8
/* 8053D284  40 80 00 28 */	bge lbl_8053D2AC
/* 8053D288  48 00 00 0C */	b lbl_8053D294
lbl_8053D28C:
/* 8053D28C  3B E0 00 00 */	li r31, 0
/* 8053D290  48 00 00 1C */	b lbl_8053D2AC
lbl_8053D294:
/* 8053D294  7F C3 F3 78 */	mr r3, r30
/* 8053D298  4B E9 4C 69 */	bl mNpc_GetNpcLooks
/* 8053D29C  3C 80 80 6A */	lis r4, aNPC_uzai_feel@ha /* 0x806A3478@ha */
/* 8053D2A0  54 60 10 3A */	slwi r0, r3, 2
/* 8053D2A4  38 64 34 78 */	addi r3, r4, aNPC_uzai_feel@l /* 0x806A3478@l */
/* 8053D2A8  7F E3 00 2E */	lwzx r31, r3, r0
lbl_8053D2AC:
/* 8053D2AC  7F C3 F3 78 */	mr r3, r30
/* 8053D2B0  7F E4 FB 78 */	mr r4, r31
/* 8053D2B4  7F A5 EB 78 */	mr r5, r29
/* 8053D2B8  48 00 19 81 */	bl aNPC_set_feel_info
/* 8053D2BC  38 60 00 04 */	li r3, 4
/* 8053D2C0  38 80 00 02 */	li r4, 2
/* 8053D2C4  38 A0 00 00 */	li r5, 0
/* 8053D2C8  4B E5 B1 71 */	bl mDemo_Set_OrderValue
/* 8053D2CC  38 60 00 04 */	li r3, 4
/* 8053D2D0  38 80 00 08 */	li r4, 8
/* 8053D2D4  38 A0 00 00 */	li r5, 0
/* 8053D2D8  4B E5 B1 61 */	bl mDemo_Set_OrderValue
lbl_8053D2DC:
/* 8053D2DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8053D2E0  4B B5 DC 41 */	bl func_8009AF20
/* 8053D2E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053D2E8  7C 08 03 A6 */	mtlr r0
/* 8053D2EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8053D2F0  4E 80 00 20 */	blr 
