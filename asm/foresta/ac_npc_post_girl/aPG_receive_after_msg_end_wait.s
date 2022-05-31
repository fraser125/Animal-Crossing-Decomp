lbl_8056CAB4:
/* 8056CAB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CAB8  7C 08 02 A6 */	mflr r0
/* 8056CABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CAC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056CAC4  7C 9F 23 78 */	mr r31, r4
/* 8056CAC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8056CACC  7C 7E 1B 78 */	mr r30, r3
/* 8056CAD0  4B E5 2B D9 */	bl func_803BF6A8
/* 8056CAD4  4B E5 41 C5 */	bl mMsg_Check_MainNormalContinue
/* 8056CAD8  2C 03 00 01 */	cmpwi r3, 1
/* 8056CADC  40 82 00 10 */	bne lbl_8056CAEC
/* 8056CAE0  7F C3 F3 78 */	mr r3, r30
/* 8056CAE4  7F E4 FB 78 */	mr r4, r31
/* 8056CAE8  4B FF FB CD */	bl aPG_office_space_check
lbl_8056CAEC:
/* 8056CAEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056CAF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056CAF8  7C 08 03 A6 */	mtlr r0
/* 8056CAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CB00  4E 80 00 20 */	blr 
