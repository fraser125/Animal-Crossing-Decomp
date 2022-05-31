lbl_803EEEE0:
/* 803EEEE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EEEE4  7C 08 02 A6 */	mflr r0
/* 803EEEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EEEEC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803EEEF0  28 00 00 01 */	cmplwi r0, 1
/* 803EEEF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EEEF8  7C 7F 1B 78 */	mr r31, r3
/* 803EEEFC  41 80 00 0C */	blt lbl_803EEF08
/* 803EEF00  28 00 00 1F */	cmplwi r0, 0x1f
/* 803EEF04  40 81 00 08 */	ble lbl_803EEF0C
lbl_803EEF08:
/* 803EEF08  38 80 00 01 */	li r4, 1
lbl_803EEF0C:
/* 803EEF0C  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 803EEF10  7F E3 FB 78 */	mr r3, r31
/* 803EEF14  38 A4 06 4D */	addi r5, r4, 0x64d
/* 803EEF18  38 80 00 04 */	li r4, 4
/* 803EEF1C  4B FF FD B1 */	bl mString_Load_StringFromRom
/* 803EEF20  7F E3 FB 78 */	mr r3, r31
/* 803EEF24  38 80 00 04 */	li r4, 4
/* 803EEF28  4B FD 1D 3D */	bl mMsg_Get_Length_String
/* 803EEF2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EEF30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EEF34  7C 08 03 A6 */	mtlr r0
/* 803EEF38  38 21 00 10 */	addi r1, r1, 0x10
/* 803EEF3C  4E 80 00 20 */	blr 
