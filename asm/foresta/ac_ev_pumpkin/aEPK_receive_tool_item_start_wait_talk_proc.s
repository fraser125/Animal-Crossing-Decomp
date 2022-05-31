lbl_80522D34:
/* 80522D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522D38  7C 08 02 A6 */	mflr r0
/* 80522D3C  38 80 00 01 */	li r4, 1
/* 80522D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522D48  7C 7F 1B 78 */	mr r31, r3
/* 80522D4C  38 60 00 04 */	li r3, 4
/* 80522D50  4B E7 57 2D */	bl mDemo_Get_OrderValue
/* 80522D54  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80522D58  2C 00 00 02 */	cmpwi r0, 2
/* 80522D5C  40 82 00 48 */	bne lbl_80522DA4
/* 80522D60  A0 BF 09 A2 */	lhz r5, 0x9a2(r31)
/* 80522D64  38 60 00 05 */	li r3, 5
/* 80522D68  38 80 00 00 */	li r4, 0
/* 80522D6C  4B E7 56 CD */	bl mDemo_Set_OrderValue
/* 80522D70  38 60 00 05 */	li r3, 5
/* 80522D74  38 80 00 01 */	li r4, 1
/* 80522D78  38 A0 00 07 */	li r5, 7
/* 80522D7C  4B E7 56 BD */	bl mDemo_Set_OrderValue
/* 80522D80  38 60 00 05 */	li r3, 5
/* 80522D84  38 80 00 02 */	li r4, 2
/* 80522D88  38 A0 00 01 */	li r5, 1
/* 80522D8C  4B E7 56 AD */	bl mDemo_Set_OrderValue
/* 80522D90  4B E9 C9 19 */	bl func_803BF6A8
/* 80522D94  4B E9 DF AD */	bl mMsg_Set_LockContinue
/* 80522D98  7F E3 FB 78 */	mr r3, r31
/* 80522D9C  38 80 00 06 */	li r4, 6
/* 80522DA0  48 00 04 41 */	bl aEPK_change_talk_proc
lbl_80522DA4:
/* 80522DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522DAC  7C 08 03 A6 */	mtlr r0
/* 80522DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80522DB4  4E 80 00 20 */	blr 
