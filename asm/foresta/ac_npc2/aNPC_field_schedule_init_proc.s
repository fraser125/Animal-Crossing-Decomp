lbl_80543560:
/* 80543560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80543564  7C 08 02 A6 */	mflr r0
/* 80543568  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054356C  39 61 00 20 */	addi r11, r1, 0x20
/* 80543570  4B B5 79 65 */	bl func_8009AED4
/* 80543574  7C 7D 1B 78 */	mr r29, r3
/* 80543578  7C 9E 23 78 */	mr r30, r4
/* 8054357C  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 80543580  3B E0 00 00 */	li r31, 0
/* 80543584  38 80 00 00 */	li r4, 0
/* 80543588  88 03 08 E8 */	lbz r0, 0x8e8(r3)
/* 8054358C  28 00 00 00 */	cmplwi r0, 0
/* 80543590  40 82 00 1C */	bne lbl_805435AC
/* 80543594  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 80543598  3B E0 00 02 */	li r31, 2
/* 8054359C  C0 03 93 74 */	lfs f0, data_80649374@l(r3)  /* 0x80649374@l */
/* 805435A0  38 80 00 01 */	li r4, 1
/* 805435A4  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 805435A8  D0 1D 00 30 */	stfs f0, 0x30(r29)
lbl_805435AC:
/* 805435AC  7F A3 EB 78 */	mr r3, r29
/* 805435B0  4B FF FA F5 */	bl aNPC_set_hide_flg
/* 805435B4  9B FD 07 DD */	stb r31, 0x7dd(r29)
/* 805435B8  7F A3 EB 78 */	mr r3, r29
/* 805435BC  7F C4 F3 78 */	mr r4, r30
/* 805435C0  4B FF FE C1 */	bl func_80543480
/* 805435C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805435C8  4B B5 79 59 */	bl func_8009AF20
/* 805435CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805435D0  7C 08 03 A6 */	mtlr r0
/* 805435D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805435D8  4E 80 00 20 */	blr 
