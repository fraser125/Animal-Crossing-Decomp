lbl_80587598:
/* 80587598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058759C  7C 08 02 A6 */	mflr r0
/* 805875A0  3C A0 80 6C */	lis r5, proc_table@ha /* 0x806C1C34@ha */
/* 805875A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805875A8  38 A5 1C 34 */	addi r5, r5, proc_table@l /* 0x806C1C34@l */
/* 805875AC  88 03 09 A8 */	lbz r0, 0x9a8(r3)
/* 805875B0  54 00 10 3A */	slwi r0, r0, 2
/* 805875B4  7D 85 00 2E */	lwzx r12, r5, r0
/* 805875B8  7D 89 03 A6 */	mtctr r12
/* 805875BC  4E 80 04 21 */	bctrl 
/* 805875C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805875C4  7C 08 03 A6 */	mtlr r0
/* 805875C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805875CC  4E 80 00 20 */	blr 
