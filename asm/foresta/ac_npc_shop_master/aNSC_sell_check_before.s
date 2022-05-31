lbl_8057A778:
/* 8057A778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057A77C  7C 08 02 A6 */	mflr r0
/* 8057A780  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057A784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057A788  7C 9F 23 78 */	mr r31, r4
/* 8057A78C  38 80 00 09 */	li r4, 9
/* 8057A790  93 C1 00 08 */	stw r30, 8(r1)
/* 8057A794  7C 7E 1B 78 */	mr r30, r3
/* 8057A798  38 60 00 04 */	li r3, 4
/* 8057A79C  4B E1 DC E1 */	bl mDemo_Get_OrderValue
/* 8057A7A0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8057A7A4  41 82 00 24 */	beq lbl_8057A7C8
/* 8057A7A8  38 60 00 04 */	li r3, 4
/* 8057A7AC  38 80 00 09 */	li r4, 9
/* 8057A7B0  38 A0 00 00 */	li r5, 0
/* 8057A7B4  4B E1 DC 85 */	bl mDemo_Set_OrderValue
/* 8057A7B8  7F C3 F3 78 */	mr r3, r30
/* 8057A7BC  7F E4 FB 78 */	mr r4, r31
/* 8057A7C0  38 A0 00 1F */	li r5, 0x1f
/* 8057A7C4  48 00 1C F1 */	bl aNSC_setupAction
lbl_8057A7C8:
/* 8057A7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057A7CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057A7D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057A7D4  7C 08 03 A6 */	mtlr r0
/* 8057A7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057A7DC  4E 80 00 20 */	blr 
