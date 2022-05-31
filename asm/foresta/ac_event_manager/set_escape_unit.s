lbl_8041D3AC:
/* 8041D3AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041D3B0  7C 08 02 A6 */	mflr r0
/* 8041D3B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041D3B8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8041D3BC  7C 7F 1B 78 */	mr r31, r3
/* 8041D3C0  38 61 00 08 */	addi r3, r1, 8
/* 8041D3C4  4B F8 89 31 */	bl mFI_BkandUtNum2CenterWpos
/* 8041D3C8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8041D3CC  FC 00 00 1E */	fctiwz f0, f0
/* 8041D3D0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8041D3D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8041D3D8  B0 1F 00 00 */	sth r0, 0(r31)
/* 8041D3DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8041D3E0  FC 00 00 1E */	fctiwz f0, f0
/* 8041D3E4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8041D3E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041D3EC  B0 1F 00 02 */	sth r0, 2(r31)
/* 8041D3F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8041D3F4  FC 00 00 1E */	fctiwz f0, f0
/* 8041D3F8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8041D3FC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8041D400  B0 1F 00 04 */	sth r0, 4(r31)
/* 8041D404  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8041D408  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041D40C  7C 08 03 A6 */	mtlr r0
/* 8041D410  38 21 00 40 */	addi r1, r1, 0x40
/* 8041D414  4E 80 00 20 */	blr 
