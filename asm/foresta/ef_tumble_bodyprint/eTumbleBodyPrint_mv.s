lbl_806230AC:
/* 806230AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806230B0  7C 08 02 A6 */	mflr r0
/* 806230B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806230B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806230BC  7C 7F 1B 78 */	mr r31, r3
/* 806230C0  38 61 00 08 */	addi r3, r1, 8
/* 806230C4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 806230C8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 806230CC  90 81 00 08 */	stw r4, 8(r1)
/* 806230D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806230D4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 806230D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806230DC  4B D8 43 55 */	bl mFI_GetUnitFG
/* 806230E0  3C 80 80 65 */	lis r4, lit_429@ha /* 0x8064CE78@ha */
/* 806230E4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806230E8  C0 04 CE 78 */	lfs f0, lit_429@l(r4)  /* 0x8064CE78@l */
/* 806230EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806230F0  40 80 00 1C */	bge lbl_8062310C
/* 806230F4  3C 80 80 65 */	lis r4, lit_430@ha /* 0x8064CE7C@ha */
/* 806230F8  C0 04 CE 7C */	lfs f0, lit_430@l(r4)  /* 0x8064CE7C@l */
/* 806230FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80623100  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80623104  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80623108  D0 1F 00 3C */	stfs f0, 0x3c(r31)
lbl_8062310C:
/* 8062310C  A8 1F 00 54 */	lha r0, 0x54(r31)
/* 80623110  2C 00 00 01 */	cmpwi r0, 1
/* 80623114  41 82 00 30 */	beq lbl_80623144
/* 80623118  28 03 00 00 */	cmplwi r3, 0
/* 8062311C  41 82 00 28 */	beq lbl_80623144
/* 80623120  A0 03 00 00 */	lhz r0, 0(r3)
/* 80623124  28 00 00 11 */	cmplwi r0, 0x11
/* 80623128  41 80 00 0C */	blt lbl_80623134
/* 8062312C  28 00 00 29 */	cmplwi r0, 0x29
/* 80623130  40 81 00 0C */	ble lbl_8062313C
lbl_80623134:
/* 80623134  28 00 00 5D */	cmplwi r0, 0x5d
/* 80623138  40 82 00 0C */	bne lbl_80623144
lbl_8062313C:
/* 8062313C  38 00 00 01 */	li r0, 1
/* 80623140  B0 1F 00 54 */	sth r0, 0x54(r31)
lbl_80623144:
/* 80623144  A8 1F 00 54 */	lha r0, 0x54(r31)
/* 80623148  2C 00 00 01 */	cmpwi r0, 1
/* 8062314C  40 82 00 18 */	bne lbl_80623164
/* 80623150  A8 7F 00 00 */	lha r3, 0(r31)
/* 80623154  2C 03 00 46 */	cmpwi r3, 0x46
/* 80623158  41 80 00 0C */	blt lbl_80623164
/* 8062315C  38 03 FF BA */	addi r0, r3, -70
/* 80623160  B0 1F 00 00 */	sth r0, 0(r31)
lbl_80623164:
/* 80623164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80623168  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062316C  7C 08 03 A6 */	mtlr r0
/* 80623170  38 21 00 20 */	addi r1, r1, 0x20
/* 80623174  4E 80 00 20 */	blr 
