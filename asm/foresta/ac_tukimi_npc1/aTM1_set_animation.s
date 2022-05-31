lbl_8058DFDC:
/* 8058DFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DFE0  7C 08 02 A6 */	mflr r0
/* 8058DFE4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058DFE8  3C C0 80 6C */	lis r6, animeSeqNo@ha /* 0x806C24E0@ha */
/* 8058DFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DFF0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058DFF4  54 80 10 3A */	slwi r0, r4, 2
/* 8058DFF8  38 E6 24 E0 */	addi r7, r6, animeSeqNo@l /* 0x806C24E0@l */
/* 8058DFFC  3C 85 00 02 */	addis r4, r5, 2
/* 8058E000  38 A0 00 00 */	li r5, 0
/* 8058E004  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 8058E008  7C 87 00 2E */	lwzx r4, r7, r0
/* 8058E00C  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058E010  7D 89 03 A6 */	mtctr r12
/* 8058E014  4E 80 04 21 */	bctrl 
/* 8058E018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E01C  7C 08 03 A6 */	mtlr r0
/* 8058E020  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E024  4E 80 00 20 */	blr 
