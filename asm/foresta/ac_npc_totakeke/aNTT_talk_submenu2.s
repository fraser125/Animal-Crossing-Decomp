lbl_805869BC:
/* 805869BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805869C0  7C 08 02 A6 */	mflr r0
/* 805869C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805869C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805869CC  4B B1 45 09 */	bl func_8009AED4
/* 805869D0  7C 9D 23 78 */	mr r29, r4
/* 805869D4  7C 7F 1B 78 */	mr r31, r3
/* 805869D8  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 805869DC  28 00 00 00 */	cmplwi r0, 0
/* 805869E0  40 82 00 E8 */	bne lbl_80586AC8
/* 805869E4  4B E3 8C C5 */	bl func_803BF6A8
/* 805869E8  4B E3 8D 7D */	bl mMsg_Check_not_series_main_wait
/* 805869EC  2C 03 00 01 */	cmpwi r3, 1
/* 805869F0  40 82 00 D8 */	bne lbl_80586AC8
/* 805869F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805869F8  83 BD 1F 60 */	lwz r29, 0x1f60(r29)
/* 805869FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80586A00  3F C3 00 02 */	addis r30, r3, 2
/* 80586A04  80 7E 60 E4 */	lwz r3, 0x60e4(r30)
/* 80586A08  81 83 00 24 */	lwz r12, 0x24(r3)
/* 80586A0C  7D 89 03 A6 */	mtctr r12
/* 80586A10  4E 80 04 21 */	bctrl 
/* 80586A14  4B E3 8C 95 */	bl func_803BF6A8
/* 80586A18  4B E3 A3 11 */	bl mMsg_Set_ForceNext
/* 80586A1C  A0 7D 00 00 */	lhz r3, 0(r29)
/* 80586A20  28 03 2A 37 */	cmplwi r3, 0x2a37
/* 80586A24  40 82 00 40 */	bne lbl_80586A64
/* 80586A28  4B E3 8C 81 */	bl func_803BF6A8
/* 80586A2C  38 80 1B 99 */	li r4, 0x1b99
/* 80586A30  4B E3 95 95 */	bl mMsg_Set_continue_msg_num
/* 80586A34  38 00 00 0C */	li r0, 0xc
/* 80586A38  98 1F 09 A6 */	stb r0, 0x9a6(r31)
/* 80586A3C  4B AD 62 B9 */	bl fqrand
/* 80586A40  3C 60 80 65 */	lis r3, lit_615@ha /* 0x80649AD8@ha */
/* 80586A44  C0 03 9A D8 */	lfs f0, lit_615@l(r3)  /* 0x80649AD8@l */
/* 80586A48  EC 00 00 72 */	fmuls f0, f0, f1
/* 80586A4C  FC 00 00 1E */	fctiwz f0, f0
/* 80586A50  D8 01 00 08 */	stfd f0, 8(r1)
/* 80586A54  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80586A58  38 03 00 37 */	addi r0, r3, 0x37
/* 80586A5C  98 1F 09 9E */	stb r0, 0x99e(r31)
/* 80586A60  48 00 00 54 */	b lbl_80586AB4
lbl_80586A64:
/* 80586A64  38 03 D6 00 */	addi r0, r3, -10752
/* 80586A68  98 1F 09 9E */	stb r0, 0x99e(r31)
/* 80586A6C  88 1F 09 9E */	lbz r0, 0x99e(r31)
/* 80586A70  28 00 00 34 */	cmplwi r0, 0x34
/* 80586A74  41 80 00 14 */	blt lbl_80586A88
/* 80586A78  4B E3 8C 31 */	bl func_803BF6A8
/* 80586A7C  38 80 1B 9B */	li r4, 0x1b9b
/* 80586A80  4B E3 95 45 */	bl mMsg_Set_continue_msg_num
/* 80586A84  48 00 00 10 */	b lbl_80586A94
lbl_80586A88:
/* 80586A88  4B E3 8C 21 */	bl func_803BF6A8
/* 80586A8C  38 80 1B 9C */	li r4, 0x1b9c
/* 80586A90  4B E3 95 35 */	bl mMsg_Set_continue_msg_num
lbl_80586A94:
/* 80586A94  80 BE 60 E4 */	lwz r5, 0x60e4(r30)
/* 80586A98  38 60 00 02 */	li r3, 2
/* 80586A9C  88 9F 09 9E */	lbz r4, 0x99e(r31)
/* 80586AA0  81 85 00 20 */	lwz r12, 0x20(r5)
/* 80586AA4  7D 89 03 A6 */	mtctr r12
/* 80586AA8  4E 80 04 21 */	bctrl 
/* 80586AAC  7F E3 FB 78 */	mr r3, r31
/* 80586AB0  4B FF FA 99 */	bl aTTN_give_merody
lbl_80586AB4:
/* 80586AB4  7F E3 FB 78 */	mr r3, r31
/* 80586AB8  38 80 00 03 */	li r4, 3
/* 80586ABC  48 00 00 A9 */	bl aNTT_change_talk_proc
/* 80586AC0  38 00 00 04 */	li r0, 4
/* 80586AC4  98 1F 09 A5 */	stb r0, 0x9a5(r31)
lbl_80586AC8:
/* 80586AC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80586ACC  4B B1 44 55 */	bl func_8009AF20
/* 80586AD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80586AD4  7C 08 03 A6 */	mtlr r0
/* 80586AD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80586ADC  4E 80 00 20 */	blr 
