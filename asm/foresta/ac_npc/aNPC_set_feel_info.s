lbl_80530CCC:
/* 80530CCC  80 C3 01 7C */	lwz r6, 0x17c(r3)
/* 80530CD0  28 06 00 00 */	cmplwi r6, 0
/* 80530CD4  4D 82 00 20 */	beqlr 
/* 80530CD8  88 06 08 E2 */	lbz r0, 0x8e2(r6)
/* 80530CDC  80 E3 08 38 */	lwz r7, 0x838(r3)
/* 80530CE0  7C 04 00 00 */	cmpw r4, r0
/* 80530CE4  41 82 00 20 */	beq lbl_80530D04
/* 80530CE8  2C 04 00 00 */	cmpwi r4, 0
/* 80530CEC  98 86 08 E2 */	stb r4, 0x8e2(r6)
/* 80530CF0  40 82 00 0C */	bne lbl_80530CFC
/* 80530CF4  38 E0 00 00 */	li r7, 0
/* 80530CF8  48 00 00 28 */	b lbl_80530D20
lbl_80530CFC:
/* 80530CFC  1C E5 0E 10 */	mulli r7, r5, 0xe10
/* 80530D00  48 00 00 20 */	b lbl_80530D20
lbl_80530D04:
/* 80530D04  1C A5 0E 10 */	mulli r5, r5, 0xe10
/* 80530D08  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008CA0@ha */
/* 80530D0C  38 04 8C A0 */	addi r0, r4, 0x8CA0 /* 0x00008CA0@l */
/* 80530D10  7C E7 2A 14 */	add r7, r7, r5
/* 80530D14  7C 07 00 00 */	cmpw r7, r0
/* 80530D18  40 81 00 08 */	ble lbl_80530D20
/* 80530D1C  7C 07 03 78 */	mr r7, r0
lbl_80530D20:
/* 80530D20  90 E3 08 38 */	stw r7, 0x838(r3)
/* 80530D24  4E 80 00 20 */	blr 