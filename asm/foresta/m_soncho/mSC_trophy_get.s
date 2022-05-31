lbl_803EC3F4:
/* 803EC3F4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 803EC3F8  38 A0 00 00 */	li r5, 0
/* 803EC3FC  28 04 00 20 */	cmplwi r4, 0x20
/* 803EC400  41 81 00 68 */	bgt lbl_803EC468
/* 803EC404  28 04 00 1C */	cmplwi r4, 0x1c
/* 803EC408  41 80 00 38 */	blt lbl_803EC440
/* 803EC40C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EC410  38 03 FF E4 */	addi r0, r3, -28
/* 803EC414  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EC418  38 60 00 01 */	li r3, 1
/* 803EC41C  3C 84 00 02 */	addis r4, r4, 2
/* 803EC420  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803EC424  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803EC428  7C 60 00 30 */	slw r0, r3, r0
/* 803EC42C  80 64 23 DC */	lwz r3, 0x23dc(r4)
/* 803EC430  7C 60 00 39 */	and. r0, r3, r0
/* 803EC434  41 82 00 34 */	beq lbl_803EC468
/* 803EC438  38 A0 00 01 */	li r5, 1
/* 803EC43C  48 00 00 2C */	b lbl_803EC468
lbl_803EC440:
/* 803EC440  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EC444  38 00 00 01 */	li r0, 1
/* 803EC448  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EC44C  3C 63 00 02 */	addis r3, r3, 2
/* 803EC450  7C 00 20 30 */	slw r0, r0, r4
/* 803EC454  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803EC458  80 63 23 B4 */	lwz r3, 0x23b4(r3)
/* 803EC45C  7C 60 00 39 */	and. r0, r3, r0
/* 803EC460  41 82 00 08 */	beq lbl_803EC468
/* 803EC464  38 A0 00 01 */	li r5, 1
lbl_803EC468:
/* 803EC468  7C A3 2B 78 */	mr r3, r5
/* 803EC46C  4E 80 00 20 */	blr 
