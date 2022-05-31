lbl_80559DD8:
/* 80559DD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80559DDC  7C 08 02 A6 */	mflr r0
/* 80559DE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80559DE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80559DE8  4B B4 10 E9 */	bl func_8009AED0
/* 80559DEC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80559DF0  3C C0 80 6A */	lis r6, data_806A6C60@ha /* 0x806A6C60@ha */
/* 80559DF4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80559DF8  7C 7E 1B 78 */	mr r30, r3
/* 80559DFC  3C A5 00 02 */	addis r5, r5, 2
/* 80559E00  3B E6 6C 60 */	addi r31, r6, data_806A6C60@l /* 0x806A6C60@l */
/* 80559E04  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 80559E08  7C 9D 23 78 */	mr r29, r4
/* 80559E0C  38 BF 00 24 */	addi r5, r31, 0x24
/* 80559E10  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80559E14  7D 89 03 A6 */	mtctr r12
/* 80559E18  4E 80 04 21 */	bctrl 
/* 80559E1C  3C 80 80 65 */	lis r4, data_806496AC@ha /* 0x806496AC@ha */
/* 80559E20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80559E24  C0 04 96 AC */	lfs f0, data_806496AC@l(r4)  /* 0x806496AC@l */
/* 80559E28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80559E2C  38 E0 00 00 */	li r7, 0
/* 80559E30  38 C0 FF FF */	li r6, -1
/* 80559E34  D0 1E 01 C8 */	stfs f0, 0x1c8(r30)
/* 80559E38  38 A0 00 01 */	li r5, 1
/* 80559E3C  38 80 80 00 */	li r4, -32768
/* 80559E40  38 00 00 14 */	li r0, 0x14
/* 80559E44  B0 FE 09 B4 */	sth r7, 0x9b4(r30)
/* 80559E48  3C 63 00 03 */	addis r3, r3, 3
/* 80559E4C  3B 80 00 00 */	li r28, 0
/* 80559E50  98 FE 08 30 */	stb r7, 0x830(r30)
/* 80559E54  90 DE 09 C0 */	stw r6, 0x9c0(r30)
/* 80559E58  98 BE 01 08 */	stb r5, 0x108(r30)
/* 80559E5C  B0 9E 00 DE */	sth r4, 0xde(r30)
/* 80559E60  B0 9E 00 36 */	sth r4, 0x36(r30)
/* 80559E64  B0 1E 09 46 */	sth r0, 0x946(r30)
/* 80559E68  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 80559E6C  2C 00 00 01 */	cmpwi r0, 1
/* 80559E70  40 82 00 20 */	bne lbl_80559E90
/* 80559E74  4B E9 04 59 */	bl mSP_WhatSpecialSale
/* 80559E78  2C 03 00 00 */	cmpwi r3, 0
/* 80559E7C  41 80 00 14 */	blt lbl_80559E90
/* 80559E80  2C 03 00 04 */	cmpwi r3, 4
/* 80559E84  41 81 00 0C */	bgt lbl_80559E90
/* 80559E88  38 9F 00 48 */	addi r4, r31, 0x48
/* 80559E8C  7F 84 18 AE */	lbzx r28, r4, r3
lbl_80559E90:
/* 80559E90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80559E94  9B 9E 09 A5 */	stb r28, 0x9a5(r30)
/* 80559E98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80559E9C  3C 63 00 03 */	addis r3, r3, 3
/* 80559EA0  A0 03 85 3E */	lhz r0, -0x7ac2(r3)
/* 80559EA4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80559EA8  40 82 00 14 */	bne lbl_80559EBC
/* 80559EAC  38 00 00 00 */	li r0, 0
/* 80559EB0  38 A0 00 3D */	li r5, 0x3d
/* 80559EB4  B0 1E 09 78 */	sth r0, 0x978(r30)
/* 80559EB8  48 00 00 2C */	b lbl_80559EE4
lbl_80559EBC:
/* 80559EBC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D026@ha */
/* 80559EC0  A0 9E 00 06 */	lhz r4, 6(r30)
/* 80559EC4  38 03 D0 26 */	addi r0, r3, 0xD026 /* 0x0000D026@l */
/* 80559EC8  38 7F 00 40 */	addi r3, r31, 0x40
/* 80559ECC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80559ED0  7C 84 00 50 */	subf r4, r4, r0
/* 80559ED4  30 04 FF FF */	addic r0, r4, -1
/* 80559ED8  7C 00 21 10 */	subfe r0, r0, r4
/* 80559EDC  54 00 10 3A */	slwi r0, r0, 2
/* 80559EE0  7C A3 00 2E */	lwzx r5, r3, r0
lbl_80559EE4:
/* 80559EE4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D037@ha */
/* 80559EE8  3C 60 81 1F */	lis r3, aNMD_actor_p@ha /* 0x811EC20C@ha */
/* 80559EEC  38 04 D0 37 */	addi r0, r4, 0xD037 /* 0x0000D037@l */
/* 80559EF0  A0 9E 00 06 */	lhz r4, 6(r30)
/* 80559EF4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80559EF8  38 C3 C2 0C */	addi r6, r3, aNMD_actor_p@l /* 0x811EC20C@l */
/* 80559EFC  7C 04 00 50 */	subf r0, r4, r0
/* 80559F00  7F C3 F3 78 */	mr r3, r30
/* 80559F04  7C 00 00 34 */	cntlzw r0, r0
/* 80559F08  7F A4 EB 78 */	mr r4, r29
/* 80559F0C  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 80559F10  7F C6 01 2E */	stwx r30, r6, r0
/* 80559F14  48 00 4E BD */	bl aNSC_setupAction
/* 80559F18  3C 60 81 1F */	lis r3, data_811EC208@ha /* 0x811EC208@ha */
/* 80559F1C  38 00 00 00 */	li r0, 0
/* 80559F20  90 03 C2 08 */	stw r0, data_811EC208@l(r3)  /* 0x811EC208@l */
/* 80559F24  39 61 00 20 */	addi r11, r1, 0x20
/* 80559F28  4B B4 0F F5 */	bl func_8009AF1C
/* 80559F2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80559F30  7C 08 03 A6 */	mtlr r0
/* 80559F34  38 21 00 20 */	addi r1, r1, 0x20
/* 80559F38  4E 80 00 20 */	blr 
