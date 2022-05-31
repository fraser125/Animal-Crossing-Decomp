lbl_8057BC64:
/* 8057BC64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BC68  7C 08 02 A6 */	mflr r0
/* 8057BC6C  38 80 00 09 */	li r4, 9
/* 8057BC70  38 A0 00 00 */	li r5, 0
/* 8057BC74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BC78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BC7C  7C 7F 1B 78 */	mr r31, r3
/* 8057BC80  38 60 00 04 */	li r3, 4
/* 8057BC84  4B E1 C7 B5 */	bl mDemo_Set_OrderValue
/* 8057BC88  7F E3 FB 78 */	mr r3, r31
/* 8057BC8C  4B FF B7 05 */	bl aNSC_set_stop_spd
/* 8057BC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BC94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BC98  7C 08 03 A6 */	mtlr r0
/* 8057BC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BCA0  4E 80 00 20 */	blr 
