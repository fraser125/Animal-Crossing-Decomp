lbl_804EDC04:
/* 804EDC04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EDC08  7C 08 02 A6 */	mflr r0
/* 804EDC0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EDC10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804EDC14  7C 7F 1B 78 */	mr r31, r3
/* 804EDC18  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EDC1C  C0 44 00 00 */	lfs f2, 0(r4)
/* 804EDC20  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804EDC24  C0 64 00 08 */	lfs f3, 8(r4)
/* 804EDC28  EC 42 00 28 */	fsubs f2, f2, f0
/* 804EDC2C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804EDC30  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EDC34  EC 23 08 28 */	fsubs f1, f3, f1
/* 804EDC38  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804EDC3C  40 82 00 0C */	bne lbl_804EDC48
/* 804EDC40  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804EDC44  41 82 00 94 */	beq lbl_804EDCD8
lbl_804EDC48:
/* 804EDC48  4B F1 E3 B9 */	bl atans_table
/* 804EDC4C  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804EDC50  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804EDC54  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804EDC58  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804EDC5C  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804EDC60  C8 86 00 00 */	lfd f4, 0(r6)
/* 804EDC64  FC 40 28 34 */	frsqrte f2, f5
/* 804EDC68  C8 65 00 00 */	lfd f3, 0(r5)
/* 804EDC6C  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804EDC70  38 A0 09 C4 */	li r5, 0x9c4
/* 804EDC74  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804EDC78  7C 64 1B 78 */	mr r4, r3
/* 804EDC7C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EDC80  38 7F 00 DE */	addi r3, r31, 0xde
/* 804EDC84  38 C0 00 32 */	li r6, 0x32
/* 804EDC88  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EDC8C  FC 25 00 72 */	fmul f1, f5, f1
/* 804EDC90  FC 23 08 28 */	fsub f1, f3, f1
/* 804EDC94  FC 42 00 72 */	fmul f2, f2, f1
/* 804EDC98  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EDC9C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EDCA0  FC 25 00 72 */	fmul f1, f5, f1
/* 804EDCA4  FC 23 08 28 */	fsub f1, f3, f1
/* 804EDCA8  FC 42 00 72 */	fmul f2, f2, f1
/* 804EDCAC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EDCB0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EDCB4  FC 25 00 72 */	fmul f1, f5, f1
/* 804EDCB8  FC 23 08 28 */	fsub f1, f3, f1
/* 804EDCBC  FC 22 00 72 */	fmul f1, f2, f1
/* 804EDCC0  FC 25 00 72 */	fmul f1, f5, f1
/* 804EDCC4  FC 20 08 18 */	frsp f1, f1
/* 804EDCC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804EDCCC  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EDCD0  EC 20 08 28 */	fsubs f1, f0, f1
/* 804EDCD4  4B EC D6 3D */	bl add_calc_short_angle2
lbl_804EDCD8:
/* 804EDCD8  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804EDCDC  7F E3 FB 78 */	mr r3, r31
/* 804EDCE0  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804EDCE4  4B FE 7C 59 */	bl Player_actor_Movement_Base_Braking_common
/* 804EDCE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EDCEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804EDCF0  7C 08 03 A6 */	mtlr r0
/* 804EDCF4  38 21 00 20 */	addi r1, r1, 0x20
/* 804EDCF8  4E 80 00 20 */	blr 
