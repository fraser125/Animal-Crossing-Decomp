lbl_805536DC:
/* 805536DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805536E0  7C 08 02 A6 */	mflr r0
/* 805536E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805536E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805536EC  7C 9F 23 78 */	mr r31, r4
/* 805536F0  38 80 00 09 */	li r4, 9
/* 805536F4  93 C1 00 08 */	stw r30, 8(r1)
/* 805536F8  7C 7E 1B 78 */	mr r30, r3
/* 805536FC  38 60 00 04 */	li r3, 4
/* 80553700  4B E4 4D 7D */	bl mDemo_Get_OrderValue
/* 80553704  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80553708  41 82 00 34 */	beq lbl_8055373C
/* 8055370C  4B E6 BF 9D */	bl func_803BF6A8
/* 80553710  4B E6 D5 89 */	bl mMsg_Check_MainNormalContinue
/* 80553714  2C 03 00 00 */	cmpwi r3, 0
/* 80553718  41 82 00 24 */	beq lbl_8055373C
/* 8055371C  80 BE 09 98 */	lwz r5, 0x998(r30)
/* 80553720  7F C3 F3 78 */	mr r3, r30
/* 80553724  7F E4 FB 78 */	mr r4, r31
/* 80553728  48 00 11 E1 */	bl aNGD_setupAction
/* 8055372C  38 60 00 04 */	li r3, 4
/* 80553730  38 80 00 09 */	li r4, 9
/* 80553734  38 A0 00 00 */	li r5, 0
/* 80553738  4B E4 4D 01 */	bl mDemo_Set_OrderValue
lbl_8055373C:
/* 8055373C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80553744  83 C1 00 08 */	lwz r30, 8(r1)
/* 80553748  7C 08 03 A6 */	mtlr r0
/* 8055374C  38 21 00 10 */	addi r1, r1, 0x10
/* 80553750  4E 80 00 20 */	blr 
