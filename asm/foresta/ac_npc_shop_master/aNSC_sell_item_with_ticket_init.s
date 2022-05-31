lbl_8057C12C:
/* 8057C12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C130  7C 08 02 A6 */	mflr r0
/* 8057C134  38 A0 00 00 */	li r5, 0
/* 8057C138  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C13C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057C140  7C 9F 23 78 */	mr r31, r4
/* 8057C144  38 80 00 09 */	li r4, 9
/* 8057C148  93 C1 00 08 */	stw r30, 8(r1)
/* 8057C14C  7C 7E 1B 78 */	mr r30, r3
/* 8057C150  38 60 00 04 */	li r3, 4
/* 8057C154  4B E1 C2 E5 */	bl mDemo_Set_OrderValue
/* 8057C158  7F C3 F3 78 */	mr r3, r30
/* 8057C15C  7F E4 FB 78 */	mr r4, r31
/* 8057C160  4B FF FF 69 */	bl aNSC_sell_item_init
/* 8057C164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057C16C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057C170  7C 08 03 A6 */	mtlr r0
/* 8057C174  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C178  4E 80 00 20 */	blr 
