lbl_80581CDC:
/* 80581CDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80581CE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80581CE4  3C A3 00 02 */	addis r5, r3, 2
/* 80581CE8  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 80581CEC  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 80581CF0  88 03 00 86 */	lbz r0, 0x86(r3)
/* 80581CF4  88 C3 00 87 */	lbz r6, 0x87(r3)
/* 80581CF8  7C 04 00 40 */	cmplw r4, r0
/* 80581CFC  41 82 00 0C */	beq lbl_80581D08
/* 80581D00  38 C0 00 00 */	li r6, 0
/* 80581D04  98 83 00 86 */	stb r4, 0x86(r3)
lbl_80581D08:
/* 80581D08  38 C6 00 01 */	addi r6, r6, 1
/* 80581D0C  2C 06 00 FF */	cmpwi r6, 0xff
/* 80581D10  40 81 00 08 */	ble lbl_80581D18
/* 80581D14  38 C0 00 FF */	li r6, 0xff
lbl_80581D18:
/* 80581D18  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 80581D1C  98 C3 00 87 */	stb r6, 0x87(r3)
/* 80581D20  4E 80 00 20 */	blr 
