lbl_805A4C44:
/* 805A4C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4C48  7C 08 02 A6 */	mflr r0
/* 805A4C4C  3C A0 80 6C */	lis r5, act_proc@ha /* 0x806C3F88@ha */
/* 805A4C50  54 86 10 3A */	slwi r6, r4, 2
/* 805A4C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4C58  38 A5 3F 88 */	addi r5, r5, act_proc@l /* 0x806C3F88@l */
/* 805A4C5C  90 83 01 E0 */	stw r4, 0x1e0(r3)
/* 805A4C60  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C3F6C@ha */
/* 805A4C64  38 84 3F 6C */	addi r4, r4, init_proc@l /* 0x806C3F6C@l */
/* 805A4C68  7C 05 30 2E */	lwzx r0, r5, r6
/* 805A4C6C  90 03 01 E4 */	stw r0, 0x1e4(r3)
/* 805A4C70  7D 84 30 2E */	lwzx r12, r4, r6
/* 805A4C74  7D 89 03 A6 */	mtctr r12
/* 805A4C78  4E 80 04 21 */	bctrl 
/* 805A4C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4C80  7C 08 03 A6 */	mtlr r0
/* 805A4C84  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4C88  4E 80 00 20 */	blr 
