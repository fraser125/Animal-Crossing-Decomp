lbl_8046C248:
/* 8046C248  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8046C24C  7C 08 02 A6 */	mflr r0
/* 8046C250  90 01 00 44 */	stw r0, 0x44(r1)
/* 8046C254  39 61 00 40 */	addi r11, r1, 0x40
/* 8046C258  4B C2 EC 75 */	bl func_8009AECC
/* 8046C25C  3C A0 81 1D */	lis r5, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8046C260  7C 7B 1B 78 */	mr r27, r3
/* 8046C264  38 A5 DF D0 */	addi r5, r5, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8046C268  7C 9C 23 78 */	mr r28, r4
/* 8046C26C  80 A5 00 00 */	lwz r5, 0(r5)
/* 8046C270  3B C0 00 00 */	li r30, 0
/* 8046C274  3B E5 18 94 */	addi r31, r5, 0x1894
/* 8046C278  4B FF F0 D1 */	bl func_8046B348
/* 8046C27C  80 7B 00 90 */	lwz r3, 0x90(r27)
/* 8046C280  38 9B 00 1C */	addi r4, r27, 0x1c
/* 8046C284  4B F4 D7 51 */	bl mEnv_OperateReservedPointLight_Position
/* 8046C288  7F 63 DB 78 */	mr r3, r27
/* 8046C28C  7F 84 E3 78 */	mr r4, r28
/* 8046C290  4B FF 03 E9 */	bl get_now_mind_flag
/* 8046C294  B0 7B 00 8E */	sth r3, 0x8e(r27)
/* 8046C298  7F 63 DB 78 */	mr r3, r27
/* 8046C29C  7F 84 E3 78 */	mr r4, r28
/* 8046C2A0  4B FF F4 BD */	bl genji_light_anime
/* 8046C2A4  A8 1B 00 8E */	lha r0, 0x8e(r27)
/* 8046C2A8  2C 00 00 00 */	cmpwi r0, 0
/* 8046C2AC  40 82 00 50 */	bne lbl_8046C2FC
/* 8046C2B0  3C 60 80 64 */	lis r3, lit_4371@ha /* 0x806448EC@ha */
/* 8046C2B4  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8046C2B8  C0 23 48 EC */	lfs f1, lit_4371@l(r3)  /* 0x806448EC@l */
/* 8046C2BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046C2C0  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 8046C2C4  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8046C2C8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8046C2CC  40 80 00 5C */	bge lbl_8046C328
/* 8046C2D0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046C2D4  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046C2D8  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 8046C2DC  80 7B 00 90 */	lwz r3, 0x90(r27)
/* 8046C2E0  2C 03 FF FF */	cmpwi r3, -1
/* 8046C2E4  41 82 00 44 */	beq lbl_8046C328
/* 8046C2E8  7F 84 E3 78 */	mr r4, r28
/* 8046C2EC  4B F4 D8 15 */	bl mEnv_CancelReservedPointLight
/* 8046C2F0  38 00 FF FF */	li r0, -1
/* 8046C2F4  90 1B 00 90 */	stw r0, 0x90(r27)
/* 8046C2F8  48 00 00 30 */	b lbl_8046C328
lbl_8046C2FC:
/* 8046C2FC  3C 80 80 64 */	lis r4, lit_4371@ha /* 0x806448EC@ha */
/* 8046C300  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046C304  C0 5B 00 0C */	lfs f2, 0xc(r27)
/* 8046C308  C0 24 48 EC */	lfs f1, lit_4371@l(r4)  /* 0x806448EC@l */
/* 8046C30C  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046C310  EC 22 08 2A */	fadds f1, f2, f1
/* 8046C314  D0 3B 00 0C */	stfs f1, 0xc(r27)
/* 8046C318  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 8046C31C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046C320  40 81 00 08 */	ble lbl_8046C328
/* 8046C324  D0 1B 00 0C */	stfs f0, 0xc(r27)
lbl_8046C328:
/* 8046C328  A8 7B 00 82 */	lha r3, 0x82(r27)
/* 8046C32C  38 03 FF FF */	addi r0, r3, -1
/* 8046C330  B0 1B 00 82 */	sth r0, 0x82(r27)
/* 8046C334  A8 1B 00 82 */	lha r0, 0x82(r27)
/* 8046C338  2C 00 00 00 */	cmpwi r0, 0
/* 8046C33C  40 80 00 7C */	bge lbl_8046C3B8
/* 8046C340  38 00 FB 06 */	li r0, -1274
/* 8046C344  B0 1B 00 80 */	sth r0, 0x80(r27)
/* 8046C348  4B BF 09 AD */	bl fqrand
/* 8046C34C  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 8046C350  C0 03 46 48 */	lfs f0, lit_675@l(r3)  /* 0x80644648@l */
/* 8046C354  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046C358  FC 00 00 1E */	fctiwz f0, f0
/* 8046C35C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8046C360  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8046C364  38 03 02 58 */	addi r0, r3, 0x258
/* 8046C368  B0 1B 00 82 */	sth r0, 0x82(r27)
/* 8046C36C  4B BF 09 89 */	bl fqrand
/* 8046C370  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8046C374  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8046C378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046C37C  40 81 00 34 */	ble lbl_8046C3B0
/* 8046C380  4B BF 09 AD */	bl fqrand2
/* 8046C384  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806445D8@ha */
/* 8046C388  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046C38C  C0 44 45 D8 */	lfs f2, lit_502@l(r4)  /* 0x806445D8@l */
/* 8046C390  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046C394  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046C398  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046C39C  FC 00 00 1E */	fctiwz f0, f0
/* 8046C3A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8046C3A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8046C3A8  B0 1B 00 5E */	sth r0, 0x5e(r27)
/* 8046C3AC  48 00 00 0C */	b lbl_8046C3B8
lbl_8046C3B0:
/* 8046C3B0  38 00 0E 38 */	li r0, 0xe38
/* 8046C3B4  B0 1B 00 5E */	sth r0, 0x5e(r27)
lbl_8046C3B8:
/* 8046C3B8  A8 7B 00 7E */	lha r3, 0x7e(r27)
/* 8046C3BC  A8 1B 00 80 */	lha r0, 0x80(r27)
/* 8046C3C0  7C 03 00 00 */	cmpw r3, r0
/* 8046C3C4  40 82 00 0C */	bne lbl_8046C3D0
/* 8046C3C8  38 00 00 00 */	li r0, 0
/* 8046C3CC  B0 1B 00 80 */	sth r0, 0x80(r27)
lbl_8046C3D0:
/* 8046C3D0  3C 60 80 64 */	lis r3, lit_871@ha /* 0x806446AC@ha */
/* 8046C3D4  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046C3D8  38 A3 46 AC */	addi r5, r3, lit_871@l /* 0x806446AC@l */
/* 8046C3DC  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8046C3E0  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8046C3E4  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046C3E8  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8046C3EC  FC 60 30 34 */	frsqrte f3, f6
/* 8046C3F0  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046C3F4  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046C3F8  C8 85 00 00 */	lfd f4, 0(r5)
/* 8046C3FC  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046C400  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046C404  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046C408  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046C40C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046C410  FC 26 00 72 */	fmul f1, f6, f1
/* 8046C414  FC 24 08 28 */	fsub f1, f4, f1
/* 8046C418  FC 63 00 72 */	fmul f3, f3, f1
/* 8046C41C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046C420  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046C424  FC 26 00 72 */	fmul f1, f6, f1
/* 8046C428  FC 24 08 28 */	fsub f1, f4, f1
/* 8046C42C  FC 63 00 72 */	fmul f3, f3, f1
/* 8046C430  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046C434  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046C438  FC 26 00 72 */	fmul f1, f6, f1
/* 8046C43C  FC 24 08 28 */	fsub f1, f4, f1
/* 8046C440  FC 23 00 72 */	fmul f1, f3, f1
/* 8046C444  FC 26 00 72 */	fmul f1, f6, f1
/* 8046C448  FC 20 08 18 */	frsp f1, f1
/* 8046C44C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8046C450  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8046C454  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046C458  EC C2 08 28 */	fsubs f6, f2, f1
/* 8046C45C  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8046C460  40 81 00 54 */	ble lbl_8046C4B4
/* 8046C464  FC 20 30 34 */	frsqrte f1, f6
/* 8046C468  FC 01 00 72 */	fmul f0, f1, f1
/* 8046C46C  FC 25 00 72 */	fmul f1, f5, f1
/* 8046C470  FC 06 00 32 */	fmul f0, f6, f0
/* 8046C474  FC 04 00 28 */	fsub f0, f4, f0
/* 8046C478  FC 21 00 32 */	fmul f1, f1, f0
/* 8046C47C  FC 01 00 72 */	fmul f0, f1, f1
/* 8046C480  FC 25 00 72 */	fmul f1, f5, f1
/* 8046C484  FC 06 00 32 */	fmul f0, f6, f0
/* 8046C488  FC 04 00 28 */	fsub f0, f4, f0
/* 8046C48C  FC 21 00 32 */	fmul f1, f1, f0
/* 8046C490  FC 01 00 72 */	fmul f0, f1, f1
/* 8046C494  FC 25 00 72 */	fmul f1, f5, f1
/* 8046C498  FC 06 00 32 */	fmul f0, f6, f0
/* 8046C49C  FC 04 00 28 */	fsub f0, f4, f0
/* 8046C4A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8046C4A4  FC 06 00 32 */	fmul f0, f6, f0
/* 8046C4A8  FC 00 00 18 */	frsp f0, f0
/* 8046C4AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8046C4B0  C0 C1 00 10 */	lfs f6, 0x10(r1)
lbl_8046C4B4:
/* 8046C4B4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046C4B8  3C 00 43 30 */	lis r0, 0x4330
/* 8046C4BC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8046C4C0  3D 20 80 64 */	lis r9, lit_511@ha /* 0x8064460C@ha */
/* 8046C4C4  80 A4 00 00 */	lwz r5, 0(r4)
/* 8046C4C8  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8046C4CC  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 8046C4D0  C0 29 46 0C */	lfs f1, lit_511@l(r9)  /* 0x8064460C@l */
/* 8046C4D4  A8 65 16 9A */	lha r3, 0x169a(r5)
/* 8046C4D8  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80644654@ha */
/* 8046C4DC  38 A6 46 54 */	addi r5, r6, lit_678@l /* 0x80644654@l */
/* 8046C4E0  C8 44 00 00 */	lfd f2, 0(r4)
/* 8046C4E4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8046C4E8  3C C0 80 64 */	lis r6, lit_505@ha /* 0x806445E4@ha */
/* 8046C4EC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8046C4F0  39 06 45 E4 */	addi r8, r6, lit_505@l /* 0x806445E4@l */
/* 8046C4F4  C0 65 00 00 */	lfs f3, 0(r5)
/* 8046C4F8  3C E0 80 64 */	lis r7, lit_461@ha /* 0x806445C4@ha */
/* 8046C4FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8046C500  EC 21 30 28 */	fsubs f1, f1, f6
/* 8046C504  C0 88 00 00 */	lfs f4, 0(r8)
/* 8046C508  38 7B 00 6C */	addi r3, r27, 0x6c
/* 8046C50C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8046C510  38 C0 00 2D */	li r6, 0x2d
/* 8046C514  A8 9B 00 5E */	lha r4, 0x5e(r27)
/* 8046C518  EC 00 10 28 */	fsubs f0, f0, f2
/* 8046C51C  C0 47 45 C4 */	lfs f2, lit_461@l(r7)  /* 0x806445C4@l */
/* 8046C520  EC 03 00 32 */	fmuls f0, f3, f0
/* 8046C524  EC 02 00 2A */	fadds f0, f2, f0
/* 8046C528  EC 04 00 32 */	fmuls f0, f4, f0
/* 8046C52C  FC 00 00 1E */	fctiwz f0, f0
/* 8046C530  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046C534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046C538  7C 00 07 34 */	extsh r0, r0
/* 8046C53C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8046C540  7C 00 07 34 */	extsh r0, r0
/* 8046C544  7C 00 0E 70 */	srawi r0, r0, 1
/* 8046C548  7C 05 07 34 */	extsh r5, r0
/* 8046C54C  4B F4 ED C5 */	bl add_calc_short_angle2
/* 8046C550  3C 60 80 64 */	lis r3, lit_871@ha /* 0x806446AC@ha */
/* 8046C554  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046C558  38 A3 46 AC */	addi r5, r3, lit_871@l /* 0x806446AC@l */
/* 8046C55C  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8046C560  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8046C564  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046C568  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8046C56C  FC 60 30 34 */	frsqrte f3, f6
/* 8046C570  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046C574  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046C578  C8 85 00 00 */	lfd f4, 0(r5)
/* 8046C57C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046C580  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046C584  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046C588  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046C58C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046C590  FC 26 00 72 */	fmul f1, f6, f1
/* 8046C594  FC 24 08 28 */	fsub f1, f4, f1
/* 8046C598  FC 63 00 72 */	fmul f3, f3, f1
/* 8046C59C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046C5A0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046C5A4  FC 26 00 72 */	fmul f1, f6, f1
/* 8046C5A8  FC 24 08 28 */	fsub f1, f4, f1
/* 8046C5AC  FC 63 00 72 */	fmul f3, f3, f1
/* 8046C5B0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046C5B4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046C5B8  FC 26 00 72 */	fmul f1, f6, f1
/* 8046C5BC  FC 24 08 28 */	fsub f1, f4, f1
/* 8046C5C0  FC 23 00 72 */	fmul f1, f3, f1
/* 8046C5C4  FC 26 00 72 */	fmul f1, f6, f1
/* 8046C5C8  FC 20 08 18 */	frsp f1, f1
/* 8046C5CC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8046C5D0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8046C5D4  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046C5D8  EC 42 08 28 */	fsubs f2, f2, f1
/* 8046C5DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8046C5E0  40 81 00 54 */	ble lbl_8046C634
/* 8046C5E4  FC 20 10 34 */	frsqrte f1, f2
/* 8046C5E8  FC 01 00 72 */	fmul f0, f1, f1
/* 8046C5EC  FC 25 00 72 */	fmul f1, f5, f1
/* 8046C5F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8046C5F4  FC 04 00 28 */	fsub f0, f4, f0
/* 8046C5F8  FC 21 00 32 */	fmul f1, f1, f0
/* 8046C5FC  FC 01 00 72 */	fmul f0, f1, f1
/* 8046C600  FC 25 00 72 */	fmul f1, f5, f1
/* 8046C604  FC 02 00 32 */	fmul f0, f2, f0
/* 8046C608  FC 04 00 28 */	fsub f0, f4, f0
/* 8046C60C  FC 21 00 32 */	fmul f1, f1, f0
/* 8046C610  FC 01 00 72 */	fmul f0, f1, f1
/* 8046C614  FC 25 00 72 */	fmul f1, f5, f1
/* 8046C618  FC 02 00 32 */	fmul f0, f2, f0
/* 8046C61C  FC 04 00 28 */	fsub f0, f4, f0
/* 8046C620  FC 01 00 32 */	fmul f0, f1, f0
/* 8046C624  FC 02 00 32 */	fmul f0, f2, f0
/* 8046C628  FC 00 00 18 */	frsp f0, f0
/* 8046C62C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8046C630  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8046C634:
/* 8046C634  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046C638  A8 9B 00 80 */	lha r4, 0x80(r27)
/* 8046C63C  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8046C640  38 7B 00 7E */	addi r3, r27, 0x7e
/* 8046C644  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046C648  38 A0 00 88 */	li r5, 0x88
/* 8046C64C  38 C0 00 2D */	li r6, 0x2d
/* 8046C650  EC 20 10 28 */	fsubs f1, f0, f2
/* 8046C654  4B F4 EC BD */	bl add_calc_short_angle2
/* 8046C658  3B A0 00 01 */	li r29, 1
/* 8046C65C  48 00 01 8C */	b lbl_8046C7E8
lbl_8046C660:
/* 8046C660  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046C664  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8046C668  41 82 01 2C */	beq lbl_8046C794
/* 8046C66C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046C670  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8046C674  80 63 00 00 */	lwz r3, 0(r3)
/* 8046C678  A8 03 16 B2 */	lha r0, 0x16b2(r3)
/* 8046C67C  2C 00 00 00 */	cmpwi r0, 0
/* 8046C680  40 82 00 24 */	bne lbl_8046C6A4
/* 8046C684  4B BF 06 71 */	bl fqrand
/* 8046C688  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 8046C68C  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 8046C690  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046C694  40 81 00 6C */	ble lbl_8046C700
/* 8046C698  A8 1B 00 6E */	lha r0, 0x6e(r27)
/* 8046C69C  2C 00 00 00 */	cmpwi r0, 0
/* 8046C6A0  40 80 00 60 */	bge lbl_8046C700
lbl_8046C6A4:
/* 8046C6A4  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046C6A8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8046C6AC  40 82 00 54 */	bne lbl_8046C700
/* 8046C6B0  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8046C6B4  2C 03 FF FF */	cmpwi r3, -1
/* 8046C6B8  41 82 00 14 */	beq lbl_8046C6CC
/* 8046C6BC  7F 84 E3 78 */	mr r4, r28
/* 8046C6C0  4B F4 D4 41 */	bl mEnv_CancelReservedPointLight
/* 8046C6C4  38 00 FF FF */	li r0, -1
/* 8046C6C8  90 1F 00 90 */	stw r0, 0x90(r31)
lbl_8046C6CC:
/* 8046C6CC  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046C6D0  60 00 01 00 */	ori r0, r0, 0x100
/* 8046C6D4  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 8046C6D8  4B BF 06 1D */	bl fqrand
/* 8046C6DC  3C 60 80 64 */	lis r3, lit_4372@ha /* 0x806448F0@ha */
/* 8046C6E0  3B C0 00 01 */	li r30, 1
/* 8046C6E4  C0 03 48 F0 */	lfs f0, lit_4372@l(r3)  /* 0x806448F0@l */
/* 8046C6E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046C6EC  FC 00 00 1E */	fctiwz f0, f0
/* 8046C6F0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046C6F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046C6F8  B0 1B 00 6E */	sth r0, 0x6e(r27)
/* 8046C6FC  48 00 00 74 */	b lbl_8046C770
lbl_8046C700:
/* 8046C700  A8 1B 00 8E */	lha r0, 0x8e(r27)
/* 8046C704  2C 00 00 00 */	cmpwi r0, 0
/* 8046C708  40 82 00 68 */	bne lbl_8046C770
/* 8046C70C  A8 1B 00 6E */	lha r0, 0x6e(r27)
/* 8046C710  2C 00 00 00 */	cmpwi r0, 0
/* 8046C714  40 80 00 58 */	bge lbl_8046C76C
/* 8046C718  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046C71C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8046C720  40 82 00 4C */	bne lbl_8046C76C
/* 8046C724  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8046C728  2C 03 FF FF */	cmpwi r3, -1
/* 8046C72C  41 82 00 14 */	beq lbl_8046C740
/* 8046C730  7F 84 E3 78 */	mr r4, r28
/* 8046C734  4B F4 D3 CD */	bl mEnv_CancelReservedPointLight
/* 8046C738  38 00 FF FF */	li r0, -1
/* 8046C73C  90 1F 00 90 */	stw r0, 0x90(r31)
lbl_8046C740:
/* 8046C740  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046C744  60 00 01 00 */	ori r0, r0, 0x100
/* 8046C748  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 8046C74C  4B BF 05 A9 */	bl fqrand
/* 8046C750  3C 60 80 64 */	lis r3, lit_4372@ha /* 0x806448F0@ha */
/* 8046C754  C0 03 48 F0 */	lfs f0, lit_4372@l(r3)  /* 0x806448F0@l */
/* 8046C758  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046C75C  FC 00 00 1E */	fctiwz f0, f0
/* 8046C760  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046C764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046C768  B0 1B 00 6E */	sth r0, 0x6e(r27)
lbl_8046C76C:
/* 8046C76C  3B C0 00 01 */	li r30, 1
lbl_8046C770:
/* 8046C770  7F E3 FB 78 */	mr r3, r31
/* 8046C774  7F 84 E3 78 */	mr r4, r28
/* 8046C778  4B FF EB D1 */	bl func_8046B348
/* 8046C77C  7F E3 FB 78 */	mr r3, r31
/* 8046C780  7F 84 E3 78 */	mr r4, r28
/* 8046C784  4B FF F3 3D */	bl genji_light_move
/* 8046C788  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 8046C78C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8046C790  48 00 00 50 */	b lbl_8046C7E0
lbl_8046C794:
/* 8046C794  A8 1B 00 8E */	lha r0, 0x8e(r27)
/* 8046C798  2C 00 00 01 */	cmpwi r0, 1
/* 8046C79C  40 82 00 44 */	bne lbl_8046C7E0
/* 8046C7A0  A8 1B 00 6E */	lha r0, 0x6e(r27)
/* 8046C7A4  2C 00 00 00 */	cmpwi r0, 0
/* 8046C7A8  40 80 00 34 */	bge lbl_8046C7DC
/* 8046C7AC  7F E3 FB 78 */	mr r3, r31
/* 8046C7B0  7F 84 E3 78 */	mr r4, r28
/* 8046C7B4  7F A5 EB 78 */	mr r5, r29
/* 8046C7B8  4B FF EE 1D */	bl genji_light_make
/* 8046C7BC  4B BF 05 39 */	bl fqrand
/* 8046C7C0  3C 60 80 64 */	lis r3, lit_1719@ha /* 0x80644794@ha */
/* 8046C7C4  C0 03 47 94 */	lfs f0, lit_1719@l(r3)  /* 0x80644794@l */
/* 8046C7C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046C7CC  FC 00 00 1E */	fctiwz f0, f0
/* 8046C7D0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046C7D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046C7D8  B0 1B 00 6E */	sth r0, 0x6e(r27)
lbl_8046C7DC:
/* 8046C7DC  3B C0 00 01 */	li r30, 1
lbl_8046C7E0:
/* 8046C7E0  3B BD 00 01 */	addi r29, r29, 1
/* 8046C7E4  3B FF 00 94 */	addi r31, r31, 0x94
lbl_8046C7E8:
/* 8046C7E8  7F A0 07 34 */	extsh r0, r29
/* 8046C7EC  2C 00 00 07 */	cmpwi r0, 7
/* 8046C7F0  41 80 FE 70 */	blt lbl_8046C660
/* 8046C7F4  2C 1E 00 01 */	cmpwi r30, 1
/* 8046C7F8  40 82 00 10 */	bne lbl_8046C808
/* 8046C7FC  A8 7B 00 6E */	lha r3, 0x6e(r27)
/* 8046C800  38 03 FF FF */	addi r0, r3, -1
/* 8046C804  B0 1B 00 6E */	sth r0, 0x6e(r27)
lbl_8046C808:
/* 8046C808  39 61 00 40 */	addi r11, r1, 0x40
/* 8046C80C  4B C2 E7 0D */	bl func_8009AF18
/* 8046C810  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8046C814  7C 08 03 A6 */	mtlr r0
/* 8046C818  38 21 00 40 */	addi r1, r1, 0x40
/* 8046C81C  4E 80 00 20 */	blr 
