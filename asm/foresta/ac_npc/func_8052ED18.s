lbl_8052ED18:
/* 8052ED18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052ED1C  7C 08 02 A6 */	mflr r0
/* 8052ED20  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052ED24  39 61 00 30 */	addi r11, r1, 0x30
/* 8052ED28  4B B6 C1 AD */	bl func_8009AED4
/* 8052ED2C  80 03 08 40 */	lwz r0, 0x840(r3)
/* 8052ED30  7C 7D 1B 78 */	mr r29, r3
/* 8052ED34  7C 9E 23 78 */	mr r30, r4
/* 8052ED38  3B E0 00 00 */	li r31, 0
/* 8052ED3C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8052ED40  40 82 00 EC */	bne lbl_8052EE2C
/* 8052ED44  88 1D 09 59 */	lbz r0, 0x959(r29)
/* 8052ED48  2C 00 00 02 */	cmpwi r0, 2
/* 8052ED4C  41 82 00 50 */	beq lbl_8052ED9C
/* 8052ED50  40 80 00 14 */	bge lbl_8052ED64
/* 8052ED54  2C 00 00 00 */	cmpwi r0, 0
/* 8052ED58  41 82 00 18 */	beq lbl_8052ED70
/* 8052ED5C  40 80 00 20 */	bge lbl_8052ED7C
/* 8052ED60  48 00 00 A0 */	b lbl_8052EE00
lbl_8052ED64:
/* 8052ED64  2C 00 00 04 */	cmpwi r0, 4
/* 8052ED68  40 80 00 98 */	bge lbl_8052EE00
/* 8052ED6C  48 00 00 58 */	b lbl_8052EDC4
lbl_8052ED70:
/* 8052ED70  38 7E 00 98 */	addi r3, r30, 0x98
/* 8052ED74  4B E5 AA 21 */	bl mCoBG_InitBgCheckResult
/* 8052ED78  48 00 00 88 */	b lbl_8052EE00
lbl_8052ED7C:
/* 8052ED7C  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8052ED80  C0 3D 09 54 */	lfs f1, 0x954(r29)
/* 8052ED84  38 A3 92 74 */	addi r5, r3, data_80649274@l /* 0x80649274@l */
/* 8052ED88  38 60 00 00 */	li r3, 0
/* 8052ED8C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8052ED90  38 A0 00 00 */	li r5, 0
/* 8052ED94  4B E5 B1 99 */	bl mCoBG_GroundCheckOnly
/* 8052ED98  48 00 00 68 */	b lbl_8052EE00
lbl_8052ED9C:
/* 8052ED9C  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8052EDA0  C0 3D 09 54 */	lfs f1, 0x954(r29)
/* 8052EDA4  38 A3 92 74 */	addi r5, r3, data_80649274@l /* 0x80649274@l */
/* 8052EDA8  38 60 00 00 */	li r3, 0
/* 8052EDAC  C0 45 00 00 */	lfs f2, 0(r5)
/* 8052EDB0  38 A0 00 01 */	li r5, 1
/* 8052EDB4  38 C0 00 00 */	li r6, 0
/* 8052EDB8  38 E0 00 01 */	li r7, 1
/* 8052EDBC  4B E5 AF E5 */	bl mCoBG_BgCheckControll
/* 8052EDC0  48 00 00 40 */	b lbl_8052EE00
lbl_8052EDC4:
/* 8052EDC4  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8052EDC8  C0 3D 09 54 */	lfs f1, 0x954(r29)
/* 8052EDCC  38 A3 92 74 */	addi r5, r3, data_80649274@l /* 0x80649274@l */
/* 8052EDD0  38 60 00 00 */	li r3, 0
/* 8052EDD4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8052EDD8  38 A0 00 01 */	li r5, 1
/* 8052EDDC  38 C0 00 00 */	li r6, 0
/* 8052EDE0  38 E0 00 01 */	li r7, 1
/* 8052EDE4  4B E5 AF BD */	bl mCoBG_BgCheckControll
/* 8052EDE8  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8052EDEC  C0 3D 09 54 */	lfs f1, 0x954(r29)
/* 8052EDF0  C0 43 92 74 */	lfs f2, data_80649274@l(r3)  /* 0x80649274@l */
/* 8052EDF4  7F C4 F3 78 */	mr r4, r30
/* 8052EDF8  38 61 00 08 */	addi r3, r1, 8
/* 8052EDFC  4B E6 32 C5 */	bl mCoBG_UniqueWallCheck
lbl_8052EE00:
/* 8052EE00  A0 1E 00 98 */	lhz r0, 0x98(r30)
/* 8052EE04  54 00 DF BD */	rlwinm. r0, r0, 0x1b, 0x1e, 0x1e
/* 8052EE08  40 82 00 1C */	bne lbl_8052EE24
/* 8052EE0C  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 8052EE10  54 00 F7 BD */	rlwinm. r0, r0, 0x1e, 0x1e, 0x1e
/* 8052EE14  40 82 00 10 */	bne lbl_8052EE24
/* 8052EE18  88 1E 00 9B */	lbz r0, 0x9b(r30)
/* 8052EE1C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8052EE20  41 82 00 14 */	beq lbl_8052EE34
lbl_8052EE24:
/* 8052EE24  3B E0 00 03 */	li r31, 3
/* 8052EE28  48 00 00 0C */	b lbl_8052EE34
lbl_8052EE2C:
/* 8052EE2C  38 7E 00 98 */	addi r3, r30, 0x98
/* 8052EE30  4B E5 A9 65 */	bl mCoBG_InitBgCheckResult
lbl_8052EE34:
/* 8052EE34  9B FD 09 58 */	stb r31, 0x958(r29)
/* 8052EE38  39 61 00 30 */	addi r11, r1, 0x30
/* 8052EE3C  4B B6 C0 E5 */	bl func_8009AF20
/* 8052EE40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052EE44  7C 08 03 A6 */	mtlr r0
/* 8052EE48  38 21 00 30 */	addi r1, r1, 0x30
/* 8052EE4C  4E 80 00 20 */	blr 
