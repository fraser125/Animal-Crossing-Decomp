lbl_803EC470:
/* 803EC470  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 803EC474  28 04 00 20 */	cmplwi r4, 0x20
/* 803EC478  4D 81 00 20 */	bgtlr 
/* 803EC47C  28 04 00 1C */	cmplwi r4, 0x1c
/* 803EC480  41 80 00 34 */	blt lbl_803EC4B4
/* 803EC484  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EC488  38 03 FF E4 */	addi r0, r3, -28
/* 803EC48C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EC490  38 60 00 01 */	li r3, 1
/* 803EC494  3C 84 00 02 */	addis r4, r4, 2
/* 803EC498  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803EC49C  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803EC4A0  7C 60 00 30 */	slw r0, r3, r0
/* 803EC4A4  80 64 23 DC */	lwz r3, 0x23dc(r4)
/* 803EC4A8  7C 60 03 78 */	or r0, r3, r0
/* 803EC4AC  90 04 23 DC */	stw r0, 0x23dc(r4)
/* 803EC4B0  4E 80 00 20 */	blr 
lbl_803EC4B4:
/* 803EC4B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EC4B8  38 00 00 01 */	li r0, 1
/* 803EC4BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EC4C0  3C 63 00 02 */	addis r3, r3, 2
/* 803EC4C4  7C 00 20 30 */	slw r0, r0, r4
/* 803EC4C8  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 803EC4CC  80 64 23 B4 */	lwz r3, 0x23b4(r4)
/* 803EC4D0  7C 60 03 78 */	or r0, r3, r0
/* 803EC4D4  90 04 23 B4 */	stw r0, 0x23b4(r4)
/* 803EC4D8  4E 80 00 20 */	blr 
