lbl_80406FBC:
/* 80406FBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80406FC0  7C 08 02 A6 */	mflr r0
/* 80406FC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80406FC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80406FCC  4B C9 3F 09 */	bl func_8009AED4
/* 80406FD0  7C 7D 1B 78 */	mr r29, r3
/* 80406FD4  7C 9E 23 78 */	mr r30, r4
/* 80406FD8  88 63 00 05 */	lbz r3, 5(r3)
/* 80406FDC  8B FD 00 03 */	lbz r31, 3(r29)
/* 80406FE0  28 03 00 01 */	cmplwi r3, 1
/* 80406FE4  40 82 00 18 */	bne lbl_80406FFC
/* 80406FE8  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80406FEC  38 80 00 0C */	li r4, 0xc
/* 80406FF0  4B FF F7 89 */	bl lbRTC_GetDaysByMonth
/* 80406FF4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80406FF8  48 00 00 18 */	b lbl_80407010
lbl_80406FFC:
/* 80406FFC  38 03 FF FF */	addi r0, r3, -1
/* 80407000  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80407004  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80407008  4B FF F7 71 */	bl lbRTC_GetDaysByMonth
/* 8040700C  54 63 06 3E */	clrlwi r3, r3, 0x18
lbl_80407010:
/* 80407010  7F FE F8 51 */	subf. r31, r30, r31
/* 80407014  41 81 00 24 */	bgt lbl_80407038
/* 80407018  2C 1F 00 00 */	cmpwi r31, 0
/* 8040701C  7C 1F 1A 14 */	add r0, r31, r3
/* 80407020  40 82 00 08 */	bne lbl_80407028
/* 80407024  7C 60 1B 78 */	mr r0, r3
lbl_80407028:
/* 80407028  7C 1F 03 78 */	mr r31, r0
/* 8040702C  7F A3 EB 78 */	mr r3, r29
/* 80407030  38 80 00 01 */	li r4, 1
/* 80407034  4B FF FF 05 */	bl lbRTC_Sub_MM
lbl_80407038:
/* 80407038  9B FD 00 03 */	stb r31, 3(r29)
/* 8040703C  39 61 00 20 */	addi r11, r1, 0x20
/* 80407040  4B C9 3E E1 */	bl func_8009AF20
/* 80407044  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80407048  7C 08 03 A6 */	mtlr r0
/* 8040704C  38 21 00 20 */	addi r1, r1, 0x20
/* 80407050  4E 80 00 20 */	blr 
