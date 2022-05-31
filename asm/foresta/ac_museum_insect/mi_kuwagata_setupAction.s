lbl_80466ED8:
/* 80466ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80466EDC  7C 08 02 A6 */	mflr r0
/* 80466EE0  3C C0 80 68 */	lis r6, init_proc_3000@ha /* 0x80686C90@ha */
/* 80466EE4  3C E0 80 68 */	lis r7, move_proc_3001@ha /* 0x80686CA8@ha */
/* 80466EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80466EEC  54 88 10 3A */	slwi r8, r4, 2
/* 80466EF0  38 87 6C A8 */	addi r4, r7, move_proc_3001@l /* 0x80686CA8@l */
/* 80466EF4  38 C6 6C 90 */	addi r6, r6, init_proc_3000@l /* 0x80686C90@l */
/* 80466EF8  7C 04 40 2E */	lwzx r0, r4, r8
/* 80466EFC  7C A4 2B 78 */	mr r4, r5
/* 80466F00  90 03 00 04 */	stw r0, 4(r3)
/* 80466F04  7D 86 40 2E */	lwzx r12, r6, r8
/* 80466F08  7D 89 03 A6 */	mtctr r12
/* 80466F0C  4E 80 04 21 */	bctrl 
/* 80466F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80466F14  7C 08 03 A6 */	mtlr r0
/* 80466F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80466F1C  4E 80 00 20 */	blr 
