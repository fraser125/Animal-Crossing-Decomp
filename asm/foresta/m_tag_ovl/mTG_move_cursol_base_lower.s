lbl_805F9874:
/* 805F9874  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805F9878  3C 80 80 6D */	lis r4, mTG_table_data@ha /* 0x806CF99C@ha */
/* 805F987C  38 84 F9 9C */	addi r4, r4, mTG_table_data@l /* 0x806CF99C@l */
/* 805F9880  80 A3 00 40 */	lwz r5, 0x40(r3)
/* 805F9884  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805F9888  7C 84 02 14 */	add r4, r4, r0
/* 805F988C  A8 84 00 02 */	lha r4, 2(r4)
/* 805F9890  38 04 FF FF */	addi r0, r4, -1
/* 805F9894  7C 05 00 00 */	cmpw r5, r0
/* 805F9898  40 80 00 14 */	bge lbl_805F98AC
/* 805F989C  38 05 00 01 */	addi r0, r5, 1
/* 805F98A0  38 80 00 01 */	li r4, 1
/* 805F98A4  90 03 00 40 */	stw r0, 0x40(r3)
/* 805F98A8  48 00 00 08 */	b lbl_805F98B0
lbl_805F98AC:
/* 805F98AC  38 80 00 00 */	li r4, 0
lbl_805F98B0:
/* 805F98B0  7C 83 23 78 */	mr r3, r4
/* 805F98B4  4E 80 00 20 */	blr 
