lbl_8055B530:
/* 8055B530  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055B534  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055B538  3C A3 00 02 */	addis r5, r3, 2
/* 8055B53C  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 8055B540  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 8055B544  88 03 00 86 */	lbz r0, 0x86(r3)
/* 8055B548  88 C3 00 87 */	lbz r6, 0x87(r3)
/* 8055B54C  7C 04 00 40 */	cmplw r4, r0
/* 8055B550  41 82 00 0C */	beq lbl_8055B55C
/* 8055B554  38 C0 00 00 */	li r6, 0
/* 8055B558  98 83 00 86 */	stb r4, 0x86(r3)
lbl_8055B55C:
/* 8055B55C  38 C6 00 01 */	addi r6, r6, 1
/* 8055B560  2C 06 00 FF */	cmpwi r6, 0xff
/* 8055B564  40 81 00 08 */	ble lbl_8055B56C
/* 8055B568  38 C0 00 FF */	li r6, 0xff
lbl_8055B56C:
/* 8055B56C  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 8055B570  98 C3 00 87 */	stb r6, 0x87(r3)
/* 8055B574  4E 80 00 20 */	blr 
