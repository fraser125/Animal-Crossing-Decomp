lbl_8039CD00:
/* 8039CD00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039CD04  7C 08 02 A6 */	mflr r0
/* 8039CD08  90 61 00 0C */	stw r3, 0xc(r1)
/* 8039CD0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039CD10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039CD14  88 81 00 0C */	lbz r4, 0xc(r1)
/* 8039CD18  3C 63 00 02 */	addis r3, r3, 2
/* 8039CD1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039CD20  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8039CD24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039CD28  41 82 00 18 */	beq lbl_8039CD40
/* 8039CD2C  54 80 0E FC */	rlwinm r0, r4, 1, 0x1b, 0x1e
/* 8039CD30  7C 63 02 14 */	add r3, r3, r0
/* 8039CD34  A0 03 05 58 */	lhz r0, 0x558(r3)
/* 8039CD38  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8039CD3C  48 00 00 3C */	b lbl_8039CD78
lbl_8039CD40:
/* 8039CD40  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8039CD44  41 82 00 10 */	beq lbl_8039CD54
/* 8039CD48  88 03 61 25 */	lbz r0, 0x6125(r3)
/* 8039CD4C  98 01 00 0C */	stb r0, 0xc(r1)
/* 8039CD50  48 00 00 28 */	b lbl_8039CD78
lbl_8039CD54:
/* 8039CD54  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 8039CD58  41 82 00 20 */	beq lbl_8039CD78
/* 8039CD5C  A0 83 61 26 */	lhz r4, 0x6126(r3)
/* 8039CD60  38 61 00 08 */	addi r3, r1, 8
/* 8039CD64  48 06 AC 2D */	bl lbRk_HarvestMoonDay
/* 8039CD68  88 61 00 0A */	lbz r3, 0xa(r1)
/* 8039CD6C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8039CD70  98 61 00 0C */	stb r3, 0xc(r1)
/* 8039CD74  98 01 00 0D */	stb r0, 0xd(r1)
lbl_8039CD78:
/* 8039CD78  8B E1 00 0D */	lbz r31, 0xd(r1)
/* 8039CD7C  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 8039CD80  41 82 00 34 */	beq lbl_8039CDB4
/* 8039CD84  57 E0 06 B0 */	rlwinm r0, r31, 0, 0x1a, 0x18
/* 8039CD88  88 61 00 0C */	lbz r3, 0xc(r1)
/* 8039CD8C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8039CD90  4B FF E5 ED */	bl m_weekday2day
/* 8039CD94  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 8039CD98  98 61 00 0D */	stb r3, 0xd(r1)
/* 8039CD9C  41 82 00 54 */	beq lbl_8039CDF0
/* 8039CDA0  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 8039CDA4  38 80 00 01 */	li r4, 1
/* 8039CDA8  4B FF E4 69 */	bl after_n_day
/* 8039CDAC  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8039CDB0  48 00 00 40 */	b lbl_8039CDF0
lbl_8039CDB4:
/* 8039CDB4  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 8039CDB8  41 82 00 14 */	beq lbl_8039CDCC
/* 8039CDBC  88 61 00 0C */	lbz r3, 0xc(r1)
/* 8039CDC0  4B FF E2 19 */	bl last_day_of_month
/* 8039CDC4  98 61 00 0D */	stb r3, 0xd(r1)
/* 8039CDC8  48 00 00 28 */	b lbl_8039CDF0
lbl_8039CDCC:
/* 8039CDCC  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 8039CDD0  41 82 00 20 */	beq lbl_8039CDF0
/* 8039CDD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039CDD8  57 E4 06 B0 */	rlwinm r4, r31, 0, 0x1a, 0x18
/* 8039CDDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039CDE0  3C 63 00 02 */	addis r3, r3, 2
/* 8039CDE4  88 03 41 8A */	lbz r0, 0x418a(r3)
/* 8039CDE8  7C 80 03 78 */	or r0, r4, r0
/* 8039CDEC  98 01 00 0D */	stb r0, 0xd(r1)
lbl_8039CDF0:
/* 8039CDF0  88 C1 00 0F */	lbz r6, 0xf(r1)
/* 8039CDF4  54 C0 06 B5 */	rlwinm. r0, r6, 0, 0x1a, 0x1a
/* 8039CDF8  41 82 00 40 */	beq lbl_8039CE38
/* 8039CDFC  54 C4 06 FE */	clrlwi r4, r6, 0x1b
/* 8039CE00  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039CE04  54 C3 E8 04 */	slwi r3, r6, 0x1d
/* 8039CE08  54 C0 06 32 */	rlwinm r0, r6, 0, 0x18, 0x19
/* 8039CE0C  54 84 0F FE */	srwi r4, r4, 0x1f
/* 8039CE10  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8039CE14  7C 64 18 50 */	subf r3, r4, r3
/* 8039CE18  54 63 18 3E */	rotlwi r3, r3, 3
/* 8039CE1C  3C A5 00 02 */	addis r5, r5, 2
/* 8039CE20  7C 63 22 14 */	add r3, r3, r4
/* 8039CE24  54 63 08 3C */	slwi r3, r3, 1
/* 8039CE28  7C 65 1A 14 */	add r3, r5, r3
/* 8039CE2C  A0 63 05 58 */	lhz r3, 0x558(r3)
/* 8039CE30  7C 60 03 78 */	or r0, r3, r0
/* 8039CE34  98 01 00 0F */	stb r0, 0xf(r1)
lbl_8039CE38:
/* 8039CE38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039CE3C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8039CE40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039CE44  7C 08 03 A6 */	mtlr r0
/* 8039CE48  38 21 00 20 */	addi r1, r1, 0x20
/* 8039CE4C  4E 80 00 20 */	blr 
