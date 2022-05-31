lbl_804EFB5C:
/* 804EFB5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EFB60  7C 08 02 A6 */	mflr r0
/* 804EFB64  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EFB68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804EFB6C  7C 7F 1B 78 */	mr r31, r3
/* 804EFB70  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EFB74  C0 44 00 00 */	lfs f2, 0(r4)
/* 804EFB78  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804EFB7C  C0 64 00 08 */	lfs f3, 8(r4)
/* 804EFB80  EC 42 00 28 */	fsubs f2, f2, f0
/* 804EFB84  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804EFB88  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EFB8C  EC 23 08 28 */	fsubs f1, f3, f1
/* 804EFB90  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804EFB94  40 82 00 0C */	bne lbl_804EFBA0
/* 804EFB98  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804EFB9C  41 82 00 94 */	beq lbl_804EFC30
lbl_804EFBA0:
/* 804EFBA0  4B F1 C4 61 */	bl atans_table
/* 804EFBA4  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804EFBA8  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804EFBAC  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804EFBB0  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804EFBB4  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804EFBB8  C8 86 00 00 */	lfd f4, 0(r6)
/* 804EFBBC  FC 40 28 34 */	frsqrte f2, f5
/* 804EFBC0  C8 65 00 00 */	lfd f3, 0(r5)
/* 804EFBC4  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804EFBC8  38 A0 09 C4 */	li r5, 0x9c4
/* 804EFBCC  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804EFBD0  7C 64 1B 78 */	mr r4, r3
/* 804EFBD4  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EFBD8  38 7F 00 DE */	addi r3, r31, 0xde
/* 804EFBDC  38 C0 00 32 */	li r6, 0x32
/* 804EFBE0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EFBE4  FC 25 00 72 */	fmul f1, f5, f1
/* 804EFBE8  FC 23 08 28 */	fsub f1, f3, f1
/* 804EFBEC  FC 42 00 72 */	fmul f2, f2, f1
/* 804EFBF0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EFBF4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EFBF8  FC 25 00 72 */	fmul f1, f5, f1
/* 804EFBFC  FC 23 08 28 */	fsub f1, f3, f1
/* 804EFC00  FC 42 00 72 */	fmul f2, f2, f1
/* 804EFC04  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EFC08  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EFC0C  FC 25 00 72 */	fmul f1, f5, f1
/* 804EFC10  FC 23 08 28 */	fsub f1, f3, f1
/* 804EFC14  FC 22 00 72 */	fmul f1, f2, f1
/* 804EFC18  FC 25 00 72 */	fmul f1, f5, f1
/* 804EFC1C  FC 20 08 18 */	frsp f1, f1
/* 804EFC20  D0 21 00 08 */	stfs f1, 8(r1)
/* 804EFC24  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EFC28  EC 20 08 28 */	fsubs f1, f0, f1
/* 804EFC2C  4B EC B6 E5 */	bl add_calc_short_angle2
lbl_804EFC30:
/* 804EFC30  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804EFC34  7F E3 FB 78 */	mr r3, r31
/* 804EFC38  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804EFC3C  4B FE 5D 01 */	bl Player_actor_Movement_Base_Braking_common
/* 804EFC40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EFC44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804EFC48  7C 08 03 A6 */	mtlr r0
/* 804EFC4C  38 21 00 20 */	addi r1, r1, 0x20
/* 804EFC50  4E 80 00 20 */	blr 
