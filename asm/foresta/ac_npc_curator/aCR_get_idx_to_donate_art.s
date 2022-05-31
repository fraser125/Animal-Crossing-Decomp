lbl_8054BD00:
/* 8054BD00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054BD04  7C 08 02 A6 */	mflr r0
/* 8054BD08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054BD0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054BD10  7C 7F 1B 78 */	mr r31, r3
/* 8054BD14  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8054BD18  38 60 00 00 */	li r3, 0
/* 8054BD1C  28 00 12 AC */	cmplwi r0, 0x12ac
/* 8054BD20  41 80 00 10 */	blt lbl_8054BD30
/* 8054BD24  28 00 12 E7 */	cmplwi r0, 0x12e7
/* 8054BD28  41 81 00 08 */	bgt lbl_8054BD30
/* 8054BD2C  38 60 00 01 */	li r3, 1
lbl_8054BD30:
/* 8054BD30  20 03 00 00 */	subfic r0, r3, 0
/* 8054BD34  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8054BD38  7C 80 01 10 */	subfe r4, r0, r0
/* 8054BD3C  38 03 ED 54 */	addi r0, r3, -4780
/* 8054BD40  7C 00 16 70 */	srawi r0, r0, 2
/* 8054BD44  7C 03 20 38 */	and r3, r0, r4
/* 8054BD48  4B E7 B6 E1 */	bl mMmd_ArtInfo
/* 8054BD4C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8054BD50  2C 00 31 DC */	cmpwi r0, 0x31dc
/* 8054BD54  41 82 00 14 */	beq lbl_8054BD68
/* 8054BD58  40 80 00 18 */	bge lbl_8054BD70
/* 8054BD5C  2C 00 31 D8 */	cmpwi r0, 0x31d8
/* 8054BD60  41 82 00 08 */	beq lbl_8054BD68
/* 8054BD64  48 00 00 0C */	b lbl_8054BD70
lbl_8054BD68:
/* 8054BD68  38 60 00 01 */	li r3, 1
/* 8054BD6C  48 00 00 78 */	b lbl_8054BDE4
lbl_8054BD70:
/* 8054BD70  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054BD74  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054BD78  3C 84 00 02 */	addis r4, r4, 2
/* 8054BD7C  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 8054BD80  38 04 00 01 */	addi r0, r4, 1
/* 8054BD84  7C 03 00 00 */	cmpw r3, r0
/* 8054BD88  40 82 00 0C */	bne lbl_8054BD94
/* 8054BD8C  38 60 00 05 */	li r3, 5
/* 8054BD90  48 00 00 54 */	b lbl_8054BDE4
lbl_8054BD94:
/* 8054BD94  2C 03 00 05 */	cmpwi r3, 5
/* 8054BD98  41 82 00 38 */	beq lbl_8054BDD0
/* 8054BD9C  40 80 00 3C */	bge lbl_8054BDD8
/* 8054BDA0  2C 03 00 00 */	cmpwi r3, 0
/* 8054BDA4  41 82 00 08 */	beq lbl_8054BDAC
/* 8054BDA8  48 00 00 30 */	b lbl_8054BDD8
lbl_8054BDAC:
/* 8054BDAC  4B B1 0F 49 */	bl fqrand
/* 8054BDB0  3C 60 80 65 */	lis r3, lit_783@ha /* 0x806494C8@ha */
/* 8054BDB4  C0 03 94 C8 */	lfs f0, lit_783@l(r3)  /* 0x806494C8@l */
/* 8054BDB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8054BDBC  FC 00 00 1E */	fctiwz f0, f0
/* 8054BDC0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8054BDC4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8054BDC8  38 63 00 16 */	addi r3, r3, 0x16
/* 8054BDCC  48 00 00 18 */	b lbl_8054BDE4
lbl_8054BDD0:
/* 8054BDD0  38 60 00 0D */	li r3, 0xd
/* 8054BDD4  48 00 00 10 */	b lbl_8054BDE4
lbl_8054BDD8:
/* 8054BDD8  38 63 FF FF */	addi r3, r3, -1
/* 8054BDDC  4B FF FD 1D */	bl aCR_set_other_player_name_str
/* 8054BDE0  38 60 00 09 */	li r3, 9
lbl_8054BDE4:
/* 8054BDE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054BDE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054BDEC  7C 08 03 A6 */	mtlr r0
/* 8054BDF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8054BDF4  4E 80 00 20 */	blr 
