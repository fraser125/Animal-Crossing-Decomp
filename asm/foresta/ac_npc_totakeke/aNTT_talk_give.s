lbl_80586AE0:
/* 80586AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586AE4  7C 08 02 A6 */	mflr r0
/* 80586AE8  38 80 00 01 */	li r4, 1
/* 80586AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80586AF4  7C 7F 1B 78 */	mr r31, r3
/* 80586AF8  38 60 00 04 */	li r3, 4
/* 80586AFC  4B E1 19 81 */	bl mDemo_Get_OrderValue
/* 80586B00  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80586B04  2C 00 00 02 */	cmpwi r0, 2
/* 80586B08  40 82 00 48 */	bne lbl_80586B50
/* 80586B0C  88 BF 09 9E */	lbz r5, 0x99e(r31)
/* 80586B10  38 60 00 05 */	li r3, 5
/* 80586B14  38 80 00 00 */	li r4, 0
/* 80586B18  38 05 2A 00 */	addi r0, r5, 0x2a00
/* 80586B1C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80586B20  4B E1 19 19 */	bl mDemo_Set_OrderValue
/* 80586B24  38 60 00 05 */	li r3, 5
/* 80586B28  38 80 00 01 */	li r4, 1
/* 80586B2C  38 A0 00 07 */	li r5, 7
/* 80586B30  4B E1 19 09 */	bl mDemo_Set_OrderValue
/* 80586B34  38 60 00 05 */	li r3, 5
/* 80586B38  38 80 00 02 */	li r4, 2
/* 80586B3C  38 A0 00 00 */	li r5, 0
/* 80586B40  4B E1 18 F9 */	bl mDemo_Set_OrderValue
/* 80586B44  7F E3 FB 78 */	mr r3, r31
/* 80586B48  38 80 00 00 */	li r4, 0
/* 80586B4C  48 00 00 19 */	bl aNTT_change_talk_proc
lbl_80586B50:
/* 80586B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80586B58  7C 08 03 A6 */	mtlr r0
/* 80586B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80586B60  4E 80 00 20 */	blr 
