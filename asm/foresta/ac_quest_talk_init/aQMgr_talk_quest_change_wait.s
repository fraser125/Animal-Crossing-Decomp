lbl_8048D4D8:
/* 8048D4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D4DC  7C 08 02 A6 */	mflr r0
/* 8048D4E0  38 80 00 02 */	li r4, 2
/* 8048D4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D4E8  38 00 00 00 */	li r0, 0
/* 8048D4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D4F0  7C 7F 1B 78 */	mr r31, r3
/* 8048D4F4  98 03 01 85 */	stb r0, 0x185(r3)
/* 8048D4F8  81 83 09 48 */	lwz r12, 0x948(r3)
/* 8048D4FC  7D 89 03 A6 */	mtctr r12
/* 8048D500  4E 80 04 21 */	bctrl 
/* 8048D504  4B F3 21 A5 */	bl func_803BF6A8
/* 8048D508  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048D50C  4B F3 2A B9 */	bl mMsg_Set_continue_msg_num
/* 8048D510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D518  7C 08 03 A6 */	mtlr r0
/* 8048D51C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D520  4E 80 00 20 */	blr 
