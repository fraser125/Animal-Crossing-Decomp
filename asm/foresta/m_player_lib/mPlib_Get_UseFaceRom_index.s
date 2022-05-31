lbl_803D8D34:
/* 803D8D34  30 05 FF FF */	addic r0, r5, -1
/* 803D8D38  2C 07 00 00 */	cmpwi r7, 0
/* 803D8D3C  7C A0 29 10 */	subfe r5, r0, r5
/* 803D8D40  30 06 FF FF */	addic r0, r6, -1
/* 803D8D44  7C 00 31 10 */	subfe r0, r0, r6
/* 803D8D48  41 82 00 1C */	beq lbl_803D8D64
/* 803D8D4C  54 86 18 38 */	slwi r6, r4, 3
/* 803D8D50  54 60 30 32 */	slwi r0, r3, 6
/* 803D8D54  7C C6 02 14 */	add r6, r6, r0
/* 803D8D58  54 A0 38 30 */	slwi r0, r5, 7
/* 803D8D5C  7C C6 02 14 */	add r6, r6, r0
/* 803D8D60  48 00 00 1C */	b lbl_803D8D7C
lbl_803D8D64:
/* 803D8D64  54 06 28 34 */	slwi r6, r0, 5
/* 803D8D68  54 63 18 38 */	slwi r3, r3, 3
/* 803D8D6C  7C C6 22 14 */	add r6, r6, r4
/* 803D8D70  54 A0 20 36 */	slwi r0, r5, 4
/* 803D8D74  7C C6 1A 14 */	add r6, r6, r3
/* 803D8D78  7C C6 02 14 */	add r6, r6, r0
lbl_803D8D7C:
/* 803D8D7C  7C C3 33 78 */	mr r3, r6
/* 803D8D80  4E 80 00 20 */	blr 
