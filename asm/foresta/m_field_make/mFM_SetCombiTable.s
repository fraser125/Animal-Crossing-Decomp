lbl_803A2D4C:
/* 803A2D4C  54 A7 06 3E */	clrlwi r7, r5, 0x18
/* 803A2D50  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 803A2D54  39 00 00 00 */	li r8, 0
/* 803A2D58  48 00 00 48 */	b lbl_803A2DA0
lbl_803A2D5C:
/* 803A2D5C  39 20 00 00 */	li r9, 0
/* 803A2D60  48 00 00 30 */	b lbl_803A2D90
lbl_803A2D64:
/* 803A2D64  A0 C4 00 00 */	lhz r6, 0(r4)
/* 803A2D68  39 29 00 01 */	addi r9, r9, 1
/* 803A2D6C  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803A2D70  50 C5 04 3A */	rlwimi r5, r6, 0, 0x10, 0x1d
/* 803A2D74  B0 A3 00 00 */	sth r5, 0(r3)
/* 803A2D78  88 C4 00 01 */	lbz r6, 1(r4)
/* 803A2D7C  38 84 00 02 */	addi r4, r4, 2
/* 803A2D80  88 A3 00 01 */	lbz r5, 1(r3)
/* 803A2D84  50 C5 07 BE */	rlwimi r5, r6, 0, 0x1e, 0x1f
/* 803A2D88  98 A3 00 01 */	stb r5, 1(r3)
/* 803A2D8C  38 63 00 02 */	addi r3, r3, 2
lbl_803A2D90:
/* 803A2D90  55 25 06 3E */	clrlwi r5, r9, 0x18
/* 803A2D94  7C 05 38 40 */	cmplw r5, r7
/* 803A2D98  41 80 FF CC */	blt lbl_803A2D64
/* 803A2D9C  39 08 00 01 */	addi r8, r8, 1
lbl_803A2DA0:
/* 803A2DA0  55 05 06 3E */	clrlwi r5, r8, 0x18
/* 803A2DA4  7C 05 00 40 */	cmplw r5, r0
/* 803A2DA8  41 80 FF B4 */	blt lbl_803A2D5C
/* 803A2DAC  4E 80 00 20 */	blr 
