lbl_8052F8EC:
/* 8052F8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052F8F0  7C 08 02 A6 */	mflr r0
/* 8052F8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052F8F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052F8FC  7C 7F 1B 78 */	mr r31, r3
/* 8052F900  4B E6 8A F9 */	bl mDemo_Get_talk_actor
/* 8052F904  28 03 00 00 */	cmplwi r3, 0
/* 8052F908  40 82 00 18 */	bne lbl_8052F920
/* 8052F90C  A0 7F 07 CA */	lhz r3, 0x7ca(r31)
/* 8052F910  28 03 00 00 */	cmplwi r3, 0
/* 8052F914  41 82 00 0C */	beq lbl_8052F920
/* 8052F918  38 03 FF FF */	addi r0, r3, -1
/* 8052F91C  B0 1F 07 CA */	sth r0, 0x7ca(r31)
lbl_8052F920:
/* 8052F920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052F924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052F928  7C 08 03 A6 */	mtlr r0
/* 8052F92C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052F930  4E 80 00 20 */	blr 
