lbl_80381F00:
/* 80381F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80381F04  7C 08 02 A6 */	mflr r0
/* 80381F08  3C E0 80 64 */	lis r7, lit_1652@ha /* 0x80641558@ha */
/* 80381F0C  3D 00 80 64 */	lis r8, lit_1651@ha /* 0x80641554@ha */
/* 80381F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80381F14  C0 07 15 58 */	lfs f0, lit_1652@l(r7)  /* 0x80641558@l */
/* 80381F18  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 80381F1C  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 80381F20  EC 42 08 28 */	fsubs f2, f2, f1
/* 80381F24  C0 28 15 54 */	lfs f1, lit_1651@l(r8)  /* 0x80641554@l */
/* 80381F28  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80381F2C  EC 01 00 2A */	fadds f0, f1, f0
/* 80381F30  FC 00 00 1E */	fctiwz f0, f0
/* 80381F34  D8 01 00 08 */	stfd f0, 8(r1)
/* 80381F38  81 01 00 0C */	lwz r8, 0xc(r1)
/* 80381F3C  7D 00 07 35 */	extsh. r0, r8
/* 80381F40  40 81 00 08 */	ble lbl_80381F48
/* 80381F44  39 00 80 00 */	li r8, -32768
lbl_80381F48:
/* 80381F48  FC 20 12 10 */	fabs f1, f2
/* 80381F4C  3C E0 80 64 */	lis r7, lit_587@ha /* 0x80641390@ha */
/* 80381F50  39 27 13 90 */	addi r9, r7, lit_587@l /* 0x80641390@l */
/* 80381F54  38 E0 03 E8 */	li r7, 0x3e8
/* 80381F58  C0 09 00 00 */	lfs f0, 0(r9)
/* 80381F5C  FC 20 08 18 */	frsp f1, f1
/* 80381F60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80381F64  40 80 00 08 */	bge lbl_80381F6C
/* 80381F68  38 E0 09 C4 */	li r7, 0x9c4
lbl_80381F6C:
/* 80381F6C  3D 40 80 64 */	lis r10, lit_658@ha /* 0x806413A8@ha */
/* 80381F70  3D 20 80 64 */	lis r9, lit_877@ha /* 0x80641464@ha */
/* 80381F74  C0 2A 13 A8 */	lfs f1, lit_658@l(r10)  /* 0x806413A8@l */
/* 80381F78  C0 49 14 64 */	lfs f2, lit_877@l(r9)  /* 0x80641464@l */
/* 80381F7C  48 00 00 15 */	bl Camera2_request_main_cust_talk
/* 80381F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80381F84  7C 08 03 A6 */	mtlr r0
/* 80381F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80381F8C  4E 80 00 20 */	blr 
