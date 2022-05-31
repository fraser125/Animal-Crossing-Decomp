lbl_8055EEE8:
/* 8055EEE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EEEC  7C 08 02 A6 */	mflr r0
/* 8055EEF0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055EEF4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055EEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EEFC  3C A5 00 02 */	addis r5, r5, 2
/* 8055EF00  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8055EF04  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 8055EF08  7D 89 03 A6 */	mtctr r12
/* 8055EF0C  4E 80 04 21 */	bctrl 
/* 8055EF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EF14  7C 08 03 A6 */	mtlr r0
/* 8055EF18  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EF1C  4E 80 00 20 */	blr 
