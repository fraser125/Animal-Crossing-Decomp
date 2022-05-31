lbl_80581DD0:
/* 80581DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80581DD4  7C 08 02 A6 */	mflr r0
/* 80581DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80581DE0  7C BF 2B 78 */	mr r31, r5
/* 80581DE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80581DE8  7C 9E 23 78 */	mr r30, r4
/* 80581DEC  7F E4 FB 78 */	mr r4, r31
/* 80581DF0  4B E3 E1 D5 */	bl mMsg_Set_continue_msg_num
/* 80581DF4  93 FE 09 C4 */	stw r31, 0x9c4(r30)
/* 80581DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80581E00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80581E04  7C 08 03 A6 */	mtlr r0
/* 80581E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80581E0C  4E 80 00 20 */	blr 
