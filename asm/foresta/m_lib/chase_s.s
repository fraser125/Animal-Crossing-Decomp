lbl_803BABF8:
/* 803BABF8  7C A0 07 35 */	extsh. r0, r5
/* 803BABFC  41 82 00 4C */	beq lbl_803BAC48
/* 803BAC00  A8 C3 00 00 */	lha r6, 0(r3)
/* 803BAC04  7C 80 07 34 */	extsh r0, r4
/* 803BAC08  7C 06 00 00 */	cmpw r6, r0
/* 803BAC0C  40 81 00 0C */	ble lbl_803BAC18
/* 803BAC10  7C 05 00 D0 */	neg r0, r5
/* 803BAC14  7C 05 07 34 */	extsh r5, r0
lbl_803BAC18:
/* 803BAC18  A8 03 00 00 */	lha r0, 0(r3)
/* 803BAC1C  7C 86 07 34 */	extsh r6, r4
/* 803BAC20  7C A7 07 34 */	extsh r7, r5
/* 803BAC24  7C 00 2A 14 */	add r0, r0, r5
/* 803BAC28  B0 03 00 00 */	sth r0, 0(r3)
/* 803BAC2C  A8 03 00 00 */	lha r0, 0(r3)
/* 803BAC30  7C 06 00 50 */	subf r0, r6, r0
/* 803BAC34  7C 07 01 D7 */	mullw. r0, r7, r0
/* 803BAC38  41 80 00 28 */	blt lbl_803BAC60
/* 803BAC3C  B0 83 00 00 */	sth r4, 0(r3)
/* 803BAC40  38 60 00 01 */	li r3, 1
/* 803BAC44  4E 80 00 20 */	blr 
lbl_803BAC48:
/* 803BAC48  A8 63 00 00 */	lha r3, 0(r3)
/* 803BAC4C  7C 80 07 34 */	extsh r0, r4
/* 803BAC50  7C 03 00 00 */	cmpw r3, r0
/* 803BAC54  40 82 00 0C */	bne lbl_803BAC60
/* 803BAC58  38 60 00 01 */	li r3, 1
/* 803BAC5C  4E 80 00 20 */	blr 
lbl_803BAC60:
/* 803BAC60  38 60 00 00 */	li r3, 0
/* 803BAC64  4E 80 00 20 */	blr 
