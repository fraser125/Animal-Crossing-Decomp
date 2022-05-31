lbl_8055D8EC:
/* 8055D8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055D8F0  7C 08 02 A6 */	mflr r0
/* 8055D8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055D8F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055D8FC  7C 9F 23 78 */	mr r31, r4
/* 8055D900  38 80 00 09 */	li r4, 9
/* 8055D904  93 C1 00 08 */	stw r30, 8(r1)
/* 8055D908  7C 7E 1B 78 */	mr r30, r3
/* 8055D90C  38 60 00 04 */	li r3, 4
/* 8055D910  4B E3 AB 6D */	bl mDemo_Get_OrderValue
/* 8055D914  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8055D918  41 82 00 34 */	beq lbl_8055D94C
/* 8055D91C  4B E6 1D 8D */	bl func_803BF6A8
/* 8055D920  4B E6 33 79 */	bl mMsg_Check_MainNormalContinue
/* 8055D924  2C 03 00 01 */	cmpwi r3, 1
/* 8055D928  40 82 00 24 */	bne lbl_8055D94C
/* 8055D92C  38 60 00 04 */	li r3, 4
/* 8055D930  38 80 00 09 */	li r4, 9
/* 8055D934  38 A0 00 00 */	li r5, 0
/* 8055D938  4B E3 AB 01 */	bl mDemo_Set_OrderValue
/* 8055D93C  7F C3 F3 78 */	mr r3, r30
/* 8055D940  7F E4 FB 78 */	mr r4, r31
/* 8055D944  38 A0 00 2A */	li r5, 0x2a
/* 8055D948  48 00 14 89 */	bl aNSC_setupAction
lbl_8055D94C:
/* 8055D94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055D950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055D954  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055D958  7C 08 03 A6 */	mtlr r0
/* 8055D95C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055D960  4E 80 00 20 */	blr 
