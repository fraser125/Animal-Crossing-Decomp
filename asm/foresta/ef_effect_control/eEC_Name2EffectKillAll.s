lbl_804CD5C8:
/* 804CD5C8  3C 80 81 1D */	lis r4, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD5CC  38 00 00 64 */	li r0, 0x64
/* 804CD5D0  38 84 08 40 */	addi r4, r4, data_811D0840@l /* 0x811D0840@l */
/* 804CD5D4  38 C4 24 34 */	addi r6, r4, 0x2434
/* 804CD5D8  38 E4 01 D4 */	addi r7, r4, 0x1d4
/* 804CD5DC  7C 09 03 A6 */	mtctr r0
lbl_804CD5E0:
/* 804CD5E0  88 06 00 00 */	lbz r0, 0(r6)
/* 804CD5E4  28 00 00 00 */	cmplwi r0, 0
/* 804CD5E8  41 82 00 74 */	beq lbl_804CD65C
/* 804CD5EC  A0 87 00 0C */	lhz r4, 0xc(r7)
/* 804CD5F0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804CD5F4  7C 04 00 40 */	cmplw r4, r0
/* 804CD5F8  40 82 00 64 */	bne lbl_804CD65C
/* 804CD5FC  A8 A7 00 04 */	lha r5, 4(r7)
/* 804CD600  2C 05 FF FF */	cmpwi r5, -1
/* 804CD604  41 82 00 58 */	beq lbl_804CD65C
/* 804CD608  A8 07 00 02 */	lha r0, 2(r7)
/* 804CD60C  3C 80 80 6A */	lis r4, data_8069BC10@ha /* 0x8069BC10@ha */
/* 804CD610  38 84 BC 10 */	addi r4, r4, data_8069BC10@l /* 0x8069BC10@l */
/* 804CD614  54 00 10 3A */	slwi r0, r0, 2
/* 804CD618  7C 84 00 2E */	lwzx r4, r4, r0
/* 804CD61C  A8 04 00 10 */	lha r0, 0x10(r4)
/* 804CD620  2C 00 FF FF */	cmpwi r0, -1
/* 804CD624  40 82 00 10 */	bne lbl_804CD634
/* 804CD628  38 00 00 00 */	li r0, 0
/* 804CD62C  98 06 00 00 */	stb r0, 0(r6)
/* 804CD630  48 00 00 2C */	b lbl_804CD65C
lbl_804CD634:
/* 804CD634  3C 80 81 1D */	lis r4, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD638  54 A5 28 34 */	slwi r5, r5, 5
/* 804CD63C  38 04 08 40 */	addi r0, r4, data_811D0840@l /* 0x811D0840@l */
/* 804CD640  7C 80 2A 14 */	add r4, r0, r5
/* 804CD644  A8 04 00 64 */	lha r0, 0x64(r4)
/* 804CD648  2C 00 FF FE */	cmpwi r0, -2
/* 804CD64C  41 82 00 10 */	beq lbl_804CD65C
/* 804CD650  B0 07 00 00 */	sth r0, 0(r7)
/* 804CD654  38 00 00 02 */	li r0, 2
/* 804CD658  98 07 00 0F */	stb r0, 0xf(r7)
lbl_804CD65C:
/* 804CD65C  38 C6 00 01 */	addi r6, r6, 1
/* 804CD660  38 E7 00 58 */	addi r7, r7, 0x58
/* 804CD664  42 00 FF 7C */	bdnz lbl_804CD5E0
/* 804CD668  4E 80 00 20 */	blr 
