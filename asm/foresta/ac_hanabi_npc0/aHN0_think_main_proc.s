lbl_80528B40:
/* 80528B40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80528B44  7C 08 02 A6 */	mflr r0
/* 80528B48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80528B4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80528B50  7C 7F 1B 78 */	mr r31, r3
/* 80528B54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80528B58  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80528B5C  28 00 00 FF */	cmplwi r0, 0xff
/* 80528B60  40 82 00 F8 */	bne lbl_80528C58
/* 80528B64  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 80528B68  28 00 00 16 */	cmplwi r0, 0x16
/* 80528B6C  40 82 00 DC */	bne lbl_80528C48
/* 80528B70  80 1F 09 98 */	lwz r0, 0x998(r31)
/* 80528B74  2C 00 FF FF */	cmpwi r0, -1
/* 80528B78  41 82 00 0C */	beq lbl_80528B84
/* 80528B7C  7C 04 03 78 */	mr r4, r0
/* 80528B80  48 00 00 B8 */	b lbl_80528C38
lbl_80528B84:
/* 80528B84  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80528B88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80528B8C  3C 63 00 02 */	addis r3, r3, 2
/* 80528B90  80 63 60 4C */	lwz r3, 0x604c(r3)
/* 80528B94  88 63 00 B8 */	lbz r3, 0xb8(r3)
/* 80528B98  30 03 FF FF */	addic r0, r3, -1
/* 80528B9C  7F C0 19 10 */	subfe r30, r0, r3
/* 80528BA0  4B B3 41 55 */	bl fqrand
/* 80528BA4  3C 60 80 6A */	lis r3, chk_val@ha /* 0x806A1028@ha */
/* 80528BA8  57 C0 10 3A */	slwi r0, r30, 2
/* 80528BAC  38 63 10 28 */	addi r3, r3, chk_val@l /* 0x806A1028@l */
/* 80528BB0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80528BB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80528BB8  40 80 00 14 */	bge lbl_80528BCC
/* 80528BBC  38 00 00 02 */	li r0, 2
/* 80528BC0  38 80 00 02 */	li r4, 2
/* 80528BC4  98 1F 07 53 */	stb r0, 0x753(r31)
/* 80528BC8  48 00 00 70 */	b lbl_80528C38
lbl_80528BCC:
/* 80528BCC  4B B3 41 29 */	bl fqrand
/* 80528BD0  3C 80 80 65 */	lis r4, lit_618@ha /* 0x8064920C@ha */
/* 80528BD4  3C 60 80 65 */	lis r3, lit_617@ha /* 0x80649208@ha */
/* 80528BD8  C0 44 92 0C */	lfs f2, lit_618@l(r4)  /* 0x8064920C@l */
/* 80528BDC  C0 03 92 08 */	lfs f0, lit_617@l(r3)  /* 0x80649208@l */
/* 80528BE0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80528BE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80528BE8  FC 00 00 1E */	fctiwz f0, f0
/* 80528BEC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80528BF0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80528BF4  B0 7F 09 24 */	sth r3, 0x924(r31)
/* 80528BF8  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80528BFC  7C 00 18 50 */	subf r0, r0, r3
/* 80528C00  7C 03 07 35 */	extsh. r3, r0
/* 80528C04  7C 03 00 D0 */	neg r0, r3
/* 80528C08  41 80 00 08 */	blt lbl_80528C10
/* 80528C0C  7C 60 1B 78 */	mr r0, r3
lbl_80528C10:
/* 80528C10  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80528C14  40 81 00 0C */	ble lbl_80528C20
/* 80528C18  38 80 00 00 */	li r4, 0
/* 80528C1C  48 00 00 1C */	b lbl_80528C38
lbl_80528C20:
/* 80528C20  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 80528C24  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80528C28  40 82 00 0C */	bne lbl_80528C34
/* 80528C2C  38 80 00 01 */	li r4, 1
/* 80528C30  48 00 00 08 */	b lbl_80528C38
lbl_80528C34:
/* 80528C34  38 80 00 00 */	li r4, 0
lbl_80528C38:
/* 80528C38  38 00 00 00 */	li r0, 0
/* 80528C3C  7F E3 FB 78 */	mr r3, r31
/* 80528C40  B0 1F 09 14 */	sth r0, 0x914(r31)
/* 80528C44  4B FF FD E1 */	bl aHN0_setupAction
lbl_80528C48:
/* 80528C48  38 00 FF FF */	li r0, -1
/* 80528C4C  7F E3 FB 78 */	mr r3, r31
/* 80528C50  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80528C54  4B FF F9 CD */	bl func_80528620
lbl_80528C58:
/* 80528C58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80528C5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80528C60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80528C64  7C 08 03 A6 */	mtlr r0
/* 80528C68  38 21 00 20 */	addi r1, r1, 0x20
/* 80528C6C  4E 80 00 20 */	blr 
