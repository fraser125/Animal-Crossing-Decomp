lbl_80519E38:
/* 80519E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519E3C  7C 08 02 A6 */	mflr r0
/* 80519E40  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80519E44  3C C0 80 6A */	lis r6, animeSeqNo@ha /* 0x806A0068@ha */
/* 80519E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519E4C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80519E50  54 80 10 3A */	slwi r0, r4, 2
/* 80519E54  38 E6 00 68 */	addi r7, r6, animeSeqNo@l /* 0x806A0068@l */
/* 80519E58  3C 85 00 02 */	addis r4, r5, 2
/* 80519E5C  38 A0 00 00 */	li r5, 0
/* 80519E60  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 80519E64  7C 87 00 2E */	lwzx r4, r7, r0
/* 80519E68  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80519E6C  7D 89 03 A6 */	mtctr r12
/* 80519E70  4E 80 04 21 */	bctrl 
/* 80519E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519E78  7C 08 03 A6 */	mtlr r0
/* 80519E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80519E80  4E 80 00 20 */	blr 
