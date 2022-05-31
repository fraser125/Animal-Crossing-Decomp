lbl_8052E010:
/* 8052E010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052E014  7C 08 02 A6 */	mflr r0
/* 8052E018  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052E01C  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E020  4B B6 CE B5 */	bl func_8009AED4
/* 8052E024  7C 7D 1B 78 */	mr r29, r3
/* 8052E028  7C BF 2B 78 */	mr r31, r5
/* 8052E02C  7C DE 33 78 */	mr r30, r6
/* 8052E030  38 7D 00 48 */	addi r3, r29, 0x48
/* 8052E034  4B E8 D1 35 */	bl search_position_angleX
/* 8052E038  7C 03 00 D0 */	neg r0, r3
/* 8052E03C  7F E4 FB 78 */	mr r4, r31
/* 8052E040  7C 1F 07 34 */	extsh r31, r0
/* 8052E044  38 7D 00 28 */	addi r3, r29, 0x28
/* 8052E048  4B E8 D0 E9 */	bl search_position_angleY
/* 8052E04C  A8 1E 00 00 */	lha r0, 0(r30)
/* 8052E050  A8 9E 00 02 */	lha r4, 2(r30)
/* 8052E054  7F FF 02 14 */	add r31, r31, r0
/* 8052E058  7F E0 07 34 */	extsh r0, r31
/* 8052E05C  7F C4 18 50 */	subf r30, r4, r3
/* 8052E060  2C 00 E8 00 */	cmpwi r0, -6144
/* 8052E064  40 80 00 08 */	bge lbl_8052E06C
/* 8052E068  3B E0 E8 00 */	li r31, -6144
lbl_8052E06C:
/* 8052E06C  7F C0 07 35 */	extsh. r0, r30
/* 8052E070  7F C0 07 34 */	extsh r0, r30
/* 8052E074  7C 60 00 D0 */	neg r3, r0
/* 8052E078  41 80 00 08 */	blt lbl_8052E080
/* 8052E07C  7C 03 03 78 */	mr r3, r0
lbl_8052E080:
/* 8052E080  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8052E084  40 81 00 18 */	ble lbl_8052E09C
/* 8052E088  7F C0 07 35 */	extsh. r0, r30
/* 8052E08C  40 80 00 0C */	bge lbl_8052E098
/* 8052E090  3B C0 D0 00 */	li r30, -12288
/* 8052E094  48 00 00 08 */	b lbl_8052E09C
lbl_8052E098:
/* 8052E098  3B C0 30 00 */	li r30, 0x3000
lbl_8052E09C:
/* 8052E09C  A8 BD 08 B8 */	lha r5, 0x8b8(r29)
/* 8052E0A0  38 7D 08 B4 */	addi r3, r29, 0x8b4
/* 8052E0A4  7F E4 07 34 */	extsh r4, r31
/* 8052E0A8  4B E8 CA 9D */	bl chase_angle
/* 8052E0AC  A8 BD 08 BA */	lha r5, 0x8ba(r29)
/* 8052E0B0  38 7D 08 B6 */	addi r3, r29, 0x8b6
/* 8052E0B4  7F C4 07 34 */	extsh r4, r30
/* 8052E0B8  4B E8 CA 8D */	bl chase_angle
/* 8052E0BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E0C0  4B B6 CE 61 */	bl func_8009AF20
/* 8052E0C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052E0C8  7C 08 03 A6 */	mtlr r0
/* 8052E0CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8052E0D0  4E 80 00 20 */	blr 
