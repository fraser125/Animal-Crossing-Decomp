lbl_8057B074:
/* 8057B074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B078  7C 08 02 A6 */	mflr r0
/* 8057B07C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B084  7C 9F 23 78 */	mr r31, r4
/* 8057B088  38 80 00 09 */	li r4, 9
/* 8057B08C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057B090  7C 7E 1B 78 */	mr r30, r3
/* 8057B094  38 60 00 04 */	li r3, 4
/* 8057B098  4B E1 D3 E5 */	bl mDemo_Get_OrderValue
/* 8057B09C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8057B0A0  41 82 00 34 */	beq lbl_8057B0D4
/* 8057B0A4  4B E4 46 05 */	bl func_803BF6A8
/* 8057B0A8  4B E4 5B F1 */	bl mMsg_Check_MainNormalContinue
/* 8057B0AC  2C 03 00 01 */	cmpwi r3, 1
/* 8057B0B0  40 82 00 24 */	bne lbl_8057B0D4
/* 8057B0B4  38 60 00 04 */	li r3, 4
/* 8057B0B8  38 80 00 09 */	li r4, 9
/* 8057B0BC  38 A0 00 00 */	li r5, 0
/* 8057B0C0  4B E1 D3 79 */	bl mDemo_Set_OrderValue
/* 8057B0C4  7F C3 F3 78 */	mr r3, r30
/* 8057B0C8  7F E4 FB 78 */	mr r4, r31
/* 8057B0CC  38 A0 00 2F */	li r5, 0x2f
/* 8057B0D0  48 00 13 E5 */	bl aNSC_setupAction
lbl_8057B0D4:
/* 8057B0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B0D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B0DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057B0E0  7C 08 03 A6 */	mtlr r0
/* 8057B0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B0E8  4E 80 00 20 */	blr 
