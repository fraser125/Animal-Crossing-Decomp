lbl_805DA080:
/* 805DA080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DA084  7C 08 02 A6 */	mflr r0
/* 805DA088  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DA08C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DA090  7C BF 2B 78 */	mr r31, r5
/* 805DA094  A8 C5 00 16 */	lha r6, 0x16(r5)
/* 805DA098  A8 A5 00 1E */	lha r5, 0x1e(r5)
/* 805DA09C  7C 06 28 00 */	cmpw r6, r5
/* 805DA0A0  40 80 00 80 */	bge lbl_805DA120
/* 805DA0A4  7C A0 07 35 */	extsh. r0, r5
/* 805DA0A8  40 81 00 78 */	ble lbl_805DA120
/* 805DA0AC  7C C0 07 35 */	extsh. r0, r6
/* 805DA0B0  40 82 00 58 */	bne lbl_805DA108
/* 805DA0B4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805DA0B8  88 03 00 00 */	lbz r0, 0(r3)
/* 805DA0BC  28 00 00 20 */	cmplwi r0, 0x20
/* 805DA0C0  40 82 00 48 */	bne lbl_805DA108
/* 805DA0C4  38 05 FF FF */	addi r0, r5, -1
/* 805DA0C8  7C 64 1B 78 */	mr r4, r3
/* 805DA0CC  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 805DA0D0  38 60 00 00 */	li r3, 0
/* 805DA0D4  48 00 00 14 */	b lbl_805DA0E8
lbl_805DA0D8:
/* 805DA0D8  88 04 00 01 */	lbz r0, 1(r4)
/* 805DA0DC  38 63 00 01 */	addi r3, r3, 1
/* 805DA0E0  98 04 00 00 */	stb r0, 0(r4)
/* 805DA0E4  38 84 00 01 */	addi r4, r4, 1
lbl_805DA0E8:
/* 805DA0E8  A8 1F 00 1E */	lha r0, 0x1e(r31)
/* 805DA0EC  7C 03 00 00 */	cmpw r3, r0
/* 805DA0F0  41 80 FF E8 */	blt lbl_805DA0D8
/* 805DA0F4  38 60 00 20 */	li r3, 0x20
/* 805DA0F8  38 00 00 01 */	li r0, 1
/* 805DA0FC  98 64 00 00 */	stb r3, 0(r4)
/* 805DA100  98 1F 00 15 */	stb r0, 0x15(r31)
/* 805DA104  48 00 00 48 */	b lbl_805DA14C
lbl_805DA108:
/* 805DA108  A8 7F 00 16 */	lha r3, 0x16(r31)
/* 805DA10C  38 00 00 01 */	li r0, 1
/* 805DA110  38 63 00 01 */	addi r3, r3, 1
/* 805DA114  B0 7F 00 16 */	sth r3, 0x16(r31)
/* 805DA118  98 1F 00 15 */	stb r0, 0x15(r31)
/* 805DA11C  48 00 00 30 */	b lbl_805DA14C
lbl_805DA120:
/* 805DA120  7C 06 28 00 */	cmpw r6, r5
/* 805DA124  40 82 00 28 */	bne lbl_805DA14C
/* 805DA128  38 00 00 20 */	li r0, 0x20
/* 805DA12C  7F E5 FB 78 */	mr r5, r31
/* 805DA130  98 1F 00 13 */	stb r0, 0x13(r31)
/* 805DA134  4B FF FE FD */	bl mED_input_footer_line
/* 805DA138  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 805DA13C  28 00 00 00 */	cmplwi r0, 0
/* 805DA140  41 82 00 0C */	beq lbl_805DA14C
/* 805DA144  38 00 00 08 */	li r0, 8
/* 805DA148  98 1F 00 11 */	stb r0, 0x11(r31)
lbl_805DA14C:
/* 805DA14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DA150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DA154  7C 08 03 A6 */	mtlr r0
/* 805DA158  38 21 00 10 */	addi r1, r1, 0x10
/* 805DA15C  4E 80 00 20 */	blr 
