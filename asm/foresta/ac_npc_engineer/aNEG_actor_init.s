lbl_805529CC:
/* 805529CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805529D0  7C 08 02 A6 */	mflr r0
/* 805529D4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805529D8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805529DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805529E0  3C A5 00 02 */	addis r5, r5, 2
/* 805529E4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805529E8  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 805529EC  7D 89 03 A6 */	mtctr r12
/* 805529F0  4E 80 04 21 */	bctrl 
/* 805529F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805529F8  7C 08 03 A6 */	mtlr r0
/* 805529FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80552A00  4E 80 00 20 */	blr 
