lbl_805E4758:
/* 805E4758  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E475C  7C 08 02 A6 */	mflr r0
/* 805E4760  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E4764  39 61 00 20 */	addi r11, r1, 0x20
/* 805E4768  4B AB 67 65 */	bl func_8009AECC
/* 805E476C  7C 7B 1B 78 */	mr r27, r3
/* 805E4770  7C 9C 23 78 */	mr r28, r4
/* 805E4774  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E4778  7C BD 2B 78 */	mr r29, r5
/* 805E477C  3B C0 00 02 */	li r30, 2
/* 805E4780  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805E4784  3B E3 03 F4 */	addi r31, r3, 0x3f4
lbl_805E4788:
/* 805E4788  88 DF 00 00 */	lbz r6, 0(r31)
/* 805E478C  28 06 00 01 */	cmplwi r6, 1
/* 805E4790  40 82 00 18 */	bne lbl_805E47A8
/* 805E4794  7F 63 DB 78 */	mr r3, r27
/* 805E4798  7F 84 E3 78 */	mr r4, r28
/* 805E479C  7F A5 EB 78 */	mr r5, r29
/* 805E47A0  4B FF FE 3D */	bl mIV_set_normal_dl
/* 805E47A4  48 00 00 14 */	b lbl_805E47B8
lbl_805E47A8:
/* 805E47A8  7F 63 DB 78 */	mr r3, r27
/* 805E47AC  7F 84 E3 78 */	mr r4, r28
/* 805E47B0  7F A5 EB 78 */	mr r5, r29
/* 805E47B4  4B FF FC 85 */	bl mIV_set_collect_dl
lbl_805E47B8:
/* 805E47B8  37 DE FF FF */	addic. r30, r30, -1
/* 805E47BC  3B FF FF FF */	addi r31, r31, -1
/* 805E47C0  40 80 FF C8 */	bge lbl_805E4788
/* 805E47C4  80 DB 00 2C */	lwz r6, 0x2c(r27)
/* 805E47C8  7F 63 DB 78 */	mr r3, r27
/* 805E47CC  7F A4 EB 78 */	mr r4, r29
/* 805E47D0  38 A0 00 01 */	li r5, 1
/* 805E47D4  81 86 09 20 */	lwz r12, 0x920(r6)
/* 805E47D8  7D 89 03 A6 */	mtctr r12
/* 805E47DC  4E 80 04 21 */	bctrl 
/* 805E47E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E47E4  4B AB 67 35 */	bl func_8009AF18
/* 805E47E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E47EC  7C 08 03 A6 */	mtlr r0
/* 805E47F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805E47F4  4E 80 00 20 */	blr 
