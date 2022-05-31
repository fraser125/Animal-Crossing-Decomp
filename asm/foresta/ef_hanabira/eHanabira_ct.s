lbl_8060FF04:
/* 8060FF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060FF08  7C 08 02 A6 */	mflr r0
/* 8060FF0C  38 A0 00 03 */	li r5, 3
/* 8060FF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060FF14  38 00 00 3C */	li r0, 0x3c
/* 8060FF18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060FF1C  7C 7F 1B 78 */	mr r31, r3
/* 8060FF20  A8 63 00 06 */	lha r3, 6(r3)
/* 8060FF24  7C 63 2B D6 */	divw r3, r3, r5
/* 8060FF28  B0 7F 00 4C */	sth r3, 0x4c(r31)
/* 8060FF2C  A8 9F 00 06 */	lha r4, 6(r31)
/* 8060FF30  7C 64 2B D6 */	divw r3, r4, r5
/* 8060FF34  7C 63 29 D6 */	mullw r3, r3, r5
/* 8060FF38  7C 63 20 50 */	subf r3, r3, r4
/* 8060FF3C  B0 7F 00 4E */	sth r3, 0x4e(r31)
/* 8060FF40  B0 1F 00 00 */	sth r0, 0(r31)
/* 8060FF44  4B A4 CD B1 */	bl fqrand
/* 8060FF48  3C 80 80 65 */	lis r4, lit_390@ha /* 0x8064C2E0@ha */
/* 8060FF4C  3C 60 80 65 */	lis r3, data_8064C2DC@ha /* 0x8064C2DC@ha */
/* 8060FF50  C0 44 C2 E0 */	lfs f2, lit_390@l(r4)  /* 0x8064C2E0@l */
/* 8060FF54  A8 1F 00 08 */	lha r0, 8(r31)
/* 8060FF58  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060FF5C  C0 03 C2 DC */	lfs f0, data_8064C2DC@l(r3)  /* 0x8064C2DC@l */
/* 8060FF60  2C 00 00 02 */	cmpwi r0, 2
/* 8060FF64  EC 20 08 2A */	fadds f1, f0, f1
/* 8060FF68  41 82 00 14 */	beq lbl_8060FF7C
/* 8060FF6C  2C 00 00 03 */	cmpwi r0, 3
/* 8060FF70  41 82 00 0C */	beq lbl_8060FF7C
/* 8060FF74  2C 00 00 01 */	cmpwi r0, 1
/* 8060FF78  40 82 00 10 */	bne lbl_8060FF88
lbl_8060FF7C:
/* 8060FF7C  3C 60 80 65 */	lis r3, lit_391@ha /* 0x8064C2E4@ha */
/* 8060FF80  C0 03 C2 E4 */	lfs f0, lit_391@l(r3)  /* 0x8064C2E4@l */
/* 8060FF84  EC 21 00 32 */	fmuls f1, f1, f0
lbl_8060FF88:
/* 8060FF88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060FF8C  3C 80 80 65 */	lis r4, lit_392@ha /* 0x8064C2E8@ha */
/* 8060FF90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060FF94  3C 63 00 02 */	addis r3, r3, 2
/* 8060FF98  38 A4 C2 E8 */	addi r5, r4, lit_392@l /* 0x8064C2E8@l */
/* 8060FF9C  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 8060FFA0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8060FFA4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8060FFA8  81 84 00 0C */	lwz r12, 0xc(r4)
/* 8060FFAC  FC 60 10 90 */	fmr f3, f2
/* 8060FFB0  7D 89 03 A6 */	mtctr r12
/* 8060FFB4  4E 80 04 21 */	bctrl 
/* 8060FFB8  3C 60 80 65 */	lis r3, lit_393@ha /* 0x8064C2EC@ha */
/* 8060FFBC  3C 80 80 65 */	lis r4, lit_394@ha /* 0x8064C2F0@ha */
/* 8060FFC0  38 A3 C2 EC */	addi r5, r3, lit_393@l /* 0x8064C2EC@l */
/* 8060FFC4  C0 24 C2 F0 */	lfs f1, lit_394@l(r4)  /* 0x8064C2F0@l */
/* 8060FFC8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8060FFCC  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 8060FFD0  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 8060FFD4  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 8060FFD8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8060FFDC  FC 00 00 50 */	fneg f0, f0
/* 8060FFE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8060FFE4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8060FFE8  D0 5F 00 30 */	stfs f2, 0x30(r31)
/* 8060FFEC  80 64 00 00 */	lwz r3, 0(r4)
/* 8060FFF0  80 04 00 04 */	lwz r0, 4(r4)
/* 8060FFF4  90 7F 00 40 */	stw r3, 0x40(r31)
/* 8060FFF8  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8060FFFC  80 04 00 08 */	lwz r0, 8(r4)
/* 80610000  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80610004  4B A4 CC C9 */	bl func_8005CCCC
/* 80610008  B0 7F 00 54 */	sth r3, 0x54(r31)
/* 8061000C  4B A4 CC C1 */	bl func_8005CCCC
/* 80610010  B0 7F 00 50 */	sth r3, 0x50(r31)
/* 80610014  4B A4 CC B9 */	bl func_8005CCCC
/* 80610018  3C 80 80 65 */	lis r4, lit_395@ha /* 0x8064C2F4@ha */
/* 8061001C  B0 7F 00 52 */	sth r3, 0x52(r31)
/* 80610020  C0 04 C2 F4 */	lfs f0, lit_395@l(r4)  /* 0x8064C2F4@l */
/* 80610024  38 00 00 00 */	li r0, 0
/* 80610028  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8061002C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80610030  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80610034  B0 1F 00 56 */	sth r0, 0x56(r31)
/* 80610038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061003C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80610040  7C 08 03 A6 */	mtlr r0
/* 80610044  38 21 00 10 */	addi r1, r1, 0x10
/* 80610048  4E 80 00 20 */	blr 
