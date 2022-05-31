lbl_80474C90:
/* 80474C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474C94  7C 08 02 A6 */	mflr r0
/* 80474C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474CA0  7C 7F 1B 78 */	mr r31, r3
/* 80474CA4  4B F4 AA 05 */	bl func_803BF6A8
/* 80474CA8  4B F4 C0 55 */	bl mMsg_Check_MainDisappear
/* 80474CAC  2C 03 00 00 */	cmpwi r3, 0
/* 80474CB0  41 82 00 0C */	beq lbl_80474CBC
/* 80474CB4  38 00 00 11 */	li r0, 0x11
/* 80474CB8  B0 1F 03 EE */	sth r0, 0x3ee(r31)
lbl_80474CBC:
/* 80474CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474CC4  7C 08 03 A6 */	mtlr r0
/* 80474CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80474CCC  4E 80 00 20 */	blr 
