lbl_8056FD78:
/* 8056FD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FD7C  7C 08 02 A6 */	mflr r0
/* 8056FD80  3C C0 80 6C */	lis r6, dt_tbl_757@ha /* 0x806BEE04@ha */
/* 8056FD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FD88  38 06 EE 04 */	addi r0, r6, dt_tbl_757@l /* 0x806BEE04@l */
/* 8056FD8C  90 A3 09 94 */	stw r5, 0x994(r3)
/* 8056FD90  54 A5 20 36 */	slwi r5, r5, 4
/* 8056FD94  7C A0 2A 14 */	add r5, r0, r5
/* 8056FD98  80 05 00 00 */	lwz r0, 0(r5)
/* 8056FD9C  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8056FDA0  80 05 00 08 */	lwz r0, 8(r5)
/* 8056FDA4  90 03 09 64 */	stw r0, 0x964(r3)
/* 8056FDA8  88 05 00 0C */	lbz r0, 0xc(r5)
/* 8056FDAC  90 03 09 A0 */	stw r0, 0x9a0(r3)
/* 8056FDB0  88 05 00 0D */	lbz r0, 0xd(r5)
/* 8056FDB4  90 03 09 98 */	stw r0, 0x998(r3)
/* 8056FDB8  81 85 00 04 */	lwz r12, 4(r5)
/* 8056FDBC  7D 89 03 A6 */	mtctr r12
/* 8056FDC0  4E 80 04 21 */	bctrl 
/* 8056FDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FDC8  7C 08 03 A6 */	mtlr r0
/* 8056FDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FDD0  4E 80 00 20 */	blr 
