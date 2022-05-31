lbl_8057B390:
/* 8057B390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B394  7C 08 02 A6 */	mflr r0
/* 8057B398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B39C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B3A0  7C 9F 23 78 */	mr r31, r4
/* 8057B3A4  38 80 00 09 */	li r4, 9
/* 8057B3A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8057B3AC  7C 7E 1B 78 */	mr r30, r3
/* 8057B3B0  38 60 00 04 */	li r3, 4
/* 8057B3B4  4B E1 D0 C9 */	bl mDemo_Get_OrderValue
/* 8057B3B8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8057B3BC  41 82 00 34 */	beq lbl_8057B3F0
/* 8057B3C0  4B E4 42 E9 */	bl func_803BF6A8
/* 8057B3C4  4B E4 58 D5 */	bl mMsg_Check_MainNormalContinue
/* 8057B3C8  2C 03 00 01 */	cmpwi r3, 1
/* 8057B3CC  40 82 00 24 */	bne lbl_8057B3F0
/* 8057B3D0  38 60 00 04 */	li r3, 4
/* 8057B3D4  38 80 00 09 */	li r4, 9
/* 8057B3D8  38 A0 00 00 */	li r5, 0
/* 8057B3DC  4B E1 D0 5D */	bl mDemo_Set_OrderValue
/* 8057B3E0  7F C3 F3 78 */	mr r3, r30
/* 8057B3E4  7F E4 FB 78 */	mr r4, r31
/* 8057B3E8  38 A0 00 35 */	li r5, 0x35
/* 8057B3EC  48 00 10 C9 */	bl aNSC_setupAction
lbl_8057B3F0:
/* 8057B3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B3F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B3F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057B3FC  7C 08 03 A6 */	mtlr r0
/* 8057B400  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B404  4E 80 00 20 */	blr 
