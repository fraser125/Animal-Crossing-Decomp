lbl_8057BF3C:
/* 8057BF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BF40  7C 08 02 A6 */	mflr r0
/* 8057BF44  38 80 00 09 */	li r4, 9
/* 8057BF48  38 A0 00 00 */	li r5, 0
/* 8057BF4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BF50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BF54  7C 7F 1B 78 */	mr r31, r3
/* 8057BF58  38 60 00 04 */	li r3, 4
/* 8057BF5C  4B E1 C4 DD */	bl mDemo_Set_OrderValue
/* 8057BF60  7F E3 FB 78 */	mr r3, r31
/* 8057BF64  4B FF B4 2D */	bl aNSC_set_stop_spd
/* 8057BF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BF6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BF70  7C 08 03 A6 */	mtlr r0
/* 8057BF74  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BF78  4E 80 00 20 */	blr 
