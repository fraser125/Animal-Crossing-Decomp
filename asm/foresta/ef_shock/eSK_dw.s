lbl_8061B9C0:
/* 8061B9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061B9C4  7C 08 02 A6 */	mflr r0
/* 8061B9C8  7C 89 23 78 */	mr r9, r4
/* 8061B9CC  38 83 00 10 */	addi r4, r3, 0x10
/* 8061B9D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061B9D4  38 A3 00 34 */	addi r5, r3, 0x34
/* 8061B9D8  38 C3 00 40 */	addi r6, r3, 0x40
/* 8061B9DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061B9E0  93 C1 00 08 */	stw r30, 8(r1)
/* 8061B9E4  A8 03 00 00 */	lha r0, 0(r3)
/* 8061B9E8  20 00 00 0E */	subfic r0, r0, 0xe
/* 8061B9EC  7C 00 0E 70 */	srawi r0, r0, 1
/* 8061B9F0  7C 03 07 35 */	extsh. r3, r0
/* 8061B9F4  40 80 00 0C */	bge lbl_8061BA00
/* 8061B9F8  38 00 00 00 */	li r0, 0
/* 8061B9FC  48 00 00 14 */	b lbl_8061BA10
lbl_8061BA00:
/* 8061BA00  2C 03 00 06 */	cmpwi r3, 6
/* 8061BA04  38 00 00 06 */	li r0, 6
/* 8061BA08  41 81 00 08 */	bgt lbl_8061BA10
/* 8061BA0C  7C 60 1B 78 */	mr r0, r3
lbl_8061BA10:
/* 8061BA10  7C 00 07 34 */	extsh r0, r0
/* 8061BA14  3C 60 80 6D */	lis r3, eSK_scale_table@ha /* 0x806D3428@ha */
/* 8061BA18  39 03 34 28 */	addi r8, r3, eSK_scale_table@l /* 0x806D3428@l */
/* 8061BA1C  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8061BA20  54 1F 10 3A */	slwi r31, r0, 2
/* 8061BA24  7D 23 4B 78 */	mr r3, r9
/* 8061BA28  7C 08 FC 2E */	lfsx f0, r8, r31
/* 8061BA2C  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 8061BA30  3C E7 00 02 */	addis r7, r7, 2
/* 8061BA34  D0 05 00 00 */	stfs f0, 0(r5)
/* 8061BA38  7C 08 FC 2E */	lfsx f0, r8, r31
/* 8061BA3C  D0 05 00 04 */	stfs f0, 4(r5)
/* 8061BA40  7C 08 FC 2E */	lfsx f0, r8, r31
/* 8061BA44  D0 05 00 08 */	stfs f0, 8(r5)
/* 8061BA48  80 E7 60 9C */	lwz r7, 0x609c(r7)
/* 8061BA4C  83 C9 00 00 */	lwz r30, 0(r9)
/* 8061BA50  81 87 00 1C */	lwz r12, 0x1c(r7)
/* 8061BA54  7D 89 03 A6 */	mtctr r12
/* 8061BA58  4E 80 04 21 */	bctrl 
/* 8061BA5C  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 8061BA60  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA000080@ha */
/* 8061BA64  3C 80 80 6D */	lis r4, eSK_prim_table@ha /* 0x806D33F0@ha */
/* 8061BA68  3C 60 80 CC */	lis r3, ef_shock01_00_modelT@ha /* 0x80CBD5A0@ha */
/* 8061BA6C  38 C8 00 08 */	addi r6, r8, 8
/* 8061BA70  38 05 00 80 */	addi r0, r5, 0x0080 /* 0xFA000080@l */
/* 8061BA74  90 DE 02 E0 */	stw r6, 0x2e0(r30)
/* 8061BA78  38 A4 33 F0 */	addi r5, r4, eSK_prim_table@l /* 0x806D33F0@l */
/* 8061BA7C  7C E5 FA 14 */	add r7, r5, r31
/* 8061BA80  3C 80 DE 00 */	lis r4, 0xde00
/* 8061BA84  90 08 00 00 */	stw r0, 0(r8)
/* 8061BA88  38 03 D5 A0 */	addi r0, r3, ef_shock01_00_modelT@l /* 0x80CBD5A0@l */
/* 8061BA8C  88 67 00 01 */	lbz r3, 1(r7)
/* 8061BA90  88 C7 00 02 */	lbz r6, 2(r7)
/* 8061BA94  7C A5 F8 AE */	lbzx r5, r5, r31
/* 8061BA98  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8061BA9C  88 E7 00 03 */	lbz r7, 3(r7)
/* 8061BAA0  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 8061BAA4  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 8061BAA8  50 E3 06 3E */	rlwimi r3, r7, 0, 0x18, 0x1f
/* 8061BAAC  90 68 00 04 */	stw r3, 4(r8)
/* 8061BAB0  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8061BAB4  38 65 00 08 */	addi r3, r5, 8
/* 8061BAB8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061BABC  90 85 00 00 */	stw r4, 0(r5)
/* 8061BAC0  90 05 00 04 */	stw r0, 4(r5)
/* 8061BAC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061BAC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061BACC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061BAD0  7C 08 03 A6 */	mtlr r0
/* 8061BAD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8061BAD8  4E 80 00 20 */	blr 
