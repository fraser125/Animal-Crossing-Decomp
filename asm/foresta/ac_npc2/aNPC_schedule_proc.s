lbl_805433E4:
/* 805433E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805433E8  7C 08 02 A6 */	mflr r0
/* 805433EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805433F0  88 03 07 DC */	lbz r0, 0x7dc(r3)
/* 805433F4  2C 00 00 FF */	cmpwi r0, 0xff
/* 805433F8  41 82 00 20 */	beq lbl_80543418
/* 805433FC  3C A0 80 6A */	lis r5, aNPC_sche_proc@ha /* 0x806A3EA0@ha */
/* 80543400  54 00 10 3A */	slwi r0, r0, 2
/* 80543404  38 C5 3E A0 */	addi r6, r5, aNPC_sche_proc@l /* 0x806A3EA0@l */
/* 80543408  38 A0 00 01 */	li r5, 1
/* 8054340C  7D 86 00 2E */	lwzx r12, r6, r0
/* 80543410  7D 89 03 A6 */	mtctr r12
/* 80543414  4E 80 04 21 */	bctrl 
lbl_80543418:
/* 80543418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054341C  7C 08 03 A6 */	mtlr r0
/* 80543420  38 21 00 10 */	addi r1, r1, 0x10
/* 80543424  4E 80 00 20 */	blr 
