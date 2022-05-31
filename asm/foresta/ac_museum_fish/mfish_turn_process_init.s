lbl_80432AF0:
/* 80432AF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80432AF4  7C 08 02 A6 */	mflr r0
/* 80432AF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80432AFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80432B00  7C 7F 1B 78 */	mr r31, r3
/* 80432B04  4B C2 A1 F1 */	bl fqrand
/* 80432B08  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80432B0C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80432B10  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80432B14  3C 80 80 64 */	lis r4, lit_837@ha /* 0x806442CC@ha */
/* 80432B18  C0 63 42 5C */	lfs f3, lit_471@l(r3)  /* 0x8064425C@l */
/* 80432B1C  38 64 42 CC */	addi r3, r4, lit_837@l /* 0x806442CC@l */
/* 80432B20  EC 02 00 2A */	fadds f0, f2, f0
/* 80432B24  C0 5F 05 E8 */	lfs f2, 0x5e8(r31)
/* 80432B28  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80432B2C  EC 43 10 2A */	fadds f2, f3, f2
/* 80432B30  38 85 42 98 */	addi r4, r5, lit_588@l /* 0x80644298@l */
/* 80432B34  EC 03 00 2A */	fadds f0, f3, f0
/* 80432B38  3C A0 80 64 */	lis r5, lit_836@ha /* 0x806442C8@ha */
/* 80432B3C  C0 63 00 00 */	lfs f3, 0(r3)
/* 80432B40  C0 A5 42 C8 */	lfs f5, lit_836@l(r5)  /* 0x806442C8@l */
/* 80432B44  EC 02 00 24 */	fdivs f0, f2, f0
/* 80432B48  C0 84 00 00 */	lfs f4, 0(r4)
/* 80432B4C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80432B50  EC 25 00 72 */	fmuls f1, f5, f1
/* 80432B54  EC 03 00 2A */	fadds f0, f3, f0
/* 80432B58  EC 24 00 72 */	fmuls f1, f4, f1
/* 80432B5C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80432B60  FC 20 08 1E */	fctiwz f1, f1
/* 80432B64  FC 00 00 1E */	fctiwz f0, f0
/* 80432B68  D8 21 00 08 */	stfd f1, 8(r1)
/* 80432B6C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80432B70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80432B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80432B78  38 63 20 00 */	addi r3, r3, 0x2000
/* 80432B7C  B0 1F 06 1A */	sth r0, 0x61a(r31)
/* 80432B80  7C 64 07 34 */	extsh r4, r3
/* 80432B84  A8 7F 06 2E */	lha r3, 0x62e(r31)
/* 80432B88  54 60 06 33 */	rlwinm. r0, r3, 0, 0x18, 0x19
/* 80432B8C  41 82 00 40 */	beq lbl_80432BCC
/* 80432B90  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80432B94  41 82 00 1C */	beq lbl_80432BB0
/* 80432B98  7C 80 07 35 */	extsh. r0, r4
/* 80432B9C  7C 04 00 D0 */	neg r0, r4
/* 80432BA0  41 80 00 08 */	blt lbl_80432BA8
/* 80432BA4  7C 80 23 78 */	mr r0, r4
lbl_80432BA8:
/* 80432BA8  7C 04 07 34 */	extsh r4, r0
/* 80432BAC  48 00 00 6C */	b lbl_80432C18
lbl_80432BB0:
/* 80432BB0  7C 80 07 35 */	extsh. r0, r4
/* 80432BB4  7C 04 00 D0 */	neg r0, r4
/* 80432BB8  41 80 00 08 */	blt lbl_80432BC0
/* 80432BBC  7C 80 23 78 */	mr r0, r4
lbl_80432BC0:
/* 80432BC0  7C 00 00 D0 */	neg r0, r0
/* 80432BC4  7C 04 07 34 */	extsh r4, r0
/* 80432BC8  48 00 00 50 */	b lbl_80432C18
lbl_80432BCC:
/* 80432BCC  54 60 06 FD */	rlwinm. r0, r3, 0, 0x1b, 0x1e
/* 80432BD0  41 82 00 24 */	beq lbl_80432BF4
/* 80432BD4  A8 7F 06 2C */	lha r3, 0x62c(r31)
/* 80432BD8  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80432BDC  7C 03 00 50 */	subf r0, r3, r0
/* 80432BE0  7C 00 07 35 */	extsh. r0, r0
/* 80432BE4  40 80 00 34 */	bge lbl_80432C18
/* 80432BE8  7C 04 00 D0 */	neg r0, r4
/* 80432BEC  7C 04 07 34 */	extsh r4, r0
/* 80432BF0  48 00 00 28 */	b lbl_80432C18
lbl_80432BF4:
/* 80432BF4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80432BF8  41 82 00 20 */	beq lbl_80432C18
/* 80432BFC  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80432C00  A8 1F 06 2A */	lha r0, 0x62a(r31)
/* 80432C04  7C 03 00 50 */	subf r0, r3, r0
/* 80432C08  7C 00 07 35 */	extsh. r0, r0
/* 80432C0C  40 80 00 0C */	bge lbl_80432C18
/* 80432C10  7C 04 00 D0 */	neg r0, r4
/* 80432C14  7C 04 07 34 */	extsh r4, r0
lbl_80432C18:
/* 80432C18  7C 80 07 35 */	extsh. r0, r4
/* 80432C1C  40 81 00 14 */	ble lbl_80432C30
/* 80432C20  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 80432C24  60 00 00 40 */	ori r0, r0, 0x40
/* 80432C28  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 80432C2C  48 00 00 10 */	b lbl_80432C3C
lbl_80432C30:
/* 80432C30  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 80432C34  60 00 00 80 */	ori r0, r0, 0x80
/* 80432C38  B0 1F 06 2E */	sth r0, 0x62e(r31)
lbl_80432C3C:
/* 80432C3C  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80432C40  7C 00 22 14 */	add r0, r0, r4
/* 80432C44  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80432C48  A8 1F 06 30 */	lha r0, 0x630(r31)
/* 80432C4C  2C 00 00 02 */	cmpwi r0, 2
/* 80432C50  40 82 00 34 */	bne lbl_80432C84
/* 80432C54  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80432C58  38 03 40 00 */	addi r0, r3, 0x4000
/* 80432C5C  7C 00 07 34 */	extsh r0, r0
/* 80432C60  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80432C64  40 81 00 10 */	ble lbl_80432C74
/* 80432C68  38 00 E0 00 */	li r0, -8192
/* 80432C6C  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80432C70  48 00 00 14 */	b lbl_80432C84
lbl_80432C74:
/* 80432C74  2C 00 A0 00 */	cmpwi r0, -24576
/* 80432C78  40 81 00 0C */	ble lbl_80432C84
/* 80432C7C  38 00 A0 00 */	li r0, -24576
/* 80432C80  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_80432C84:
/* 80432C84  3C 60 80 64 */	lis r3, lit_838@ha /* 0x806442D0@ha */
/* 80432C88  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80432C8C  C0 23 42 D0 */	lfs f1, lit_838@l(r3)  /* 0x806442D0@l */
/* 80432C90  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80432C94  EC 01 00 32 */	fmuls f0, f1, f0
/* 80432C98  EC 02 00 2A */	fadds f0, f2, f0
/* 80432C9C  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80432CA0  4B C2 A0 55 */	bl fqrand
/* 80432CA4  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 80432CA8  C0 03 42 D4 */	lfs f0, lit_839@l(r3)  /* 0x806442D4@l */
/* 80432CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80432CB0  40 80 00 34 */	bge lbl_80432CE4
/* 80432CB4  4B C2 A0 41 */	bl fqrand
/* 80432CB8  3C 80 80 64 */	lis r4, lit_840@ha /* 0x806442D8@ha */
/* 80432CBC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80432CC0  C0 44 42 D8 */	lfs f2, lit_840@l(r4)  /* 0x806442D8@l */
/* 80432CC4  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80432CC8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80432CCC  EC 00 08 2A */	fadds f0, f0, f1
/* 80432CD0  FC 00 00 1E */	fctiwz f0, f0
/* 80432CD4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80432CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80432CDC  B0 1F 06 3E */	sth r0, 0x63e(r31)
/* 80432CE0  48 00 00 0C */	b lbl_80432CEC
lbl_80432CE4:
/* 80432CE4  38 00 00 00 */	li r0, 0
/* 80432CE8  B0 1F 06 3E */	sth r0, 0x63e(r31)
lbl_80432CEC:
/* 80432CEC  3C 60 80 43 */	lis r3, mfish_turn_process@ha /* 0x80432D0C@ha */
/* 80432CF0  38 03 2D 0C */	addi r0, r3, mfish_turn_process@l /* 0x80432D0C@l */
/* 80432CF4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80432CF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80432CFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80432D00  7C 08 03 A6 */	mtlr r0
/* 80432D04  38 21 00 20 */	addi r1, r1, 0x20
/* 80432D08  4E 80 00 20 */	blr 
