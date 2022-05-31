lbl_8051EDE8:
/* 8051EDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051EDEC  7C 08 02 A6 */	mflr r0
/* 8051EDF0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051EDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EDF8  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8051EDFC  3C C6 00 02 */	addis r6, r6, 2
/* 8051EE00  38 A0 00 04 */	li r5, 4
/* 8051EE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051EE08  7C 7F 1B 78 */	mr r31, r3
/* 8051EE0C  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8051EE10  81 86 01 18 */	lwz r12, 0x118(r6)
/* 8051EE14  7D 89 03 A6 */	mtctr r12
/* 8051EE18  4E 80 04 21 */	bctrl 
/* 8051EE1C  3C 60 80 52 */	lis r3, aEDZ_wander_talk_request@ha /* 0x8051EAD0@ha */
/* 8051EE20  38 03 EA D0 */	addi r0, r3, aEDZ_wander_talk_request@l /* 0x8051EAD0@l */
/* 8051EE24  90 1F 09 64 */	stw r0, 0x964(r31)
/* 8051EE28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051EE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EE30  7C 08 03 A6 */	mtlr r0
/* 8051EE34  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EE38  4E 80 00 20 */	blr 
