lbl_8050EB20:
/* 8050EB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050EB24  7C 08 02 A6 */	mflr r0
/* 8050EB28  3C C0 80 6A */	lis r6, act_proc@ha /* 0x8069F1DC@ha */
/* 8050EB2C  54 A7 10 3A */	slwi r7, r5, 2
/* 8050EB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050EB34  38 C6 F1 DC */	addi r6, r6, act_proc@l /* 0x8069F1DC@l */
/* 8050EB38  90 A3 01 74 */	stw r5, 0x174(r3)
/* 8050EB3C  3C A0 80 6A */	lis r5, init_proc@ha /* 0x8069F1CC@ha */
/* 8050EB40  38 A5 F1 CC */	addi r5, r5, init_proc@l /* 0x8069F1CC@l */
/* 8050EB44  7C 06 38 2E */	lwzx r0, r6, r7
/* 8050EB48  90 03 01 78 */	stw r0, 0x178(r3)
/* 8050EB4C  7D 85 38 2E */	lwzx r12, r5, r7
/* 8050EB50  7D 89 03 A6 */	mtctr r12
/* 8050EB54  4E 80 04 21 */	bctrl 
/* 8050EB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050EB5C  7C 08 03 A6 */	mtlr r0
/* 8050EB60  38 21 00 10 */	addi r1, r1, 0x10
/* 8050EB64  4E 80 00 20 */	blr 
