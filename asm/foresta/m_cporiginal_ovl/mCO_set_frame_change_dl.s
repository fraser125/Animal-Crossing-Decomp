lbl_805CE654:
/* 805CE654  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CE658  7C 08 02 A6 */	mflr r0
/* 805CE65C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CE660  39 61 00 20 */	addi r11, r1, 0x20
/* 805CE664  4B AC C8 69 */	bl func_8009AECC
/* 805CE668  7C 7B 1B 78 */	mr r27, r3
/* 805CE66C  7C 9C 23 78 */	mr r28, r4
/* 805CE670  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CE674  7C BD 2B 78 */	mr r29, r5
/* 805CE678  7C DE 33 78 */	mr r30, r6
/* 805CE67C  83 E3 09 DC */	lwz r31, 0x9dc(r3)
/* 805CE680  4B E3 DB 55 */	bl Matrix_push
/* 805CE684  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805CE688  3C 60 80 65 */	lis r3, lit_569@ha /* 0x8064B008@ha */
/* 805CE68C  C0 63 B0 08 */	lfs f3, lit_569@l(r3)  /* 0x8064B008@l */
/* 805CE690  38 60 00 01 */	li r3, 1
/* 805CE694  FC 40 00 50 */	fneg f2, f0
/* 805CE698  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 805CE69C  4B E3 DC 65 */	bl Matrix_translate
/* 805CE6A0  7F 63 DB 78 */	mr r3, r27
/* 805CE6A4  7F 84 E3 78 */	mr r4, r28
/* 805CE6A8  7F C5 F3 78 */	mr r5, r30
/* 805CE6AC  4B FF F9 F5 */	bl mCO_set_frame_main_dl
/* 805CE6B0  88 BF 00 0E */	lbz r5, 0xe(r31)
/* 805CE6B4  7F 63 DB 78 */	mr r3, r27
/* 805CE6B8  7F 84 E3 78 */	mr r4, r28
/* 805CE6BC  4B FF F5 D5 */	bl mCO_set_frame_tagS_dl
/* 805CE6C0  7F 63 DB 78 */	mr r3, r27
/* 805CE6C4  7F 84 E3 78 */	mr r4, r28
/* 805CE6C8  7F C5 F3 78 */	mr r5, r30
/* 805CE6CC  4B FF F8 89 */	bl mCO_set_frame_ueT_dl
/* 805CE6D0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805CE6D4  3C 60 80 65 */	lis r3, lit_651@ha /* 0x8064B00C@ha */
/* 805CE6D8  38 83 B0 0C */	addi r4, r3, lit_651@l /* 0x8064B00C@l */
/* 805CE6DC  7F 63 DB 78 */	mr r3, r27
/* 805CE6E0  FC 40 00 50 */	fneg f2, f0
/* 805CE6E4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805CE6E8  7F 84 E3 78 */	mr r4, r28
/* 805CE6EC  7F C5 F3 78 */	mr r5, r30
/* 805CE6F0  4B FF FC A1 */	bl mCO_set_frame_string_dl
/* 805CE6F4  4B E3 DB 21 */	bl Matrix_pull
/* 805CE6F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805CE6FC  4B AC C8 1D */	bl func_8009AF18
/* 805CE700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CE704  7C 08 03 A6 */	mtlr r0
/* 805CE708  38 21 00 20 */	addi r1, r1, 0x20
/* 805CE70C  4E 80 00 20 */	blr 
