lbl_805C6ACC:
/* 805C6ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6AD0  7C 08 02 A6 */	mflr r0
/* 805C6AD4  38 A0 00 00 */	li r5, 0
/* 805C6AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C6ADC  38 00 00 06 */	li r0, 6
/* 805C6AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C6AE4  7C 7F 1B 78 */	mr r31, r3
/* 805C6AE8  38 60 00 00 */	li r3, 0
/* 805C6AEC  93 C1 00 08 */	stw r30, 8(r1)
/* 805C6AF0  88 9F 10 56 */	lbz r4, 0x1056(r31)
/* 805C6AF4  1C 84 00 73 */	mulli r4, r4, 0x73
/* 805C6AF8  98 7F 10 42 */	stb r3, 0x1042(r31)
/* 805C6AFC  98 7F 10 43 */	stb r3, 0x1043(r31)
/* 805C6B00  7F DF 22 14 */	add r30, r31, r4
/* 805C6B04  7C 09 03 A6 */	mtctr r0
lbl_805C6B08:
/* 805C6B08  38 05 10 3C */	addi r0, r5, 0x103c
/* 805C6B0C  38 A5 00 01 */	addi r5, r5, 1
/* 805C6B10  7C 7F 01 AE */	stbx r3, r31, r0
/* 805C6B14  42 00 FF F4 */	bdnz lbl_805C6B08
/* 805C6B18  38 E0 00 00 */	li r7, 0
/* 805C6B1C  7C E3 3B 78 */	mr r3, r7
/* 805C6B20  48 00 00 44 */	b lbl_805C6B64
lbl_805C6B24:
/* 805C6B24  7C BE 1A 14 */	add r5, r30, r3
/* 805C6B28  88 1F 10 57 */	lbz r0, 0x1057(r31)
/* 805C6B2C  88 85 00 4A */	lbz r4, 0x4a(r5)
/* 805C6B30  7C 04 00 40 */	cmplw r4, r0
/* 805C6B34  40 82 00 28 */	bne lbl_805C6B5C
/* 805C6B38  88 DF 10 43 */	lbz r6, 0x1043(r31)
/* 805C6B3C  28 06 00 06 */	cmplwi r6, 6
/* 805C6B40  40 80 00 48 */	bge lbl_805C6B88
/* 805C6B44  88 85 00 4B */	lbz r4, 0x4b(r5)
/* 805C6B48  38 06 10 3C */	addi r0, r6, 0x103c
/* 805C6B4C  7C 9F 01 AE */	stbx r4, r31, r0
/* 805C6B50  88 9F 10 43 */	lbz r4, 0x1043(r31)
/* 805C6B54  38 04 00 01 */	addi r0, r4, 1
/* 805C6B58  98 1F 10 43 */	stb r0, 0x1043(r31)
lbl_805C6B5C:
/* 805C6B5C  38 E7 00 01 */	addi r7, r7, 1
/* 805C6B60  38 63 00 02 */	addi r3, r3, 2
lbl_805C6B64:
/* 805C6B64  88 1E 00 72 */	lbz r0, 0x72(r30)
/* 805C6B68  7C 07 00 00 */	cmpw r7, r0
/* 805C6B6C  41 80 FF B8 */	blt lbl_805C6B24
/* 805C6B70  7F E3 FB 78 */	mr r3, r31
/* 805C6B74  4B FF FE 81 */	bl mDC_set_string
/* 805C6B78  88 1F 10 57 */	lbz r0, 0x1057(r31)
/* 805C6B7C  7C 1E 00 AE */	lbzx r0, r30, r0
/* 805C6B80  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 805C6B84  98 1F 10 58 */	stb r0, 0x1058(r31)
lbl_805C6B88:
/* 805C6B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C6B90  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C6B94  7C 08 03 A6 */	mtlr r0
/* 805C6B98  38 21 00 10 */	addi r1, r1, 0x10
/* 805C6B9C  4E 80 00 20 */	blr 
