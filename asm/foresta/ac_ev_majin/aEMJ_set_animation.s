lbl_80592AE8:
/* 80592AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592AEC  7C 08 02 A6 */	mflr r0
/* 80592AF0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592AF4  3C C0 80 6C */	lis r6, animeSeqNo@ha /* 0x806C2A90@ha */
/* 80592AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592AFC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592B00  54 80 08 3C */	slwi r0, r4, 1
/* 80592B04  38 E6 2A 90 */	addi r7, r6, animeSeqNo@l /* 0x806C2A90@l */
/* 80592B08  3C 85 00 02 */	addis r4, r5, 2
/* 80592B0C  38 A0 00 00 */	li r5, 0
/* 80592B10  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 80592B14  7C 87 02 AE */	lhax r4, r7, r0
/* 80592B18  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80592B1C  7D 89 03 A6 */	mtctr r12
/* 80592B20  4E 80 04 21 */	bctrl 
/* 80592B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592B28  7C 08 03 A6 */	mtlr r0
/* 80592B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80592B30  4E 80 00 20 */	blr 
