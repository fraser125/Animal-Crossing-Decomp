lbl_8054B3B4:
/* 8054B3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B3B8  7C 08 02 A6 */	mflr r0
/* 8054B3BC  3C C0 80 6A */	lis r6, act_proc@ha /* 0x806A4F14@ha */
/* 8054B3C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B3C4  54 A0 10 3A */	slwi r0, r5, 2
/* 8054B3C8  38 A6 4F 14 */	addi r5, r6, act_proc@l /* 0x806A4F14@l */
/* 8054B3CC  7D 85 00 2E */	lwzx r12, r5, r0
/* 8054B3D0  7D 89 03 A6 */	mtctr r12
/* 8054B3D4  4E 80 04 21 */	bctrl 
/* 8054B3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B3DC  7C 08 03 A6 */	mtlr r0
/* 8054B3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B3E4  4E 80 00 20 */	blr 
