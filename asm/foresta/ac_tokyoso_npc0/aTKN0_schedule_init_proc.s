lbl_8058C07C:
/* 8058C07C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C080  7C 08 02 A6 */	mflr r0
/* 8058C084  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8058C088  3C A0 80 59 */	lis r5, aTKN0_think_proc@ha /* 0x8058C03C@ha */
/* 8058C08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C090  38 05 C0 3C */	addi r0, r5, aTKN0_think_proc@l /* 0x8058C03C@l */
/* 8058C094  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8058C098  38 A0 00 09 */	li r5, 9
/* 8058C09C  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8058C0A0  3C E6 00 02 */	addis r7, r6, 2
/* 8058C0A4  38 C0 00 00 */	li r6, 0
/* 8058C0A8  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8058C0AC  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058C0B0  7D 89 03 A6 */	mtctr r12
/* 8058C0B4  4E 80 04 21 */	bctrl 
/* 8058C0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C0BC  7C 08 03 A6 */	mtlr r0
/* 8058C0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C0C4  4E 80 00 20 */	blr 
