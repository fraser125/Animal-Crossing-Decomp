lbl_80387208:
/* 80387208  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038720C  7C 08 02 A6 */	mflr r0
/* 80387210  90 01 00 34 */	stw r0, 0x34(r1)
/* 80387214  39 61 00 30 */	addi r11, r1, 0x30
/* 80387218  4B D1 3C B5 */	bl func_8009AECC
/* 8038721C  7C 9C 23 78 */	mr r28, r4
/* 80387220  7C DE 33 78 */	mr r30, r6
/* 80387224  7C BD 2B 78 */	mr r29, r5
/* 80387228  7C 7B 1B 78 */	mr r27, r3
/* 8038722C  7C FF 3B 78 */	mr r31, r7
/* 80387230  7F C4 F3 78 */	mr r4, r30
/* 80387234  7F A3 EB 78 */	mr r3, r29
/* 80387238  7F 85 E3 78 */	mr r5, r28
/* 8038723C  38 DC 00 08 */	addi r6, r28, 8
/* 80387240  48 00 35 FD */	bl mCoBG_GetCrossJudge_2Vector
/* 80387244  2C 03 00 00 */	cmpwi r3, 0
/* 80387248  41 82 00 54 */	beq lbl_8038729C
/* 8038724C  7F A4 EB 78 */	mr r4, r29
/* 80387250  7F C5 F3 78 */	mr r5, r30
/* 80387254  7F 86 E3 78 */	mr r6, r28
/* 80387258  38 61 00 08 */	addi r3, r1, 8
/* 8038725C  38 FC 00 08 */	addi r7, r28, 8
/* 80387260  48 00 37 3D */	bl mCoBG_GetCross2Line
/* 80387264  C0 21 00 08 */	lfs f1, 8(r1)
/* 80387268  7F E3 FB 78 */	mr r3, r31
/* 8038726C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80387270  38 9F 00 58 */	addi r4, r31, 0x58
/* 80387274  38 A0 00 00 */	li r5, 0
/* 80387278  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038727C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80387280  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80387284  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80387288  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038728C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80387290  A8 DC 00 28 */	lha r6, 0x28(r28)
/* 80387294  88 FC 00 30 */	lbz r7, 0x30(r28)
/* 80387298  4B FF F5 41 */	bl mCoBG_RegistCollisionWallInfo
lbl_8038729C:
/* 8038729C  39 61 00 30 */	addi r11, r1, 0x30
/* 803872A0  4B D1 3C 79 */	bl func_8009AF18
/* 803872A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803872A8  7C 08 03 A6 */	mtlr r0
/* 803872AC  38 21 00 30 */	addi r1, r1, 0x30
/* 803872B0  4E 80 00 20 */	blr 
