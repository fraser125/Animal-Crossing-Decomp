lbl_8038B284:
/* 8038B284  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038B288  7C 08 02 A6 */	mflr r0
/* 8038B28C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038B290  39 61 00 30 */	addi r11, r1, 0x30
/* 8038B294  4B D0 FC 41 */	bl func_8009AED4
/* 8038B298  7C 7D 1B 78 */	mr r29, r3
/* 8038B29C  7C 9E 23 78 */	mr r30, r4
/* 8038B2A0  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038B2A4  7C BF 2B 78 */	mr r31, r5
/* 8038B2A8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8038B2AC  7F E4 FB 78 */	mr r4, r31
/* 8038B2B0  38 A1 00 10 */	addi r5, r1, 0x10
/* 8038B2B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038B2B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038B2BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038B2C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8038B2C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038B2C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8038B2CC  4B FF F8 DD */	bl mCoBG_GetPointInfoFrontLine
/* 8038B2D0  2C 03 00 00 */	cmpwi r3, 0
/* 8038B2D4  41 82 00 44 */	beq lbl_8038B318
/* 8038B2D8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8038B2DC  7F C3 F3 78 */	mr r3, r30
/* 8038B2E0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8038B2E4  7F E4 FB 78 */	mr r4, r31
/* 8038B2E8  38 A1 00 08 */	addi r5, r1, 8
/* 8038B2EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038B2F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8038B2F4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8038B2F8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8038B2FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038B300  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038B304  4B FF F8 A5 */	bl mCoBG_GetPointInfoFrontLine
/* 8038B308  2C 03 00 00 */	cmpwi r3, 0
/* 8038B30C  41 82 00 0C */	beq lbl_8038B318
/* 8038B310  38 60 00 01 */	li r3, 1
/* 8038B314  48 00 00 08 */	b lbl_8038B31C
lbl_8038B318:
/* 8038B318  38 60 00 00 */	li r3, 0
lbl_8038B31C:
/* 8038B31C  39 61 00 30 */	addi r11, r1, 0x30
/* 8038B320  4B D0 FC 01 */	bl func_8009AF20
/* 8038B324  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038B328  7C 08 03 A6 */	mtlr r0
/* 8038B32C  38 21 00 30 */	addi r1, r1, 0x30
/* 8038B330  4E 80 00 20 */	blr 
