lbl_803EEE88:
/* 803EEE88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EEE8C  7C 08 02 A6 */	mflr r0
/* 803EEE90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EEE94  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803EEE98  28 00 00 06 */	cmplwi r0, 6
/* 803EEE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EEEA0  7C 7F 1B 78 */	mr r31, r3
/* 803EEEA4  40 81 00 08 */	ble lbl_803EEEAC
/* 803EEEA8  38 80 00 00 */	li r4, 0
lbl_803EEEAC:
/* 803EEEAC  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 803EEEB0  7F E3 FB 78 */	mr r3, r31
/* 803EEEB4  38 A4 00 09 */	addi r5, r4, 9
/* 803EEEB8  38 80 00 09 */	li r4, 9
/* 803EEEBC  4B FF FE 11 */	bl mString_Load_StringFromRom
/* 803EEEC0  7F E3 FB 78 */	mr r3, r31
/* 803EEEC4  38 80 00 09 */	li r4, 9
/* 803EEEC8  4B FD 1D 9D */	bl mMsg_Get_Length_String
/* 803EEECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EEED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EEED4  7C 08 03 A6 */	mtlr r0
/* 803EEED8  38 21 00 10 */	addi r1, r1, 0x10
/* 803EEEDC  4E 80 00 20 */	blr 
