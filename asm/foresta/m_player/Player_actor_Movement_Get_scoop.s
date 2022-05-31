lbl_804FA118:
/* 804FA118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FA11C  7C 08 02 A6 */	mflr r0
/* 804FA120  3C A0 80 65 */	lis r5, lit_13279@ha /* 0x80648558@ha */
/* 804FA124  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FA128  C0 05 85 58 */	lfs f0, lit_13279@l(r5)  /* 0x80648558@l */
/* 804FA12C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FA130  7C 7F 1B 78 */	mr r31, r3
/* 804FA134  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 804FA138  C0 23 0D 30 */	lfs f1, 0xd30(r3)
/* 804FA13C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FA140  40 80 00 0C */	bge lbl_804FA14C
/* 804FA144  4B FF 5A 19 */	bl Player_actor_Movement_axe_common
/* 804FA148  48 00 00 8C */	b lbl_804FA1D4
lbl_804FA14C:
/* 804FA14C  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804FA150  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804FA154  38 A3 69 F4 */	addi r5, r3, lit_1027@l /* 0x806469F4@l */
/* 804FA158  C8 64 69 FC */	lfd f3, lit_1028@l(r4)  /* 0x806469FC@l */
/* 804FA15C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804FA160  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FA164  C8 85 00 00 */	lfd f4, 0(r5)
/* 804FA168  38 80 00 00 */	li r4, 0
/* 804FA16C  FC 40 28 34 */	frsqrte f2, f5
/* 804FA170  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FA174  38 7F 00 DE */	addi r3, r31, 0xde
/* 804FA178  38 A0 09 C4 */	li r5, 0x9c4
/* 804FA17C  38 C0 00 32 */	li r6, 0x32
/* 804FA180  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FA184  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FA188  FC 25 00 72 */	fmul f1, f5, f1
/* 804FA18C  FC 23 08 28 */	fsub f1, f3, f1
/* 804FA190  FC 42 00 72 */	fmul f2, f2, f1
/* 804FA194  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FA198  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FA19C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FA1A0  FC 23 08 28 */	fsub f1, f3, f1
/* 804FA1A4  FC 42 00 72 */	fmul f2, f2, f1
/* 804FA1A8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FA1AC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FA1B0  FC 25 00 72 */	fmul f1, f5, f1
/* 804FA1B4  FC 23 08 28 */	fsub f1, f3, f1
/* 804FA1B8  FC 22 00 72 */	fmul f1, f2, f1
/* 804FA1BC  FC 25 00 72 */	fmul f1, f5, f1
/* 804FA1C0  FC 20 08 18 */	frsp f1, f1
/* 804FA1C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FA1C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FA1CC  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FA1D0  4B EC 11 41 */	bl add_calc_short_angle2
lbl_804FA1D4:
/* 804FA1D4  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804FA1D8  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804FA1DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FA1E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FA1E4  7C 08 03 A6 */	mtlr r0
/* 804FA1E8  38 21 00 20 */	addi r1, r1, 0x20
/* 804FA1EC  4E 80 00 20 */	blr 
