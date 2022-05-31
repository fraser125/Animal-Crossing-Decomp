lbl_8053BD98:
/* 8053BD98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053BD9C  7C 08 02 A6 */	mflr r0
/* 8053BDA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053BDA4  39 61 00 30 */	addi r11, r1, 0x30
/* 8053BDA8  4B B5 F1 19 */	bl func_8009AEC0
/* 8053BDAC  7C 7E 1B 78 */	mr r30, r3
/* 8053BDB0  7C 9D 23 78 */	mr r29, r4
/* 8053BDB4  7C B8 2B 78 */	mr r24, r5
/* 8053BDB8  7C D9 33 78 */	mr r25, r6
/* 8053BDBC  7C FF 3B 78 */	mr r31, r7
/* 8053BDC0  4B B2 0F 35 */	bl fqrand
/* 8053BDC4  3C 60 80 6A */	lis r3, rnd_base@ha /* 0x806A35DC@ha */
/* 8053BDC8  57 BB 06 3E */	clrlwi r27, r29, 0x18
/* 8053BDCC  57 00 10 3A */	slwi r0, r24, 2
/* 8053BDD0  7F 06 C3 78 */	mr r6, r24
/* 8053BDD4  38 83 35 DC */	addi r4, r3, rnd_base@l /* 0x806A35DC@l */
/* 8053BDD8  7F 63 DB 78 */	mr r3, r27
/* 8053BDDC  7C 04 04 2E */	lfsx f0, r4, r0
/* 8053BDE0  38 A0 00 00 */	li r5, 0
/* 8053BDE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8053BDE8  FC 00 00 1E */	fctiwz f0, f0
/* 8053BDEC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053BDF0  83 41 00 0C */	lwz r26, 0xc(r1)
/* 8053BDF4  57 5C 06 3E */	clrlwi r28, r26, 0x18
/* 8053BDF8  7F 84 E3 78 */	mr r4, r28
/* 8053BDFC  4B FF FF 51 */	bl aNPC_getP_anmData
/* 8053BE00  9B BE 00 00 */	stb r29, 0(r30)
/* 8053BE04  7C 7D 1B 78 */	mr r29, r3
/* 8053BE08  7F 63 DB 78 */	mr r3, r27
/* 8053BE0C  7F 84 E3 78 */	mr r4, r28
/* 8053BE10  9B 5E 00 02 */	stb r26, 2(r30)
/* 8053BE14  7F 05 C3 78 */	mr r5, r24
/* 8053BE18  4B FF FF 61 */	bl aNPC_get_seq_cnt
/* 8053BE1C  98 7E 00 03 */	stb r3, 3(r30)
/* 8053BE20  2C 19 FF FF */	cmpwi r25, -1
/* 8053BE24  88 1D 00 00 */	lbz r0, 0(r29)
/* 8053BE28  98 1E 00 04 */	stb r0, 4(r30)
/* 8053BE2C  40 82 00 2C */	bne lbl_8053BE58
/* 8053BE30  88 9D 00 01 */	lbz r4, 1(r29)
/* 8053BE34  3C 00 43 30 */	lis r0, 0x4330
/* 8053BE38  3C 60 80 65 */	lis r3, lit_913@ha /* 0x8064938C@ha */
/* 8053BE3C  90 01 00 08 */	stw r0, 8(r1)
/* 8053BE40  C8 23 93 8C */	lfd f1, lit_913@l(r3)  /* 0x8064938C@l */
/* 8053BE44  90 81 00 0C */	stw r4, 0xc(r1)
/* 8053BE48  C8 01 00 08 */	lfd f0, 8(r1)
/* 8053BE4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8053BE50  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8053BE54  48 00 00 28 */	b lbl_8053BE7C
lbl_8053BE58:
/* 8053BE58  6F 23 80 00 */	xoris r3, r25, 0x8000
/* 8053BE5C  3C 00 43 30 */	lis r0, 0x4330
/* 8053BE60  90 61 00 0C */	stw r3, 0xc(r1)
/* 8053BE64  3C 80 80 65 */	lis r4, lit_811@ha /* 0x80649384@ha */
/* 8053BE68  C8 24 93 84 */	lfd f1, lit_811@l(r4)  /* 0x80649384@l */
/* 8053BE6C  90 01 00 08 */	stw r0, 8(r1)
/* 8053BE70  C8 01 00 08 */	lfd f0, 8(r1)
/* 8053BE74  EC 00 08 28 */	fsubs f0, f0, f1
/* 8053BE78  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8053BE7C:
/* 8053BE7C  9B FE 00 0D */	stb r31, 0xd(r30)
/* 8053BE80  39 61 00 30 */	addi r11, r1, 0x30
/* 8053BE84  4B B5 F0 89 */	bl func_8009AF0C
/* 8053BE88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053BE8C  7C 08 03 A6 */	mtlr r0
/* 8053BE90  38 21 00 30 */	addi r1, r1, 0x30
/* 8053BE94  4E 80 00 20 */	blr 
