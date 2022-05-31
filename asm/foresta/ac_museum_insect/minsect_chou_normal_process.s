lbl_8045CB04:
/* 8045CB04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045CB08  7C 08 02 A6 */	mflr r0
/* 8045CB0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045CB10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045CB14  7C 9F 23 78 */	mr r31, r4
/* 8045CB18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045CB1C  7C 7E 1B 78 */	mr r30, r3
/* 8045CB20  A8 83 00 6E */	lha r4, 0x6e(r3)
/* 8045CB24  38 64 FF FF */	addi r3, r4, -1
/* 8045CB28  7C 80 07 35 */	extsh. r0, r4
/* 8045CB2C  B0 7E 00 6E */	sth r3, 0x6e(r30)
/* 8045CB30  40 81 00 40 */	ble lbl_8045CB70
/* 8045CB34  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 8045CB38  7C 60 07 35 */	extsh. r0, r3
/* 8045CB3C  41 82 00 18 */	beq lbl_8045CB54
/* 8045CB40  2C 03 00 03 */	cmpwi r3, 3
/* 8045CB44  41 82 00 10 */	beq lbl_8045CB54
/* 8045CB48  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8045CB4C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8045CB50  40 82 00 20 */	bne lbl_8045CB70
lbl_8045CB54:
/* 8045CB54  7C 60 07 35 */	extsh. r0, r3
/* 8045CB58  41 82 00 0C */	beq lbl_8045CB64
/* 8045CB5C  2C 03 00 03 */	cmpwi r3, 3
/* 8045CB60  40 82 01 04 */	bne lbl_8045CC64
lbl_8045CB64:
/* 8045CB64  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8045CB68  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8045CB6C  41 82 00 F8 */	beq lbl_8045CC64
lbl_8045CB70:
/* 8045CB70  4B C0 01 85 */	bl fqrand
/* 8045CB74  3C 80 80 64 */	lis r4, lit_503@ha /* 0x806445DC@ha */
/* 8045CB78  3C 60 80 64 */	lis r3, lit_502@ha /* 0x806445D8@ha */
/* 8045CB7C  C0 44 45 DC */	lfs f2, lit_503@l(r4)  /* 0x806445DC@l */
/* 8045CB80  C0 03 45 D8 */	lfs f0, lit_502@l(r3)  /* 0x806445D8@l */
/* 8045CB84  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045CB88  EC 00 08 2A */	fadds f0, f0, f1
/* 8045CB8C  FC 00 00 1E */	fctiwz f0, f0
/* 8045CB90  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8045CB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045CB98  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045CB9C  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 8045CBA0  2C 03 00 05 */	cmpwi r3, 5
/* 8045CBA4  40 80 00 10 */	bge lbl_8045CBB4
/* 8045CBA8  38 03 00 01 */	addi r0, r3, 1
/* 8045CBAC  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045CBB0  48 00 00 38 */	b lbl_8045CBE8
lbl_8045CBB4:
/* 8045CBB4  4B C0 01 41 */	bl fqrand
/* 8045CBB8  3C 60 80 64 */	lis r3, lit_504@ha /* 0x806445E0@ha */
/* 8045CBBC  C0 03 45 E0 */	lfs f0, lit_504@l(r3)  /* 0x806445E0@l */
/* 8045CBC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045CBC4  40 81 00 1C */	ble lbl_8045CBE0
/* 8045CBC8  38 00 00 00 */	li r0, 0
/* 8045CBCC  7F C3 F3 78 */	mr r3, r30
/* 8045CBD0  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045CBD4  7F E4 FB 78 */	mr r4, r31
/* 8045CBD8  48 00 01 71 */	bl minsect_chou_aim_flower_process_init
/* 8045CBDC  48 00 01 54 */	b lbl_8045CD30
lbl_8045CBE0:
/* 8045CBE0  38 00 00 00 */	li r0, 0
/* 8045CBE4  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_8045CBE8:
/* 8045CBE8  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8045CBEC  3C 60 80 64 */	lis r3, data_80644594@ha /* 0x80644594@ha */
/* 8045CBF0  38 63 45 94 */	addi r3, r3, data_80644594@l /* 0x80644594@l */
/* 8045CBF4  54 00 08 3C */	slwi r0, r0, 1
/* 8045CBF8  7C 03 02 AE */	lhax r0, r3, r0
/* 8045CBFC  B0 1E 00 72 */	sth r0, 0x72(r30)
/* 8045CC00  4B C0 01 2D */	bl fqrand2
/* 8045CC04  3C 80 80 64 */	lis r4, lit_503@ha /* 0x806445DC@ha */
/* 8045CC08  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045CC0C  C0 44 45 DC */	lfs f2, lit_503@l(r4)  /* 0x806445DC@l */
/* 8045CC10  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045CC14  38 60 00 03 */	li r3, 3
/* 8045CC18  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045CC1C  A8 1E 00 72 */	lha r0, 0x72(r30)
/* 8045CC20  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045CC24  FC 00 00 1E */	fctiwz f0, f0
/* 8045CC28  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8045CC2C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8045CC30  7C 84 07 34 */	extsh r4, r4
/* 8045CC34  7C 00 22 14 */	add r0, r0, r4
/* 8045CC38  B0 1E 00 72 */	sth r0, 0x72(r30)
/* 8045CC3C  A8 9E 00 70 */	lha r4, 0x70(r30)
/* 8045CC40  7C 04 1B D6 */	divw r0, r4, r3
/* 8045CC44  7C 00 19 D6 */	mullw r0, r0, r3
/* 8045CC48  7C 00 20 51 */	subf. r0, r0, r4
/* 8045CC4C  40 82 00 18 */	bne lbl_8045CC64
/* 8045CC50  A8 7E 00 6E */	lha r3, 0x6e(r30)
/* 8045CC54  38 03 00 0A */	addi r0, r3, 0xa
/* 8045CC58  7C 00 07 34 */	extsh r0, r0
/* 8045CC5C  7C 03 02 14 */	add r0, r3, r0
/* 8045CC60  B0 1E 00 6E */	sth r0, 0x6e(r30)
lbl_8045CC64:
/* 8045CC64  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8045CC68  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8045CC6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045CC70  40 80 00 24 */	bge lbl_8045CC94
/* 8045CC74  4B C0 00 81 */	bl fqrand
/* 8045CC78  3C 80 80 64 */	lis r4, lit_507@ha /* 0x806445EC@ha */
/* 8045CC7C  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8045CC80  C0 44 45 EC */	lfs f2, lit_507@l(r4)  /* 0x806445EC@l */
/* 8045CC84  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8045CC88  EC 22 08 2A */	fadds f1, f2, f1
/* 8045CC8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045CC90  D0 1E 00 38 */	stfs f0, 0x38(r30)
lbl_8045CC94:
/* 8045CC94  3C 60 80 64 */	lis r3, lit_508@ha /* 0x806445F4@ha */
/* 8045CC98  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8045CC9C  38 A3 45 F4 */	addi r5, r3, lit_508@l /* 0x806445F4@l */
/* 8045CCA0  C9 05 00 00 */	lfd f8, 0(r5)
/* 8045CCA4  38 A4 45 FC */	addi r5, r4, lit_509@l /* 0x806445FC@l */
/* 8045CCA8  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045CCAC  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8045CCB0  FC 00 40 34 */	frsqrte f0, f8
/* 8045CCB4  38 C3 46 04 */	addi r6, r3, lit_510@l /* 0x80644604@l */
/* 8045CCB8  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 8045CCBC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8045CCC0  C0 63 46 10 */	lfs f3, lit_512@l(r3)  /* 0x80644610@l */
/* 8045CCC4  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 8045CCC8  FC 20 00 32 */	fmul f1, f0, f0
/* 8045CCCC  3C A0 80 64 */	lis r5, lit_465@ha /* 0x806445D4@ha */
/* 8045CCD0  38 7E 00 40 */	addi r3, r30, 0x40
/* 8045CCD4  FC A7 00 32 */	fmul f5, f7, f0
/* 8045CCD8  C0 04 46 0C */	lfs f0, lit_511@l(r4)  /* 0x8064460C@l */
/* 8045CCDC  FC 48 00 72 */	fmul f2, f8, f1
/* 8045CCE0  C0 25 45 D4 */	lfs f1, lit_465@l(r5)  /* 0x806445D4@l */
/* 8045CCE4  FC 80 18 90 */	fmr f4, f3
/* 8045CCE8  FC 46 10 28 */	fsub f2, f6, f2
/* 8045CCEC  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045CCF0  FC 45 01 72 */	fmul f2, f5, f5
/* 8045CCF4  FC A7 01 72 */	fmul f5, f7, f5
/* 8045CCF8  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045CCFC  FC 46 10 28 */	fsub f2, f6, f2
/* 8045CD00  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045CD04  FC 45 01 72 */	fmul f2, f5, f5
/* 8045CD08  FC A7 01 72 */	fmul f5, f7, f5
/* 8045CD0C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045CD10  FC 46 10 28 */	fsub f2, f6, f2
/* 8045CD14  FC 45 00 B2 */	fmul f2, f5, f2
/* 8045CD18  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045CD1C  FC 40 10 18 */	frsp f2, f2
/* 8045CD20  D0 41 00 08 */	stfs f2, 8(r1)
/* 8045CD24  C0 41 00 08 */	lfs f2, 8(r1)
/* 8045CD28  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045CD2C  4B F5 E4 85 */	bl add_calc
lbl_8045CD30:
/* 8045CD30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045CD34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045CD38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045CD3C  7C 08 03 A6 */	mtlr r0
/* 8045CD40  38 21 00 20 */	addi r1, r1, 0x20
/* 8045CD44  4E 80 00 20 */	blr 
