lbl_804FCF08:
/* 804FCF08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FCF0C  7C 08 02 A6 */	mflr r0
/* 804FCF10  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FCF14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FCF18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FCF1C  7C 7E 1B 78 */	mr r30, r3
/* 804FCF20  4B FD B1 75 */	bl Player_actor_Get_DemoChangeAngleY
/* 804FCF24  2C 03 00 00 */	cmpwi r3, 0
/* 804FCF28  41 82 00 B8 */	beq lbl_804FCFE0
/* 804FCF2C  4B FD B1 C1 */	bl Player_actor_Get_DemoAngleY
/* 804FCF30  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804FCF34  7C 7F 1B 78 */	mr r31, r3
/* 804FCF38  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804FCF3C  38 7E 00 36 */	addi r3, r30, 0x36
/* 804FCF40  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804FCF44  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804FCF48  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804FCF4C  C8 86 00 00 */	lfd f4, 0(r6)
/* 804FCF50  FC 40 28 34 */	frsqrte f2, f5
/* 804FCF54  C8 65 00 00 */	lfd f3, 0(r5)
/* 804FCF58  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FCF5C  38 A0 09 C4 */	li r5, 0x9c4
/* 804FCF60  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804FCF64  7F E4 FB 78 */	mr r4, r31
/* 804FCF68  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FCF6C  38 C0 00 32 */	li r6, 0x32
/* 804FCF70  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FCF74  FC 25 00 72 */	fmul f1, f5, f1
/* 804FCF78  FC 23 08 28 */	fsub f1, f3, f1
/* 804FCF7C  FC 42 00 72 */	fmul f2, f2, f1
/* 804FCF80  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FCF84  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FCF88  FC 25 00 72 */	fmul f1, f5, f1
/* 804FCF8C  FC 23 08 28 */	fsub f1, f3, f1
/* 804FCF90  FC 42 00 72 */	fmul f2, f2, f1
/* 804FCF94  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FCF98  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FCF9C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FCFA0  FC 23 08 28 */	fsub f1, f3, f1
/* 804FCFA4  FC 22 00 72 */	fmul f1, f2, f1
/* 804FCFA8  FC 25 00 72 */	fmul f1, f5, f1
/* 804FCFAC  FC 20 08 18 */	frsp f1, f1
/* 804FCFB0  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FCFB4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FCFB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FCFBC  4B EB E3 55 */	bl add_calc_short_angle2
/* 804FCFC0  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 804FCFC4  7F E3 07 34 */	extsh r3, r31
/* 804FCFC8  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 804FCFCC  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 804FCFD0  7C 03 00 00 */	cmpw r3, r0
/* 804FCFD4  40 82 00 0C */	bne lbl_804FCFE0
/* 804FCFD8  38 60 00 00 */	li r3, 0
/* 804FCFDC  4B FD B0 E5 */	bl Player_actor_Set_DemoChangeAngleY
lbl_804FCFE0:
/* 804FCFE0  7F C3 F3 78 */	mr r3, r30
/* 804FCFE4  38 80 00 00 */	li r4, 0
/* 804FCFE8  4B FD 8A D5 */	bl Player_actor_Movement_Base_Stop
/* 804FCFEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FCFF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FCFF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FCFF8  7C 08 03 A6 */	mtlr r0
/* 804FCFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 804FD000  4E 80 00 20 */	blr 
