lbl_8054BDF8:
/* 8054BDF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054BDFC  7C 08 02 A6 */	mflr r0
/* 8054BE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054BE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054BE08  7C 7F 1B 78 */	mr r31, r3
/* 8054BE0C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8054BE10  38 60 00 00 */	li r3, 0
/* 8054BE14  28 00 2D 00 */	cmplwi r0, 0x2d00
/* 8054BE18  41 80 00 10 */	blt lbl_8054BE28
/* 8054BE1C  28 00 2D 28 */	cmplwi r0, 0x2d28
/* 8054BE20  40 80 00 08 */	bge lbl_8054BE28
/* 8054BE24  38 60 00 01 */	li r3, 1
lbl_8054BE28:
/* 8054BE28  20 03 00 00 */	subfic r0, r3, 0
/* 8054BE2C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8054BE30  7C 80 01 10 */	subfe r4, r0, r0
/* 8054BE34  38 03 D3 00 */	addi r0, r3, -11520
/* 8054BE38  7C 03 20 38 */	and r3, r0, r4
/* 8054BE3C  4B E7 B6 3D */	bl mMmd_InsectInfo
/* 8054BE40  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054BE44  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054BE48  3C 84 00 02 */	addis r4, r4, 2
/* 8054BE4C  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 8054BE50  38 04 00 01 */	addi r0, r4, 1
/* 8054BE54  7C 03 00 00 */	cmpw r3, r0
/* 8054BE58  40 82 00 0C */	bne lbl_8054BE64
/* 8054BE5C  38 60 00 07 */	li r3, 7
/* 8054BE60  48 00 00 4C */	b lbl_8054BEAC
lbl_8054BE64:
/* 8054BE64  2C 03 00 05 */	cmpwi r3, 5
/* 8054BE68  41 82 00 30 */	beq lbl_8054BE98
/* 8054BE6C  40 80 00 34 */	bge lbl_8054BEA0
/* 8054BE70  2C 03 00 00 */	cmpwi r3, 0
/* 8054BE74  41 82 00 08 */	beq lbl_8054BE7C
/* 8054BE78  48 00 00 28 */	b lbl_8054BEA0
lbl_8054BE7C:
/* 8054BE7C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8054BE80  28 00 2D 1C */	cmplwi r0, 0x2d1c
/* 8054BE84  40 82 00 0C */	bne lbl_8054BE90
/* 8054BE88  38 60 00 1A */	li r3, 0x1a
/* 8054BE8C  48 00 00 20 */	b lbl_8054BEAC
lbl_8054BE90:
/* 8054BE90  38 60 00 19 */	li r3, 0x19
/* 8054BE94  48 00 00 18 */	b lbl_8054BEAC
lbl_8054BE98:
/* 8054BE98  38 60 00 0F */	li r3, 0xf
/* 8054BE9C  48 00 00 10 */	b lbl_8054BEAC
lbl_8054BEA0:
/* 8054BEA0  38 63 FF FF */	addi r3, r3, -1
/* 8054BEA4  4B FF FC 55 */	bl aCR_set_other_player_name_str
/* 8054BEA8  38 60 00 0B */	li r3, 0xb
lbl_8054BEAC:
/* 8054BEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054BEB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054BEB4  7C 08 03 A6 */	mtlr r0
/* 8054BEB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054BEBC  4E 80 00 20 */	blr 
