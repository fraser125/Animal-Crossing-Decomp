lbl_8042CD60:
/* 8042CD60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042CD64  7C 08 02 A6 */	mflr r0
/* 8042CD68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042CD6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8042CD70  4B C6 E1 61 */	bl func_8009AED0
/* 8042CD74  7C 7C 1B 78 */	mr r28, r3
/* 8042CD78  3C 60 80 64 */	lis r3, lit_475@ha /* 0x806440A0@ha */
/* 8042CD7C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8042CD80  3B FC 00 10 */	addi r31, r28, 0x10
/* 8042CD84  C0 63 40 A0 */	lfs f3, lit_475@l(r3)  /* 0x806440A0@l */
/* 8042CD88  7C 9D 23 78 */	mr r29, r4
/* 8042CD8C  7C BE 2B 78 */	mr r30, r5
/* 8042CD90  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 8042CD94  41 82 00 9C */	beq lbl_8042CE30
/* 8042CD98  A8 1C 00 0C */	lha r0, 0xc(r28)
/* 8042CD9C  2C 00 00 01 */	cmpwi r0, 1
/* 8042CDA0  40 82 00 4C */	bne lbl_8042CDEC
/* 8042CDA4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8042CDA8  3C 60 80 64 */	lis r3, lit_706@ha /* 0x806440E8@ha */
/* 8042CDAC  C0 43 40 E8 */	lfs f2, lit_706@l(r3)  /* 0x806440E8@l */
/* 8042CDB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8042CDB4  EC 21 10 28 */	fsubs f1, f1, f2
/* 8042CDB8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042CDBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042CDC0  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8042CDC4  4C 40 13 82 */	cror 2, 0, 2
/* 8042CDC8  40 82 00 0C */	bne lbl_8042CDD4
/* 8042CDCC  38 00 00 01 */	li r0, 1
/* 8042CDD0  48 00 00 08 */	b lbl_8042CDD8
lbl_8042CDD4:
/* 8042CDD4  38 00 00 00 */	li r0, 0
lbl_8042CDD8:
/* 8042CDD8  2C 00 00 00 */	cmpwi r0, 0
/* 8042CDDC  41 82 00 10 */	beq lbl_8042CDEC
/* 8042CDE0  7F 84 E3 78 */	mr r4, r28
/* 8042CDE4  38 60 40 78 */	li r3, 0x4078
/* 8042CDE8  48 20 11 C1 */	bl sAdo_OngenTrgStart
lbl_8042CDEC:
/* 8042CDEC  7F E3 FB 78 */	mr r3, r31
/* 8042CDF0  4B F4 42 25 */	bl cKF_SkeletonInfo_R_play
/* 8042CDF4  2C 03 00 01 */	cmpwi r3, 1
/* 8042CDF8  40 82 00 38 */	bne lbl_8042CE30
/* 8042CDFC  3C 60 80 64 */	lis r3, lit_475@ha /* 0x806440A0@ha */
/* 8042CE00  C0 03 40 A0 */	lfs f0, lit_475@l(r3)  /* 0x806440A0@l */
/* 8042CE04  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042CE08  A8 1C 00 0C */	lha r0, 0xc(r28)
/* 8042CE0C  2C 00 00 01 */	cmpwi r0, 1
/* 8042CE10  40 82 00 20 */	bne lbl_8042CE30
/* 8042CE14  7F C3 F3 78 */	mr r3, r30
/* 8042CE18  7F A4 EB 78 */	mr r4, r29
/* 8042CE1C  4B FF F2 19 */	bl aLS_RequestPoleToMove
/* 8042CE20  7F A3 EB 78 */	mr r3, r29
/* 8042CE24  38 80 00 02 */	li r4, 2
/* 8042CE28  38 A0 00 01 */	li r5, 1
/* 8042CE2C  4B F8 BB A1 */	bl mEnv_RequestChangeLightON
lbl_8042CE30:
/* 8042CE30  39 61 00 20 */	addi r11, r1, 0x20
/* 8042CE34  4B C6 E0 E9 */	bl func_8009AF1C
/* 8042CE38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042CE3C  7C 08 03 A6 */	mtlr r0
/* 8042CE40  38 21 00 20 */	addi r1, r1, 0x20
/* 8042CE44  4E 80 00 20 */	blr 
