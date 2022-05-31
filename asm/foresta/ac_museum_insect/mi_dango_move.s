lbl_8046CB8C:
/* 8046CB8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8046CB90  7C 08 02 A6 */	mflr r0
/* 8046CB94  90 01 00 54 */	stw r0, 0x54(r1)
/* 8046CB98  38 00 00 00 */	li r0, 0
/* 8046CB9C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8046CBA0  7C 7F 1B 78 */	mr r31, r3
/* 8046CBA4  B0 03 00 7C */	sth r0, 0x7c(r3)
/* 8046CBA8  3C 60 80 64 */	lis r3, lit_1462@ha /* 0x80644748@ha */
/* 8046CBAC  C0 03 47 48 */	lfs f0, lit_1462@l(r3)  /* 0x80644748@l */
/* 8046CBB0  A8 9F 00 6E */	lha r4, 0x6e(r31)
/* 8046CBB4  38 04 FF FF */	addi r0, r4, -1
/* 8046CBB8  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046CBBC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8046CBC0  FC 20 0A 10 */	fabs f1, f1
/* 8046CBC4  FC 20 08 18 */	frsp f1, f1
/* 8046CBC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046CBCC  40 80 00 58 */	bge lbl_8046CC24
/* 8046CBD0  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 8046CBD4  2C 00 00 00 */	cmpwi r0, 0
/* 8046CBD8  40 80 03 18 */	bge lbl_8046CEF0
/* 8046CBDC  4B BF 01 19 */	bl fqrand
/* 8046CBE0  3C 80 80 64 */	lis r4, lit_1584@ha /* 0x8064475C@ha */
/* 8046CBE4  3C 60 80 64 */	lis r3, lit_4481@ha /* 0x806448F4@ha */
/* 8046CBE8  C0 44 47 5C */	lfs f2, lit_1584@l(r4)  /* 0x8064475C@l */
/* 8046CBEC  C0 03 48 F4 */	lfs f0, lit_4481@l(r3)  /* 0x806448F4@l */
/* 8046CBF0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046CBF4  EC 00 08 2A */	fadds f0, f0, f1
/* 8046CBF8  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8046CBFC  4B BF 00 F9 */	bl fqrand
/* 8046CC00  3C 60 80 64 */	lis r3, lit_1140@ha /* 0x80644720@ha */
/* 8046CC04  C0 03 47 20 */	lfs f0, lit_1140@l(r3)  /* 0x80644720@l */
/* 8046CC08  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046CC0C  FC 00 00 1E */	fctiwz f0, f0
/* 8046CC10  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8046CC14  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8046CC18  38 03 00 28 */	addi r0, r3, 0x28
/* 8046CC1C  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046CC20  48 00 02 D0 */	b lbl_8046CEF0
lbl_8046CC24:
/* 8046CC24  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 8046CC28  2C 00 00 00 */	cmpwi r0, 0
/* 8046CC2C  40 80 00 34 */	bge lbl_8046CC60
/* 8046CC30  4B BF 00 C5 */	bl fqrand
/* 8046CC34  3C 80 80 64 */	lis r4, lit_4482@ha /* 0x806448F8@ha */
/* 8046CC38  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046CC3C  C0 44 48 F8 */	lfs f2, lit_4482@l(r4)  /* 0x806448F8@l */
/* 8046CC40  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046CC44  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046CC48  FC 20 08 1E */	fctiwz f1, f1
/* 8046CC4C  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8046CC50  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8046CC54  38 03 00 28 */	addi r0, r3, 0x28
/* 8046CC58  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046CC5C  D0 1F 00 40 */	stfs f0, 0x40(r31)
lbl_8046CC60:
/* 8046CC60  A8 9F 00 74 */	lha r4, 0x74(r31)
/* 8046CC64  38 7F 00 6A */	addi r3, r31, 0x6a
/* 8046CC68  A8 BF 00 78 */	lha r5, 0x78(r31)
/* 8046CC6C  4B F4 E1 35 */	bl chase_angle2
/* 8046CC70  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046CC74  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8046CC78  41 82 00 78 */	beq lbl_8046CCF0
/* 8046CC7C  A8 BF 00 72 */	lha r5, 0x72(r31)
/* 8046CC80  3C 60 80 68 */	lis r3, rail_pos@ha /* 0x80686D68@ha */
/* 8046CC84  38 03 6D 68 */	addi r0, r3, rail_pos@l /* 0x80686D68@l */
/* 8046CC88  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8046CC8C  1C 65 00 0C */	mulli r3, r5, 0xc
/* 8046CC90  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8046CC94  7C 60 1A 14 */	add r3, r0, r3
/* 8046CC98  4B F4 E2 E1 */	bl xyz_t_sub
/* 8046CC9C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8046CCA0  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8046CCA4  4B F9 F3 5D */	bl atans_table
/* 8046CCA8  B0 7F 00 74 */	sth r3, 0x74(r31)
/* 8046CCAC  A8 7F 00 74 */	lha r3, 0x74(r31)
/* 8046CCB0  A8 1F 00 6A */	lha r0, 0x6a(r31)
/* 8046CCB4  7C 63 00 50 */	subf r3, r3, r0
/* 8046CCB8  7C 60 07 34 */	extsh r0, r3
/* 8046CCBC  7C 63 07 35 */	extsh. r3, r3
/* 8046CCC0  7C 60 00 D0 */	neg r3, r0
/* 8046CCC4  41 80 00 08 */	blt lbl_8046CCCC
/* 8046CCC8  7C 03 03 78 */	mr r3, r0
lbl_8046CCCC:
/* 8046CCCC  2C 03 00 B6 */	cmpwi r3, 0xb6
/* 8046CCD0  40 80 00 14 */	bge lbl_8046CCE4
/* 8046CCD4  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046CCD8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8046CCDC  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 8046CCE0  48 00 02 10 */	b lbl_8046CEF0
lbl_8046CCE4:
/* 8046CCE4  7F E3 FB 78 */	mr r3, r31
/* 8046CCE8  4B FE DE FD */	bl func_8045ABE4
/* 8046CCEC  48 00 02 04 */	b lbl_8046CEF0
lbl_8046CCF0:
/* 8046CCF0  A8 BF 00 72 */	lha r5, 0x72(r31)
/* 8046CCF4  3C 60 80 68 */	lis r3, rail_pos@ha /* 0x80686D68@ha */
/* 8046CCF8  38 03 6D 68 */	addi r0, r3, rail_pos@l /* 0x80686D68@l */
/* 8046CCFC  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8046CD00  1C 65 00 0C */	mulli r3, r5, 0xc
/* 8046CD04  38 A1 00 20 */	addi r5, r1, 0x20
/* 8046CD08  7C 60 1A 14 */	add r3, r0, r3
/* 8046CD0C  4B F4 E2 6D */	bl xyz_t_sub
/* 8046CD10  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8046CD14  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8046CD18  4B F9 F2 E9 */	bl atans_table
/* 8046CD1C  B0 7F 00 74 */	sth r3, 0x74(r31)
/* 8046CD20  3C 60 80 68 */	lis r3, rail_pos@ha /* 0x80686D68@ha */
/* 8046CD24  38 03 6D 68 */	addi r0, r3, rail_pos@l /* 0x80686D68@l */
/* 8046CD28  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046CD2C  A8 9F 00 72 */	lha r4, 0x72(r31)
/* 8046CD30  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8046CD34  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8046CD38  7C 80 22 14 */	add r4, r0, r4
/* 8046CD3C  4B F4 DF A1 */	bl chase_xyz_t
/* 8046CD40  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046CD44  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046CD48  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8046CD4C  40 82 01 A4 */	bne lbl_8046CEF0
/* 8046CD50  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046CD54  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8046CD58  41 82 00 34 */	beq lbl_8046CD8C
/* 8046CD5C  A8 7F 00 72 */	lha r3, 0x72(r31)
/* 8046CD60  A8 1F 00 76 */	lha r0, 0x76(r31)
/* 8046CD64  7C 03 02 14 */	add r0, r3, r0
/* 8046CD68  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 8046CD6C  A8 7F 00 70 */	lha r3, 0x70(r31)
/* 8046CD70  A8 1F 00 76 */	lha r0, 0x76(r31)
/* 8046CD74  7C 03 02 14 */	add r0, r3, r0
/* 8046CD78  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8046CD7C  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046CD80  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8046CD84  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 8046CD88  48 00 01 68 */	b lbl_8046CEF0
lbl_8046CD8C:
/* 8046CD8C  A8 1F 00 76 */	lha r0, 0x76(r31)
/* 8046CD90  2C 00 00 00 */	cmpwi r0, 0
/* 8046CD94  40 80 00 18 */	bge lbl_8046CDAC
/* 8046CD98  4B BE FF 5D */	bl fqrand
/* 8046CD9C  3C 60 80 64 */	lis r3, lit_4483@ha /* 0x806448FC@ha */
/* 8046CDA0  C0 03 48 FC */	lfs f0, lit_4483@l(r3)  /* 0x806448FC@l */
/* 8046CDA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046CDA8  41 81 00 24 */	bgt lbl_8046CDCC
lbl_8046CDAC:
/* 8046CDAC  A8 1F 00 76 */	lha r0, 0x76(r31)
/* 8046CDB0  2C 00 00 00 */	cmpwi r0, 0
/* 8046CDB4  40 81 00 24 */	ble lbl_8046CDD8
/* 8046CDB8  4B BE FF 3D */	bl fqrand
/* 8046CDBC  3C 60 80 64 */	lis r3, lit_1672@ha /* 0x80644784@ha */
/* 8046CDC0  C0 03 47 84 */	lfs f0, lit_1672@l(r3)  /* 0x80644784@l */
/* 8046CDC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046CDC8  40 81 00 10 */	ble lbl_8046CDD8
lbl_8046CDCC:
/* 8046CDCC  A8 1F 00 72 */	lha r0, 0x72(r31)
/* 8046CDD0  2C 00 00 05 */	cmpwi r0, 5
/* 8046CDD4  41 80 00 10 */	blt lbl_8046CDE4
lbl_8046CDD8:
/* 8046CDD8  A8 1F 00 72 */	lha r0, 0x72(r31)
/* 8046CDDC  2C 00 00 00 */	cmpwi r0, 0
/* 8046CDE0  40 82 00 8C */	bne lbl_8046CE6C
lbl_8046CDE4:
/* 8046CDE4  A8 1F 00 76 */	lha r0, 0x76(r31)
/* 8046CDE8  2C 00 00 00 */	cmpwi r0, 0
/* 8046CDEC  40 80 00 1C */	bge lbl_8046CE08
/* 8046CDF0  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046CDF4  60 00 00 02 */	ori r0, r0, 2
/* 8046CDF8  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 8046CDFC  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046CE00  60 00 00 04 */	ori r0, r0, 4
/* 8046CE04  B0 1F 00 8C */	sth r0, 0x8c(r31)
lbl_8046CE08:
/* 8046CE08  38 00 00 01 */	li r0, 1
/* 8046CE0C  3C 60 80 68 */	lis r3, rail_pos@ha /* 0x80686D68@ha */
/* 8046CE10  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 8046CE14  38 A0 01 C7 */	li r5, 0x1c7
/* 8046CE18  38 03 6D 68 */	addi r0, r3, rail_pos@l /* 0x80686D68@l */
/* 8046CE1C  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8046CE20  B0 BF 00 78 */	sth r5, 0x78(r31)
/* 8046CE24  38 A1 00 14 */	addi r5, r1, 0x14
/* 8046CE28  A8 DF 00 72 */	lha r6, 0x72(r31)
/* 8046CE2C  A8 7F 00 76 */	lha r3, 0x76(r31)
/* 8046CE30  7C 66 1A 14 */	add r3, r6, r3
/* 8046CE34  B0 7F 00 72 */	sth r3, 0x72(r31)
/* 8046CE38  A8 DF 00 70 */	lha r6, 0x70(r31)
/* 8046CE3C  A8 7F 00 76 */	lha r3, 0x76(r31)
/* 8046CE40  7C 66 1A 14 */	add r3, r6, r3
/* 8046CE44  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046CE48  A8 7F 00 72 */	lha r3, 0x72(r31)
/* 8046CE4C  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8046CE50  7C 60 1A 14 */	add r3, r0, r3
/* 8046CE54  4B F4 E1 25 */	bl xyz_t_sub
/* 8046CE58  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8046CE5C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8046CE60  4B F9 F1 A1 */	bl atans_table
/* 8046CE64  B0 7F 00 74 */	sth r3, 0x74(r31)
/* 8046CE68  48 00 00 88 */	b lbl_8046CEF0
lbl_8046CE6C:
/* 8046CE6C  A8 1F 00 76 */	lha r0, 0x76(r31)
/* 8046CE70  2C 00 00 00 */	cmpwi r0, 0
/* 8046CE74  40 81 00 1C */	ble lbl_8046CE90
/* 8046CE78  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046CE7C  60 00 00 02 */	ori r0, r0, 2
/* 8046CE80  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 8046CE84  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8046CE88  60 00 00 04 */	ori r0, r0, 4
/* 8046CE8C  B0 1F 00 8C */	sth r0, 0x8c(r31)
lbl_8046CE90:
/* 8046CE90  38 00 FF FF */	li r0, -1
/* 8046CE94  3C 60 80 68 */	lis r3, rail_pos@ha /* 0x80686D68@ha */
/* 8046CE98  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 8046CE9C  38 A0 FE 39 */	li r5, -455
/* 8046CEA0  38 03 6D 68 */	addi r0, r3, rail_pos@l /* 0x80686D68@l */
/* 8046CEA4  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8046CEA8  B0 BF 00 78 */	sth r5, 0x78(r31)
/* 8046CEAC  38 A1 00 08 */	addi r5, r1, 8
/* 8046CEB0  A8 DF 00 72 */	lha r6, 0x72(r31)
/* 8046CEB4  A8 7F 00 76 */	lha r3, 0x76(r31)
/* 8046CEB8  7C 66 1A 14 */	add r3, r6, r3
/* 8046CEBC  B0 7F 00 72 */	sth r3, 0x72(r31)
/* 8046CEC0  A8 DF 00 70 */	lha r6, 0x70(r31)
/* 8046CEC4  A8 7F 00 76 */	lha r3, 0x76(r31)
/* 8046CEC8  7C 66 1A 14 */	add r3, r6, r3
/* 8046CECC  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046CED0  A8 7F 00 72 */	lha r3, 0x72(r31)
/* 8046CED4  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8046CED8  7C 60 1A 14 */	add r3, r0, r3
/* 8046CEDC  4B F4 E0 9D */	bl xyz_t_sub
/* 8046CEE0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8046CEE4  C0 41 00 08 */	lfs f2, 8(r1)
/* 8046CEE8  4B F9 F1 19 */	bl atans_table
/* 8046CEEC  B0 7F 00 74 */	sth r3, 0x74(r31)
lbl_8046CEF0:
/* 8046CEF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8046CEF4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8046CEF8  7C 08 03 A6 */	mtlr r0
/* 8046CEFC  38 21 00 50 */	addi r1, r1, 0x50
/* 8046CF00  4E 80 00 20 */	blr 
