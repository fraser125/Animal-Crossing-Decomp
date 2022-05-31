lbl_805B4ED4:
/* 805B4ED4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B4ED8  7C 08 02 A6 */	mflr r0
/* 805B4EDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B4EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 805B4EE4  4B AE 5F ED */	bl func_8009AED0
/* 805B4EE8  7C 7C 1B 78 */	mr r28, r3
/* 805B4EEC  3C 60 80 6C */	lis r3, data_806C5CC0@ha /* 0x806C5CC0@ha */
/* 805B4EF0  C0 1C 02 D0 */	lfs f0, 0x2d0(r28)
/* 805B4EF4  3B E3 5C C0 */	addi r31, r3, data_806C5CC0@l /* 0x806C5CC0@l */
/* 805B4EF8  FC 00 00 1E */	fctiwz f0, f0
/* 805B4EFC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805B4F00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805B4F04  2C 00 00 03 */	cmpwi r0, 3
/* 805B4F08  41 82 00 14 */	beq lbl_805B4F1C
/* 805B4F0C  40 80 00 18 */	bge lbl_805B4F24
/* 805B4F10  2C 00 00 00 */	cmpwi r0, 0
/* 805B4F14  41 82 00 08 */	beq lbl_805B4F1C
/* 805B4F18  48 00 00 0C */	b lbl_805B4F24
lbl_805B4F1C:
/* 805B4F1C  3B DF 01 38 */	addi r30, r31, 0x138
/* 805B4F20  48 00 00 08 */	b lbl_805B4F28
lbl_805B4F24:
/* 805B4F24  3B DF 01 48 */	addi r30, r31, 0x148
lbl_805B4F28:
/* 805B4F28  3B A0 00 00 */	li r29, 0
lbl_805B4F2C:
/* 805B4F2C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B4F30  38 7C 01 78 */	addi r3, r28, 0x178
/* 805B4F34  4B DB B5 55 */	bl cKF_FrameControl_passCheck_now
/* 805B4F38  2C 03 00 00 */	cmpwi r3, 0
/* 805B4F3C  41 82 00 1C */	beq lbl_805B4F58
/* 805B4F40  57 A0 08 3C */	slwi r0, r29, 1
/* 805B4F44  38 7F 01 58 */	addi r3, r31, 0x158
/* 805B4F48  7C 83 02 2E */	lhzx r4, r3, r0
/* 805B4F4C  7F 83 E3 78 */	mr r3, r28
/* 805B4F50  4B FF FF 59 */	bl func_805B4EA8
/* 805B4F54  48 00 00 14 */	b lbl_805B4F68
lbl_805B4F58:
/* 805B4F58  3B BD 00 01 */	addi r29, r29, 1
/* 805B4F5C  3B DE 00 04 */	addi r30, r30, 4
/* 805B4F60  2C 1D 00 04 */	cmpwi r29, 4
/* 805B4F64  41 80 FF C8 */	blt lbl_805B4F2C
lbl_805B4F68:
/* 805B4F68  39 61 00 20 */	addi r11, r1, 0x20
/* 805B4F6C  4B AE 5F B1 */	bl func_8009AF1C
/* 805B4F70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B4F74  7C 08 03 A6 */	mtlr r0
/* 805B4F78  38 21 00 20 */	addi r1, r1, 0x20
/* 805B4F7C  4E 80 00 20 */	blr 
