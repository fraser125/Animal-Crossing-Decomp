lbl_8054B14C:
/* 8054B14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B150  7C 08 02 A6 */	mflr r0
/* 8054B154  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054B158  3C C0 80 6A */	lis r6, animeSeqNo@ha /* 0x806A4EF0@ha */
/* 8054B15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B160  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054B164  54 80 10 3A */	slwi r0, r4, 2
/* 8054B168  38 E6 4E F0 */	addi r7, r6, animeSeqNo@l /* 0x806A4EF0@l */
/* 8054B16C  3C 85 00 02 */	addis r4, r5, 2
/* 8054B170  38 A0 00 00 */	li r5, 0
/* 8054B174  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 8054B178  7C 87 00 2E */	lwzx r4, r7, r0
/* 8054B17C  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8054B180  7D 89 03 A6 */	mtctr r12
/* 8054B184  4E 80 04 21 */	bctrl 
/* 8054B188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B18C  7C 08 03 A6 */	mtlr r0
/* 8054B190  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B194  4E 80 00 20 */	blr 
