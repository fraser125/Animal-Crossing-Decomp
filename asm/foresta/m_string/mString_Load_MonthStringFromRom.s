lbl_803EEE28:
/* 803EEE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EEE2C  7C 08 02 A6 */	mflr r0
/* 803EEE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EEE34  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803EEE38  28 00 00 01 */	cmplwi r0, 1
/* 803EEE3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EEE40  7C 7F 1B 78 */	mr r31, r3
/* 803EEE44  41 80 00 0C */	blt lbl_803EEE50
/* 803EEE48  28 00 00 0C */	cmplwi r0, 0xc
/* 803EEE4C  40 81 00 08 */	ble lbl_803EEE54
lbl_803EEE50:
/* 803EEE50  38 80 00 01 */	li r4, 1
lbl_803EEE54:
/* 803EEE54  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 803EEE58  7F E3 FB 78 */	mr r3, r31
/* 803EEE5C  38 A4 06 6C */	addi r5, r4, 0x66c
/* 803EEE60  38 80 00 09 */	li r4, 9
/* 803EEE64  4B FF FE 69 */	bl mString_Load_StringFromRom
/* 803EEE68  7F E3 FB 78 */	mr r3, r31
/* 803EEE6C  38 80 00 09 */	li r4, 9
/* 803EEE70  4B FD 1D F5 */	bl mMsg_Get_Length_String
/* 803EEE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EEE78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EEE7C  7C 08 03 A6 */	mtlr r0
/* 803EEE80  38 21 00 10 */	addi r1, r1, 0x10
/* 803EEE84  4E 80 00 20 */	blr 
