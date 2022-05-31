lbl_805C2B48:
/* 805C2B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C2B4C  7C 08 02 A6 */	mflr r0
/* 805C2B50  3C A0 80 6C */	lis r5, play_process@ha /* 0x806C7A18@ha */
/* 805C2B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C2B58  38 A5 7A 18 */	addi r5, r5, play_process@l /* 0x806C7A18@l */
/* 805C2B5C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805C2B60  80 C6 09 94 */	lwz r6, 0x994(r6)
/* 805C2B64  88 06 00 02 */	lbz r0, 2(r6)
/* 805C2B68  54 00 10 3A */	slwi r0, r0, 2
/* 805C2B6C  7D 85 00 2E */	lwzx r12, r5, r0
/* 805C2B70  7D 89 03 A6 */	mtctr r12
/* 805C2B74  4E 80 04 21 */	bctrl 
/* 805C2B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C2B7C  7C 08 03 A6 */	mtlr r0
/* 805C2B80  38 21 00 10 */	addi r1, r1, 0x10
/* 805C2B84  4E 80 00 20 */	blr 
