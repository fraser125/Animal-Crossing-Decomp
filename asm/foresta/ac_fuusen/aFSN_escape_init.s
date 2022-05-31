lbl_8050EA04:
/* 8050EA04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050EA08  7C 08 02 A6 */	mflr r0
/* 8050EA0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050EA10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050EA14  7C 7F 1B 78 */	mr r31, r3
/* 8050EA18  7C 83 23 78 */	mr r3, r4
/* 8050EA1C  4B EC AC 25 */	bl get_player_actor_withoutCheck
/* 8050EA20  3C 80 80 65 */	lis r4, lit_775@ha /* 0x80648F90@ha */
/* 8050EA24  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 8050EA28  38 A4 8F 90 */	addi r5, r4, lit_775@l /* 0x80648F90@l */
/* 8050EA2C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8050EA30  C0 63 00 30 */	lfs f3, 0x30(r3)
/* 8050EA34  38 00 00 00 */	li r0, 0
/* 8050EA38  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8050EA3C  3C 80 80 65 */	lis r4, lit_599@ha /* 0x80648F2C@ha */
/* 8050EA40  EC 84 00 28 */	fsubs f4, f4, f0
/* 8050EA44  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050EA48  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 8050EA4C  EC 63 10 28 */	fsubs f3, f3, f2
/* 8050EA50  C0 04 8F 2C */	lfs f0, lit_599@l(r4)  /* 0x80648F2C@l */
/* 8050EA54  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 8050EA58  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8050EA5C  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8050EA60  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 8050EA64  2C 00 06 12 */	cmpwi r0, 0x612
/* 8050EA68  40 82 00 A4 */	bne lbl_8050EB0C
/* 8050EA6C  EC 44 01 32 */	fmuls f2, f4, f4
/* 8050EA70  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050EA74  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8050EA78  38 00 00 01 */	li r0, 1
/* 8050EA7C  C0 03 8E FC */	lfs f0, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050EA80  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 8050EA84  EC 82 08 2A */	fadds f4, f2, f1
/* 8050EA88  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8050EA8C  40 81 00 68 */	ble lbl_8050EAF4
/* 8050EA90  FC 20 20 34 */	frsqrte f1, f4
/* 8050EA94  3C 60 80 65 */	lis r3, lit_601@ha /* 0x80648F3C@ha */
/* 8050EA98  38 83 8F 3C */	addi r4, r3, lit_601@l /* 0x80648F3C@l */
/* 8050EA9C  3C 60 80 65 */	lis r3, lit_602@ha /* 0x80648F44@ha */
/* 8050EAA0  C8 64 00 00 */	lfd f3, 0(r4)
/* 8050EAA4  FC 01 00 72 */	fmul f0, f1, f1
/* 8050EAA8  C8 43 8F 44 */	lfd f2, lit_602@l(r3)  /* 0x80648F44@l */
/* 8050EAAC  FC 23 00 72 */	fmul f1, f3, f1
/* 8050EAB0  FC 04 00 32 */	fmul f0, f4, f0
/* 8050EAB4  FC 02 00 28 */	fsub f0, f2, f0
/* 8050EAB8  FC 21 00 32 */	fmul f1, f1, f0
/* 8050EABC  FC 01 00 72 */	fmul f0, f1, f1
/* 8050EAC0  FC 23 00 72 */	fmul f1, f3, f1
/* 8050EAC4  FC 04 00 32 */	fmul f0, f4, f0
/* 8050EAC8  FC 02 00 28 */	fsub f0, f2, f0
/* 8050EACC  FC 21 00 32 */	fmul f1, f1, f0
/* 8050EAD0  FC 01 00 72 */	fmul f0, f1, f1
/* 8050EAD4  FC 23 00 72 */	fmul f1, f3, f1
/* 8050EAD8  FC 04 00 32 */	fmul f0, f4, f0
/* 8050EADC  FC 02 00 28 */	fsub f0, f2, f0
/* 8050EAE0  FC 01 00 32 */	fmul f0, f1, f0
/* 8050EAE4  FC 04 00 32 */	fmul f0, f4, f0
/* 8050EAE8  FC 00 00 18 */	frsp f0, f0
/* 8050EAEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8050EAF0  C0 81 00 08 */	lfs f4, 8(r1)
lbl_8050EAF4:
/* 8050EAF4  3C 60 80 65 */	lis r3, lit_776@ha /* 0x80648F94@ha */
/* 8050EAF8  C0 03 8F 94 */	lfs f0, lit_776@l(r3)  /* 0x80648F94@l */
/* 8050EAFC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8050EB00  40 80 00 0C */	bge lbl_8050EB0C
/* 8050EB04  38 00 00 01 */	li r0, 1
/* 8050EB08  90 1F 01 90 */	stw r0, 0x190(r31)
lbl_8050EB0C:
/* 8050EB0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050EB10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050EB14  7C 08 03 A6 */	mtlr r0
/* 8050EB18  38 21 00 20 */	addi r1, r1, 0x20
/* 8050EB1C  4E 80 00 20 */	blr 
