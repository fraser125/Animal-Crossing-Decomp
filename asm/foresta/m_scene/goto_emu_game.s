lbl_803F12FC:
/* 803F12FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F1300  7C 08 02 A6 */	mflr r0
/* 803F1304  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F1308  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803F130C  7C 9F 23 78 */	mr r31, r4
/* 803F1310  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803F1314  7C 7E 1B 78 */	mr r30, r3
/* 803F1318  4B FE 83 29 */	bl get_player_actor_withoutCheck
/* 803F131C  28 03 00 00 */	cmplwi r3, 0
/* 803F1320  38 C0 00 00 */	li r6, 0
/* 803F1324  41 82 00 7C */	beq lbl_803F13A0
/* 803F1328  38 00 00 03 */	li r0, 3
/* 803F132C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F1330  98 1E 20 D0 */	stb r0, 0x20d0(r30)
/* 803F1334  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803F1338  3C E5 00 03 */	addis r7, r5, 3
/* 803F133C  38 80 00 00 */	li r4, 0
/* 803F1340  98 1E 20 D1 */	stb r0, 0x20d1(r30)
/* 803F1344  38 C0 00 01 */	li r6, 1
/* 803F1348  80 05 00 14 */	lwz r0, 0x14(r5)
/* 803F134C  90 07 85 7C */	stw r0, -0x7a84(r7)
/* 803F1350  98 87 85 80 */	stb r4, -0x7a80(r7)
/* 803F1354  98 87 85 81 */	stb r4, -0x7a7f(r7)
/* 803F1358  B0 87 85 82 */	sth r4, -0x7a7e(r7)
/* 803F135C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 803F1360  FC 00 00 1E */	fctiwz f0, f0
/* 803F1364  D8 01 00 08 */	stfd f0, 8(r1)
/* 803F1368  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F136C  B0 07 85 84 */	sth r0, -0x7a7c(r7)
/* 803F1370  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 803F1374  FC 00 00 1E */	fctiwz f0, f0
/* 803F1378  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803F137C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1380  B0 07 85 86 */	sth r0, -0x7a7a(r7)
/* 803F1384  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 803F1388  FC 00 00 1E */	fctiwz f0, f0
/* 803F138C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803F1390  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803F1394  B0 07 85 88 */	sth r0, -0x7a78(r7)
/* 803F1398  B0 87 85 8A */	sth r4, -0x7a76(r7)
/* 803F139C  9B E7 87 F8 */	stb r31, -0x7808(r7)
lbl_803F13A0:
/* 803F13A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F13A4  7C C3 33 78 */	mr r3, r6
/* 803F13A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803F13AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803F13B0  7C 08 03 A6 */	mtlr r0
/* 803F13B4  38 21 00 30 */	addi r1, r1, 0x30
/* 803F13B8  4E 80 00 20 */	blr 
