lbl_803CDB2C:
/* 803CDB2C  88 C3 00 03 */	lbz r6, 3(r3)
/* 803CDB30  38 E0 00 00 */	li r7, 0
/* 803CDB34  28 06 00 FF */	cmplwi r6, 0xff
/* 803CDB38  41 82 00 34 */	beq lbl_803CDB6C
/* 803CDB3C  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803CDB40  A0 04 00 06 */	lhz r0, 6(r4)
/* 803CDB44  7C 05 00 40 */	cmplw r5, r0
/* 803CDB48  40 82 00 20 */	bne lbl_803CDB68
/* 803CDB4C  88 63 00 02 */	lbz r3, 2(r3)
/* 803CDB50  88 04 00 05 */	lbz r0, 5(r4)
/* 803CDB54  7C 03 00 40 */	cmplw r3, r0
/* 803CDB58  40 82 00 10 */	bne lbl_803CDB68
/* 803CDB5C  88 04 00 03 */	lbz r0, 3(r4)
/* 803CDB60  7C 06 00 40 */	cmplw r6, r0
/* 803CDB64  41 82 00 08 */	beq lbl_803CDB6C
lbl_803CDB68:
/* 803CDB68  38 E0 00 01 */	li r7, 1
lbl_803CDB6C:
/* 803CDB6C  7C E3 3B 78 */	mr r3, r7
/* 803CDB70  4E 80 00 20 */	blr 
