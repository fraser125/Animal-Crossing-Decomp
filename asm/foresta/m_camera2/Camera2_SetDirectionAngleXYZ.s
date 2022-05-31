lbl_8037DED0:
/* 8037DED0  2C 05 00 00 */	cmpwi r5, 0
/* 8037DED4  38 A3 1B C0 */	addi r5, r3, 0x1bc0
/* 8037DED8  38 C3 1B C6 */	addi r6, r3, 0x1bc6
/* 8037DEDC  41 82 00 1C */	beq lbl_8037DEF8
/* 8037DEE0  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 8037DEE4  84 03 F0 5C */	lwzu r0, ZeroSVec@l(r3)  /* 0x8065F05C@l */
/* 8037DEE8  90 06 00 00 */	stw r0, 0(r6)
/* 8037DEEC  A0 03 00 04 */	lhz r0, 4(r3)
/* 8037DEF0  B0 06 00 04 */	sth r0, 4(r6)
/* 8037DEF4  48 00 00 34 */	b lbl_8037DF28
lbl_8037DEF8:
/* 8037DEF8  A8 65 00 00 */	lha r3, 0(r5)
/* 8037DEFC  A8 04 00 00 */	lha r0, 0(r4)
/* 8037DF00  7C 03 00 50 */	subf r0, r3, r0
/* 8037DF04  B0 06 00 00 */	sth r0, 0(r6)
/* 8037DF08  A8 65 00 02 */	lha r3, 2(r5)
/* 8037DF0C  A8 04 00 02 */	lha r0, 2(r4)
/* 8037DF10  7C 03 00 50 */	subf r0, r3, r0
/* 8037DF14  B0 06 00 02 */	sth r0, 2(r6)
/* 8037DF18  A8 65 00 04 */	lha r3, 4(r5)
/* 8037DF1C  A8 04 00 04 */	lha r0, 4(r4)
/* 8037DF20  7C 03 00 50 */	subf r0, r3, r0
/* 8037DF24  B0 06 00 04 */	sth r0, 4(r6)
lbl_8037DF28:
/* 8037DF28  80 04 00 00 */	lwz r0, 0(r4)
/* 8037DF2C  90 05 00 00 */	stw r0, 0(r5)
/* 8037DF30  A0 04 00 04 */	lhz r0, 4(r4)
/* 8037DF34  B0 05 00 04 */	sth r0, 4(r5)
/* 8037DF38  4E 80 00 20 */	blr 
