lbl_803EDCFC:
/* 803EDCFC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EDD00  38 03 00 04 */	addi r0, r3, 4
/* 803EDD04  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EDD08  38 60 00 01 */	li r3, 1
/* 803EDD0C  3C 84 00 02 */	addis r4, r4, 2
/* 803EDD10  7C 60 00 30 */	slw r0, r3, r0
/* 803EDD14  88 64 41 71 */	lbz r3, 0x4171(r4)
/* 803EDD18  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803EDD1C  7C 60 00 78 */	andc r0, r3, r0
/* 803EDD20  98 04 41 71 */	stb r0, 0x4171(r4)
/* 803EDD24  4E 80 00 20 */	blr 
