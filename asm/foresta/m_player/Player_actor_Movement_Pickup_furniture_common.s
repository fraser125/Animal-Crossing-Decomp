lbl_804EE3E8:
/* 804EE3E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EE3EC  7C 08 02 A6 */	mflr r0
/* 804EE3F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EE3F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804EE3F8  7C 7F 1B 78 */	mr r31, r3
/* 804EE3FC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EE400  C0 44 00 00 */	lfs f2, 0(r4)
/* 804EE404  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804EE408  C0 64 00 08 */	lfs f3, 8(r4)
/* 804EE40C  EC 42 00 28 */	fsubs f2, f2, f0
/* 804EE410  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804EE414  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EE418  EC 23 08 28 */	fsubs f1, f3, f1
/* 804EE41C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804EE420  40 82 00 0C */	bne lbl_804EE42C
/* 804EE424  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804EE428  41 82 00 94 */	beq lbl_804EE4BC
lbl_804EE42C:
/* 804EE42C  4B F1 DB D5 */	bl atans_table
/* 804EE430  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804EE434  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804EE438  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804EE43C  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804EE440  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804EE444  C8 86 00 00 */	lfd f4, 0(r6)
/* 804EE448  FC 40 28 34 */	frsqrte f2, f5
/* 804EE44C  C8 65 00 00 */	lfd f3, 0(r5)
/* 804EE450  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804EE454  38 A0 09 C4 */	li r5, 0x9c4
/* 804EE458  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804EE45C  7C 64 1B 78 */	mr r4, r3
/* 804EE460  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EE464  38 7F 00 DE */	addi r3, r31, 0xde
/* 804EE468  38 C0 00 32 */	li r6, 0x32
/* 804EE46C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EE470  FC 25 00 72 */	fmul f1, f5, f1
/* 804EE474  FC 23 08 28 */	fsub f1, f3, f1
/* 804EE478  FC 42 00 72 */	fmul f2, f2, f1
/* 804EE47C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EE480  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EE484  FC 25 00 72 */	fmul f1, f5, f1
/* 804EE488  FC 23 08 28 */	fsub f1, f3, f1
/* 804EE48C  FC 42 00 72 */	fmul f2, f2, f1
/* 804EE490  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EE494  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EE498  FC 25 00 72 */	fmul f1, f5, f1
/* 804EE49C  FC 23 08 28 */	fsub f1, f3, f1
/* 804EE4A0  FC 22 00 72 */	fmul f1, f2, f1
/* 804EE4A4  FC 25 00 72 */	fmul f1, f5, f1
/* 804EE4A8  FC 20 08 18 */	frsp f1, f1
/* 804EE4AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804EE4B0  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EE4B4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804EE4B8  4B EC CE 59 */	bl add_calc_short_angle2
lbl_804EE4BC:
/* 804EE4BC  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804EE4C0  7F E3 FB 78 */	mr r3, r31
/* 804EE4C4  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804EE4C8  4B FE 74 75 */	bl Player_actor_Movement_Base_Braking_common
/* 804EE4CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EE4D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804EE4D4  7C 08 03 A6 */	mtlr r0
/* 804EE4D8  38 21 00 20 */	addi r1, r1, 0x20
/* 804EE4DC  4E 80 00 20 */	blr 
