lbl_8051A9AC:
/* 8051A9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A9B0  7C 08 02 A6 */	mflr r0
/* 8051A9B4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051A9B8  3C C0 80 6A */	lis r6, animeSeqNoTable@ha /* 0x806A00F0@ha */
/* 8051A9BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A9C0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051A9C4  54 80 10 3A */	slwi r0, r4, 2
/* 8051A9C8  38 E6 00 F0 */	addi r7, r6, animeSeqNoTable@l /* 0x806A00F0@l */
/* 8051A9CC  3C 85 00 02 */	addis r4, r5, 2
/* 8051A9D0  38 A0 00 00 */	li r5, 0
/* 8051A9D4  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 8051A9D8  7C 87 00 2E */	lwzx r4, r7, r0
/* 8051A9DC  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8051A9E0  7D 89 03 A6 */	mtctr r12
/* 8051A9E4  4E 80 04 21 */	bctrl 
/* 8051A9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A9EC  7C 08 03 A6 */	mtlr r0
/* 8051A9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A9F4  4E 80 00 20 */	blr 
