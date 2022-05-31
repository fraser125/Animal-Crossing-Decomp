lbl_803EF124:
/* 803EF124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF128  7C 08 02 A6 */	mflr r0
/* 803EF12C  38 C0 00 10 */	li r6, 0x10
/* 803EF130  38 E0 00 01 */	li r7, 1
/* 803EF134  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF138  7C 80 23 78 */	mr r0, r4
/* 803EF13C  38 80 00 10 */	li r4, 0x10
/* 803EF140  39 00 00 00 */	li r8, 0
/* 803EF144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EF148  7C BF 2B 78 */	mr r31, r5
/* 803EF14C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803EF150  39 20 00 01 */	li r9, 1
/* 803EF154  93 C1 00 08 */	stw r30, 8(r1)
/* 803EF158  7C 7E 1B 78 */	mr r30, r3
/* 803EF15C  4B FC 03 1D */	bl mFont_UnintToString
/* 803EF160  7C 64 1B 78 */	mr r4, r3
/* 803EF164  38 00 00 20 */	li r0, 0x20
/* 803EF168  7C 64 F2 14 */	add r3, r4, r30
/* 803EF16C  7C 1E 21 AE */	stbx r0, r30, r4
/* 803EF170  38 04 00 01 */	addi r0, r4, 1
/* 803EF174  7F E5 FB 78 */	mr r5, r31
/* 803EF178  20 80 00 10 */	subfic r4, r0, 0x10
/* 803EF17C  38 63 00 01 */	addi r3, r3, 1
/* 803EF180  4B FF FB 4D */	bl mString_Load_StringFromRom
/* 803EF184  7F C3 F3 78 */	mr r3, r30
/* 803EF188  38 80 00 10 */	li r4, 0x10
/* 803EF18C  4B FD 1A D9 */	bl mMsg_Get_Length_String
/* 803EF190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EF198  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EF19C  7C 08 03 A6 */	mtlr r0
/* 803EF1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF1A4  4E 80 00 20 */	blr 
