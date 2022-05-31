lbl_803EEF40:
/* 803EEF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EEF44  7C 08 02 A6 */	mflr r0
/* 803EEF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EEF4C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803EEF50  28 00 00 17 */	cmplwi r0, 0x17
/* 803EEF54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EEF58  93 C1 00 08 */	stw r30, 8(r1)
/* 803EEF5C  7C 7E 1B 78 */	mr r30, r3
/* 803EEF60  40 81 00 08 */	ble lbl_803EEF68
/* 803EEF64  38 80 00 00 */	li r4, 0
lbl_803EEF68:
/* 803EEF68  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 803EEF6C  2C 05 00 0C */	cmpwi r5, 0xc
/* 803EEF70  41 82 00 1C */	beq lbl_803EEF8C
/* 803EEF74  40 80 00 20 */	bge lbl_803EEF94
/* 803EEF78  2C 05 00 00 */	cmpwi r5, 0
/* 803EEF7C  41 82 00 08 */	beq lbl_803EEF84
/* 803EEF80  48 00 00 14 */	b lbl_803EEF94
lbl_803EEF84:
/* 803EEF84  38 A0 00 0C */	li r5, 0xc
/* 803EEF88  48 00 00 1C */	b lbl_803EEFA4
lbl_803EEF8C:
/* 803EEF8C  38 A0 00 0C */	li r5, 0xc
/* 803EEF90  48 00 00 14 */	b lbl_803EEFA4
lbl_803EEF94:
/* 803EEF94  38 60 00 0C */	li r3, 0xc
/* 803EEF98  7C 05 1B D6 */	divw r0, r5, r3
/* 803EEF9C  7C 00 19 D6 */	mullw r0, r0, r3
/* 803EEFA0  7C A0 28 50 */	subf r5, r0, r5
lbl_803EEFA4:
/* 803EEFA4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 803EEFA8  38 00 00 0C */	li r0, 0xc
/* 803EEFAC  7C 00 18 10 */	subfc r0, r0, r3
/* 803EEFB0  38 C0 00 0F */	li r6, 0xf
/* 803EEFB4  7C 80 01 10 */	subfe r4, r0, r0
/* 803EEFB8  7F C3 F3 78 */	mr r3, r30
/* 803EEFBC  3B E4 00 02 */	addi r31, r4, 2
/* 803EEFC0  38 E0 00 01 */	li r7, 1
/* 803EEFC4  38 80 00 0F */	li r4, 0xf
/* 803EEFC8  39 00 00 00 */	li r8, 0
/* 803EEFCC  39 20 00 00 */	li r9, 0
/* 803EEFD0  4B FC 04 A9 */	bl mFont_UnintToString
/* 803EEFD4  7C 64 1B 78 */	mr r4, r3
/* 803EEFD8  38 00 00 20 */	li r0, 0x20
/* 803EEFDC  7C 64 F2 14 */	add r3, r4, r30
/* 803EEFE0  7C 1E 21 AE */	stbx r0, r30, r4
/* 803EEFE4  38 04 00 01 */	addi r0, r4, 1
/* 803EEFE8  7F E5 FB 78 */	mr r5, r31
/* 803EEFEC  20 80 00 0F */	subfic r4, r0, 0xf
/* 803EEFF0  38 63 00 01 */	addi r3, r3, 1
/* 803EEFF4  4B FF FC D9 */	bl mString_Load_StringFromRom
/* 803EEFF8  7F C3 F3 78 */	mr r3, r30
/* 803EEFFC  38 80 00 0F */	li r4, 0xf
/* 803EF000  4B FD 1C 65 */	bl mMsg_Get_Length_String
/* 803EF004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EF00C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EF010  7C 08 03 A6 */	mtlr r0
/* 803EF014  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF018  4E 80 00 20 */	blr 
