lbl_805C6D5C:
/* 805C6D5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C6D60  7C 08 02 A6 */	mflr r0
/* 805C6D64  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C6D68  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6D6C  4B AD 41 65 */	bl func_8009AED0
/* 805C6D70  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 805C6D74  7C DF 33 78 */	mr r31, r6
/* 805C6D78  38 04 FF FF */	addi r0, r4, -1
/* 805C6D7C  7C FC 3B 78 */	mr r28, r7
/* 805C6D80  1C 00 00 73 */	mulli r0, r0, 0x73
/* 805C6D84  7D 1D 43 78 */	mr r29, r8
/* 805C6D88  7C A4 2B 78 */	mr r4, r5
/* 805C6D8C  7F C3 02 14 */	add r30, r3, r0
/* 805C6D90  7F C3 F3 78 */	mr r3, r30
/* 805C6D94  4B FF FE 59 */	bl mDC_day_to_day_data
/* 805C6D98  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 805C6D9C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 805C6DA0  28 00 00 01 */	cmplwi r0, 1
/* 805C6DA4  7C BE 22 14 */	add r5, r30, r4
/* 805C6DA8  40 82 00 24 */	bne lbl_805C6DCC
/* 805C6DAC  88 05 00 00 */	lbz r0, 0(r5)
/* 805C6DB0  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 805C6DB4  2C 00 00 02 */	cmpwi r0, 2
/* 805C6DB8  40 82 00 14 */	bne lbl_805C6DCC
/* 805C6DBC  88 05 00 01 */	lbz r0, 1(r5)
/* 805C6DC0  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 805C6DC4  60 00 00 40 */	ori r0, r0, 0x40
/* 805C6DC8  98 05 00 01 */	stb r0, 1(r5)
lbl_805C6DCC:
/* 805C6DCC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805C6DD0  28 00 00 05 */	cmplwi r0, 5
/* 805C6DD4  41 82 00 14 */	beq lbl_805C6DE8
/* 805C6DD8  88 65 00 00 */	lbz r3, 0(r5)
/* 805C6DDC  57 80 2C F4 */	rlwinm r0, r28, 5, 0x13, 0x1a
/* 805C6DE0  50 60 06 FE */	rlwimi r0, r3, 0, 0x1b, 0x1f
/* 805C6DE4  98 05 00 00 */	stb r0, 0(r5)
lbl_805C6DE8:
/* 805C6DE8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 805C6DEC  28 00 00 FF */	cmplwi r0, 0xff
/* 805C6DF0  41 82 00 10 */	beq lbl_805C6E00
/* 805C6DF4  7F C3 F3 78 */	mr r3, r30
/* 805C6DF8  7F E5 FB 78 */	mr r5, r31
/* 805C6DFC  4B FF FE 29 */	bl mDC_set_disp_event_day
lbl_805C6E00:
/* 805C6E00  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6E04  4B AD 41 19 */	bl func_8009AF1C
/* 805C6E08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C6E0C  7C 08 03 A6 */	mtlr r0
/* 805C6E10  38 21 00 20 */	addi r1, r1, 0x20
/* 805C6E14  4E 80 00 20 */	blr 
