lbl_8055740C:
/* 8055740C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557410  7C 08 02 A6 */	mflr r0
/* 80557414  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80557418  3C C0 80 6A */	lis r6, animeSeqNo@ha /* 0x806A6868@ha */
/* 8055741C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557420  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80557424  54 80 08 3C */	slwi r0, r4, 1
/* 80557428  38 E6 68 68 */	addi r7, r6, animeSeqNo@l /* 0x806A6868@l */
/* 8055742C  3C 85 00 02 */	addis r4, r5, 2
/* 80557430  38 A0 00 00 */	li r5, 0
/* 80557434  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 80557438  7C 87 02 AE */	lhax r4, r7, r0
/* 8055743C  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80557440  7D 89 03 A6 */	mtctr r12
/* 80557444  4E 80 04 21 */	bctrl 
/* 80557448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055744C  7C 08 03 A6 */	mtlr r0
/* 80557450  38 21 00 10 */	addi r1, r1, 0x10
/* 80557454  4E 80 00 20 */	blr 
