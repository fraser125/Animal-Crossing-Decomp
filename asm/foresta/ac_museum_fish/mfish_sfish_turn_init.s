lbl_80446BA4:
/* 80446BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80446BA8  7C 08 02 A6 */	mflr r0
/* 80446BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80446BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80446BB4  7C 7F 1B 78 */	mr r31, r3
/* 80446BB8  A8 63 06 2C */	lha r3, 0x62c(r3)
/* 80446BBC  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80446BC0  7C 03 00 50 */	subf r0, r3, r0
/* 80446BC4  7C 00 07 35 */	extsh. r0, r0
/* 80446BC8  40 81 00 10 */	ble lbl_80446BD8
/* 80446BCC  38 03 51 C7 */	addi r0, r3, 0x51c7
/* 80446BD0  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80446BD4  48 00 00 0C */	b lbl_80446BE0
lbl_80446BD8:
/* 80446BD8  38 03 AE 39 */	addi r0, r3, -20935
/* 80446BDC  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_80446BE0:
/* 80446BE0  A8 1F 06 30 */	lha r0, 0x630(r31)
/* 80446BE4  2C 00 00 02 */	cmpwi r0, 2
/* 80446BE8  40 82 00 54 */	bne lbl_80446C3C
/* 80446BEC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80446BF0  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80446BF4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80446BF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80446BFC  40 80 00 50 */	bge lbl_80446C4C
/* 80446C00  4B C1 60 F5 */	bl fqrand
/* 80446C04  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80446C08  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80446C0C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80446C10  FC 40 00 50 */	fneg f2, f0
/* 80446C14  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80446C18  40 81 00 08 */	ble lbl_80446C20
/* 80446C1C  48 00 00 10 */	b lbl_80446C2C
lbl_80446C20:
/* 80446C20  4B C1 60 D5 */	bl fqrand
/* 80446C24  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80446C28  EC 40 00 72 */	fmuls f2, f0, f1
lbl_80446C2C:
/* 80446C2C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80446C30  EC 00 10 2A */	fadds f0, f0, f2
/* 80446C34  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80446C38  48 00 00 14 */	b lbl_80446C4C
lbl_80446C3C:
/* 80446C3C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80446C40  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80446C44  EC 01 00 2A */	fadds f0, f1, f0
/* 80446C48  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
lbl_80446C4C:
/* 80446C4C  3C 60 80 44 */	lis r3, mfish_sfish_turn@ha /* 0x80446C6C@ha */
/* 80446C50  38 03 6C 6C */	addi r0, r3, mfish_sfish_turn@l /* 0x80446C6C@l */
/* 80446C54  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80446C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80446C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80446C60  7C 08 03 A6 */	mtlr r0
/* 80446C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80446C68  4E 80 00 20 */	blr 
