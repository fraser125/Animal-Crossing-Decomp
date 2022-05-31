lbl_804E4290:
/* 804E4290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E4294  7C 08 02 A6 */	mflr r0
/* 804E4298  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E429C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E42A0  7C 7F 1B 78 */	mr r31, r3
/* 804E42A4  80 A3 10 44 */	lwz r5, 0x1044(r3)
/* 804E42A8  38 7F 10 44 */	addi r3, r31, 0x1044
/* 804E42AC  80 9F 10 48 */	lwz r4, 0x1048(r31)
/* 804E42B0  80 1F 10 4C */	lwz r0, 0x104c(r31)
/* 804E42B4  90 A1 00 08 */	stw r5, 8(r1)
/* 804E42B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 804E42BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E42C0  4B F2 91 FD */	bl Matrix_Position_Zero
/* 804E42C4  C0 5F 10 44 */	lfs f2, 0x1044(r31)
/* 804E42C8  38 7F 10 68 */	addi r3, r31, 0x1068
/* 804E42CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 804E42D0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E42D4  EC 42 00 28 */	fsubs f2, f2, f0
/* 804E42D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E42DC  D0 5F 10 50 */	stfs f2, 0x1050(r31)
/* 804E42E0  C0 5F 10 48 */	lfs f2, 0x1048(r31)
/* 804E42E4  EC 22 08 28 */	fsubs f1, f2, f1
/* 804E42E8  D0 3F 10 54 */	stfs f1, 0x1054(r31)
/* 804E42EC  C0 3F 10 4C */	lfs f1, 0x104c(r31)
/* 804E42F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E42F4  D0 1F 10 58 */	stfs f0, 0x1058(r31)
/* 804E42F8  4B F2 7F 35 */	bl Matrix_get
/* 804E42FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E4300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E4304  7C 08 03 A6 */	mtlr r0
/* 804E4308  38 21 00 20 */	addi r1, r1, 0x20
/* 804E430C  4E 80 00 20 */	blr 
