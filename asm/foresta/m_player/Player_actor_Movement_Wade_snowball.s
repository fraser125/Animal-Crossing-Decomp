lbl_804E93E8:
/* 804E93E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E93EC  7C 08 02 A6 */	mflr r0
/* 804E93F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E93F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804E93F8  4B BB 1A DD */	bl func_8009AED4
/* 804E93FC  7C 7D 1B 78 */	mr r29, r3
/* 804E9400  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 804E9404  3C A0 80 64 */	lis r5, lit_1076@ha /* 0x80646A18@ha */
/* 804E9408  3C 80 80 65 */	lis r4, lit_8464@ha /* 0x80648498@ha */
/* 804E940C  3C 60 80 65 */	lis r3, lit_8465@ha /* 0x8064849C@ha */
/* 804E9410  C0 3D 0D 34 */	lfs f1, 0xd34(r29)
/* 804E9414  C0 46 65 68 */	lfs f2, lit_604@l(r6)  /* 0x80646568@l */
/* 804E9418  3B FD 0D 1C */	addi r31, r29, 0xd1c
/* 804E941C  C0 65 6A 18 */	lfs f3, lit_1076@l(r5)  /* 0x80646A18@l */
/* 804E9420  3B DD 0D 28 */	addi r30, r29, 0xd28
/* 804E9424  C0 84 84 98 */	lfs f4, lit_8464@l(r4)  /* 0x80648498@l */
/* 804E9428  C0 A3 84 9C */	lfs f5, lit_8465@l(r3)  /* 0x8064849C@l */
/* 804E942C  4B ED 21 D1 */	bl get_percent_forAccelBrake
/* 804E9430  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804E9434  7F A3 EB 78 */	mr r3, r29
/* 804E9438  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804E943C  38 80 00 00 */	li r4, 0
/* 804E9440  EC 00 10 28 */	fsubs f0, f0, f2
/* 804E9444  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E9448  EC 02 00 2A */	fadds f0, f2, f0
/* 804E944C  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 804E9450  C0 5F 00 04 */	lfs f2, 4(r31)
/* 804E9454  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804E9458  EC 00 10 28 */	fsubs f0, f0, f2
/* 804E945C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E9460  EC 02 00 2A */	fadds f0, f2, f0
/* 804E9464  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 804E9468  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E946C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804E9470  EC 00 10 28 */	fsubs f0, f0, f2
/* 804E9474  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E9478  EC 02 00 2A */	fadds f0, f2, f0
/* 804E947C  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 804E9480  4B FE C6 3D */	bl Player_actor_Movement_Base_Stop
/* 804E9484  39 61 00 20 */	addi r11, r1, 0x20
/* 804E9488  4B BB 1A 99 */	bl func_8009AF20
/* 804E948C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E9490  7C 08 03 A6 */	mtlr r0
/* 804E9494  38 21 00 20 */	addi r1, r1, 0x20
/* 804E9498  4E 80 00 20 */	blr 
