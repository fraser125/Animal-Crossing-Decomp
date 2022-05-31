lbl_80388C2C:
/* 80388C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80388C30  7C 08 02 A6 */	mflr r0
/* 80388C34  3C A0 80 65 */	lis r5, get_bg_y_normal_proc@ha /* 0x80650CE4@ha */
/* 80388C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80388C3C  38 A5 0C E4 */	addi r5, r5, get_bg_y_normal_proc@l /* 0x80650CE4@l */
/* 80388C40  80 C4 00 00 */	lwz r6, 0(r4)
/* 80388C44  88 06 00 00 */	lbz r0, 0(r6)
/* 80388C48  54 00 DF 7A */	rlwinm r0, r0, 0x1b, 0x1d, 0x1d
/* 80388C4C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80388C50  7D 89 03 A6 */	mtctr r12
/* 80388C54  4E 80 04 21 */	bctrl 
/* 80388C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80388C5C  7C 08 03 A6 */	mtlr r0
/* 80388C60  38 21 00 10 */	addi r1, r1, 0x10
/* 80388C64  4E 80 00 20 */	blr 
