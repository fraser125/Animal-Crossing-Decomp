lbl_803FAC10:
/* 803FAC10  38 E0 00 00 */	li r7, 0
/* 803FAC14  39 00 00 00 */	li r8, 0
/* 803FAC18  39 20 00 00 */	li r9, 0
/* 803FAC1C  48 00 00 20 */	b lbl_803FAC3C
lbl_803FAC20:
/* 803FAC20  88 04 00 00 */	lbz r0, 0(r4)
/* 803FAC24  7C 06 00 40 */	cmplw r6, r0
/* 803FAC28  40 82 00 30 */	bne lbl_803FAC58
/* 803FAC2C  38 E7 00 01 */	addi r7, r7, 1
/* 803FAC30  38 63 00 01 */	addi r3, r3, 1
/* 803FAC34  38 84 00 01 */	addi r4, r4, 1
/* 803FAC38  39 08 00 01 */	addi r8, r8, 1
lbl_803FAC3C:
/* 803FAC3C  28 03 00 00 */	cmplwi r3, 0
/* 803FAC40  41 82 00 18 */	beq lbl_803FAC58
/* 803FAC44  7C 08 28 00 */	cmpw r8, r5
/* 803FAC48  40 80 00 10 */	bge lbl_803FAC58
/* 803FAC4C  88 C3 00 00 */	lbz r6, 0(r3)
/* 803FAC50  28 06 00 00 */	cmplwi r6, 0
/* 803FAC54  40 82 FF CC */	bne lbl_803FAC20
lbl_803FAC58:
/* 803FAC58  7C 07 28 00 */	cmpw r7, r5
/* 803FAC5C  40 82 00 08 */	bne lbl_803FAC64
/* 803FAC60  39 20 00 01 */	li r9, 1
lbl_803FAC64:
/* 803FAC64  7D 23 4B 78 */	mr r3, r9
/* 803FAC68  4E 80 00 20 */	blr 
