lbl_803FCBFC:
/* 803FCBFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FCC00  7C 08 02 A6 */	mflr r0
/* 803FCC04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FCC08  38 80 00 04 */	li r4, 4
/* 803FCC0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FCC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FCC14  3C 63 00 02 */	addis r3, r3, 2
/* 803FCC18  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803FCC1C  38 63 10 F4 */	addi r3, r3, 0x10f4
/* 803FCC20  4B C6 04 49 */	bl bzero
/* 803FCC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FCC28  7C 08 03 A6 */	mtlr r0
/* 803FCC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 803FCC30  4E 80 00 20 */	blr 
