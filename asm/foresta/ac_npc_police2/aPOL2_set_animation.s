lbl_8056B170:
/* 8056B170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056B174  7C 08 02 A6 */	mflr r0
/* 8056B178  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056B17C  3C C0 80 6C */	lis r6, animeSeqNoTable@ha /* 0x806BE8A0@ha */
/* 8056B180  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056B184  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056B188  54 80 10 3A */	slwi r0, r4, 2
/* 8056B18C  38 E6 E8 A0 */	addi r7, r6, animeSeqNoTable@l /* 0x806BE8A0@l */
/* 8056B190  3C 85 00 02 */	addis r4, r5, 2
/* 8056B194  38 A0 00 00 */	li r5, 0
/* 8056B198  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 8056B19C  7C 87 00 2E */	lwzx r4, r7, r0
/* 8056B1A0  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8056B1A4  7D 89 03 A6 */	mtctr r12
/* 8056B1A8  4E 80 04 21 */	bctrl 
/* 8056B1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056B1B0  7C 08 03 A6 */	mtlr r0
/* 8056B1B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8056B1B8  4E 80 00 20 */	blr 
