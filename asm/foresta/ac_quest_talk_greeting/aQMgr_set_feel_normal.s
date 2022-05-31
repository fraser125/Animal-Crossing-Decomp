lbl_80488C48:
/* 80488C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80488C4C  7C 08 02 A6 */	mflr r0
/* 80488C50  38 60 00 04 */	li r3, 4
/* 80488C54  38 80 00 00 */	li r4, 0
/* 80488C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80488C5C  38 A0 00 FF */	li r5, 0xff
/* 80488C60  4B F0 F7 D9 */	bl mDemo_Set_OrderValue
/* 80488C64  38 60 00 04 */	li r3, 4
/* 80488C68  38 80 00 02 */	li r4, 2
/* 80488C6C  38 A0 00 05 */	li r5, 5
/* 80488C70  4B F0 F7 C9 */	bl mDemo_Set_OrderValue
/* 80488C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80488C78  7C 08 03 A6 */	mtlr r0
/* 80488C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80488C80  4E 80 00 20 */	blr 
