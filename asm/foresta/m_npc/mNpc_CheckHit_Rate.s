lbl_803D63DC:
/* 803D63DC  38 C0 00 FF */	li r6, 0xff
/* 803D63E0  38 E0 00 00 */	li r7, 0
/* 803D63E4  39 00 00 00 */	li r8, 0
/* 803D63E8  38 A0 00 01 */	li r5, 1
/* 803D63EC  7C 89 03 A6 */	mtctr r4
/* 803D63F0  2C 04 00 00 */	cmpwi r4, 0
/* 803D63F4  40 81 00 18 */	ble lbl_803D640C
lbl_803D63F8:
/* 803D63F8  7C A0 40 30 */	slw r0, r5, r8
/* 803D63FC  39 08 00 01 */	addi r8, r8, 1
/* 803D6400  7C C0 00 78 */	andc r0, r6, r0
/* 803D6404  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 803D6408  42 00 FF F0 */	bdnz lbl_803D63F8
lbl_803D640C:
/* 803D640C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803D6410  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 803D6414  7C 60 00 39 */	and. r0, r3, r0
/* 803D6418  40 82 00 08 */	bne lbl_803D6420
/* 803D641C  38 E0 00 01 */	li r7, 1
lbl_803D6420:
/* 803D6420  7C E3 3B 78 */	mr r3, r7
/* 803D6424  4E 80 00 20 */	blr 
