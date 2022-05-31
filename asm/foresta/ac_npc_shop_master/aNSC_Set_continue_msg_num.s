lbl_805782C4:
/* 805782C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805782C8  7C 08 02 A6 */	mflr r0
/* 805782CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805782D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805782D4  7C BF 2B 78 */	mr r31, r5
/* 805782D8  93 C1 00 08 */	stw r30, 8(r1)
/* 805782DC  7C 9E 23 78 */	mr r30, r4
/* 805782E0  7F E4 FB 78 */	mr r4, r31
/* 805782E4  4B E4 7C E1 */	bl mMsg_Set_continue_msg_num
/* 805782E8  93 FE 09 C4 */	stw r31, 0x9c4(r30)
/* 805782EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805782F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805782F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805782F8  7C 08 03 A6 */	mtlr r0
/* 805782FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80578300  4E 80 00 20 */	blr 
