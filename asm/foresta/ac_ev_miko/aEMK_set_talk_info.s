lbl_805223F4:
/* 805223F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805223F8  7C 08 02 A6 */	mflr r0
/* 805223FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522400  88 03 09 A0 */	lbz r0, 0x9a0(r3)
/* 80522404  38 60 19 16 */	li r3, 0x1916
/* 80522408  28 00 00 01 */	cmplwi r0, 1
/* 8052240C  40 82 00 08 */	bne lbl_80522414
/* 80522410  38 60 19 0C */	li r3, 0x190c
lbl_80522414:
/* 80522414  4B E7 61 01 */	bl mDemo_Set_msg_num
/* 80522418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052241C  7C 08 03 A6 */	mtlr r0
/* 80522420  38 21 00 10 */	addi r1, r1, 0x10
/* 80522424  4E 80 00 20 */	blr 