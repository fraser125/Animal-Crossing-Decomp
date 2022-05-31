lbl_80464A4C:
/* 80464A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80464A50  7C 08 02 A6 */	mflr r0
/* 80464A54  3C C0 80 68 */	lis r6, init_proc_2463@ha /* 0x80686BBC@ha */
/* 80464A58  3C E0 80 68 */	lis r7, move_proc_2464@ha /* 0x80686BC8@ha */
/* 80464A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80464A60  54 88 10 3A */	slwi r8, r4, 2
/* 80464A64  38 87 6B C8 */	addi r4, r7, move_proc_2464@l /* 0x80686BC8@l */
/* 80464A68  38 C6 6B BC */	addi r6, r6, init_proc_2463@l /* 0x80686BBC@l */
/* 80464A6C  7C 04 40 2E */	lwzx r0, r4, r8
/* 80464A70  7C A4 2B 78 */	mr r4, r5
/* 80464A74  90 03 00 04 */	stw r0, 4(r3)
/* 80464A78  7D 86 40 2E */	lwzx r12, r6, r8
/* 80464A7C  7D 89 03 A6 */	mtctr r12
/* 80464A80  4E 80 04 21 */	bctrl 
/* 80464A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80464A88  7C 08 03 A6 */	mtlr r0
/* 80464A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80464A90  4E 80 00 20 */	blr 
