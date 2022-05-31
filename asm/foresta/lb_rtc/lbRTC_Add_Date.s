lbl_80406EAC:
/* 80406EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80406EB0  7C 08 02 A6 */	mflr r0
/* 80406EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80406EB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80406EBC  7C 9F 23 78 */	mr r31, r4
/* 80406EC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80406EC4  7C 7E 1B 78 */	mr r30, r3
/* 80406EC8  88 84 00 00 */	lbz r4, 0(r4)
/* 80406ECC  4B FF FF 81 */	bl lbRTC_Add_ss
/* 80406ED0  88 9F 00 01 */	lbz r4, 1(r31)
/* 80406ED4  7F C3 F3 78 */	mr r3, r30
/* 80406ED8  4B FF FF 15 */	bl lbRTC_Add_mm
/* 80406EDC  88 9F 00 02 */	lbz r4, 2(r31)
/* 80406EE0  7F C3 F3 78 */	mr r3, r30
/* 80406EE4  4B FF FE A9 */	bl lbRTC_Add_hh
/* 80406EE8  88 9F 00 03 */	lbz r4, 3(r31)
/* 80406EEC  7F C3 F3 78 */	mr r3, r30
/* 80406EF0  4B FF FE 35 */	bl lbRTC_Add_DD
/* 80406EF4  88 9F 00 05 */	lbz r4, 5(r31)
/* 80406EF8  7F C3 F3 78 */	mr r3, r30
/* 80406EFC  4B FF FD C9 */	bl lbRTC_Add_MM
/* 80406F00  A0 9F 00 06 */	lhz r4, 6(r31)
/* 80406F04  7F C3 F3 78 */	mr r3, r30
/* 80406F08  4B FF FD A9 */	bl lbRTC_Add_YY
/* 80406F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80406F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80406F14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80406F18  7C 08 03 A6 */	mtlr r0
/* 80406F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80406F20  4E 80 00 20 */	blr 
