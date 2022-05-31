lbl_8057AE74:
/* 8057AE74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057AE78  7C 08 02 A6 */	mflr r0
/* 8057AE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057AE80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057AE84  7C 9F 23 78 */	mr r31, r4
/* 8057AE88  38 80 00 09 */	li r4, 9
/* 8057AE8C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057AE90  7C 7E 1B 78 */	mr r30, r3
/* 8057AE94  38 60 00 04 */	li r3, 4
/* 8057AE98  4B E1 D5 E5 */	bl mDemo_Get_OrderValue
/* 8057AE9C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8057AEA0  41 82 00 34 */	beq lbl_8057AED4
/* 8057AEA4  4B E4 48 05 */	bl func_803BF6A8
/* 8057AEA8  4B E4 5D F1 */	bl mMsg_Check_MainNormalContinue
/* 8057AEAC  2C 03 00 01 */	cmpwi r3, 1
/* 8057AEB0  40 82 00 24 */	bne lbl_8057AED4
/* 8057AEB4  38 60 00 04 */	li r3, 4
/* 8057AEB8  38 80 00 09 */	li r4, 9
/* 8057AEBC  38 A0 00 00 */	li r5, 0
/* 8057AEC0  4B E1 D5 79 */	bl mDemo_Set_OrderValue
/* 8057AEC4  7F C3 F3 78 */	mr r3, r30
/* 8057AEC8  7F E4 FB 78 */	mr r4, r31
/* 8057AECC  38 A0 00 2A */	li r5, 0x2a
/* 8057AED0  48 00 15 E5 */	bl aNSC_setupAction
lbl_8057AED4:
/* 8057AED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057AED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057AEDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057AEE0  7C 08 03 A6 */	mtlr r0
/* 8057AEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057AEE8  4E 80 00 20 */	blr 
