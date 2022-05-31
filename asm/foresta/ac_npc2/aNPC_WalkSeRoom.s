lbl_8053C3E8:
/* 8053C3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053C3EC  7C 08 02 A6 */	mflr r0
/* 8053C3F0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8053C3F4  7C 64 1B 78 */	mr r4, r3
/* 8053C3F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053C3FC  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8053C400  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8053C404  2C 00 00 31 */	cmpwi r0, 0x31
/* 8053C408  41 82 00 1C */	beq lbl_8053C424
/* 8053C40C  40 80 00 24 */	bge lbl_8053C430
/* 8053C410  2C 00 00 11 */	cmpwi r0, 0x11
/* 8053C414  40 80 00 1C */	bge lbl_8053C430
/* 8053C418  2C 00 00 0F */	cmpwi r0, 0xf
/* 8053C41C  40 80 00 08 */	bge lbl_8053C424
/* 8053C420  48 00 00 10 */	b lbl_8053C430
lbl_8053C424:
/* 8053C424  38 60 02 07 */	li r3, 0x207
/* 8053C428  48 0F 19 8D */	bl sAdo_NpcWalkSe
/* 8053C42C  48 00 00 2C */	b lbl_8053C458
lbl_8053C430:
/* 8053C430  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053C434  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053C438  3C 63 00 03 */	addis r3, r3, 3
/* 8053C43C  88 63 85 91 */	lbz r3, -0x7a6f(r3)
/* 8053C440  7C 60 07 75 */	extsb. r0, r3
/* 8053C444  41 80 00 14 */	blt lbl_8053C458
/* 8053C448  7C 60 07 74 */	extsb r0, r3
/* 8053C44C  2C 00 00 56 */	cmpwi r0, 0x56
/* 8053C450  40 80 00 08 */	bge lbl_8053C458
/* 8053C454  48 0F 19 A9 */	bl sAdo_NpcWalkSeRoom
lbl_8053C458:
/* 8053C458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053C45C  7C 08 03 A6 */	mtlr r0
/* 8053C460  38 21 00 10 */	addi r1, r1, 0x10
/* 8053C464  4E 80 00 20 */	blr 
