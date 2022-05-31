lbl_8054BBF8:
/* 8054BBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054BBFC  7C 08 02 A6 */	mflr r0
/* 8054BC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054BC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054BC08  7C 7F 1B 78 */	mr r31, r3
/* 8054BC0C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8054BC10  38 60 00 00 */	li r3, 0
/* 8054BC14  28 00 1E EC */	cmplwi r0, 0x1eec
/* 8054BC18  41 80 00 10 */	blt lbl_8054BC28
/* 8054BC1C  28 00 1F 4F */	cmplwi r0, 0x1f4f
/* 8054BC20  41 81 00 08 */	bgt lbl_8054BC28
/* 8054BC24  38 60 00 01 */	li r3, 1
lbl_8054BC28:
/* 8054BC28  20 03 00 00 */	subfic r0, r3, 0
/* 8054BC2C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8054BC30  7C 80 01 10 */	subfe r4, r0, r0
/* 8054BC34  38 03 E1 14 */	addi r0, r3, -7916
/* 8054BC38  7C 00 16 70 */	srawi r0, r0, 2
/* 8054BC3C  7C 03 20 38 */	and r3, r0, r4
/* 8054BC40  4B E7 B7 99 */	bl func_803C73D8
/* 8054BC44  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054BC48  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054BC4C  3C 84 00 02 */	addis r4, r4, 2
/* 8054BC50  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 8054BC54  38 04 00 01 */	addi r0, r4, 1
/* 8054BC58  7C 03 00 00 */	cmpw r3, r0
/* 8054BC5C  40 82 00 0C */	bne lbl_8054BC68
/* 8054BC60  38 60 00 04 */	li r3, 4
/* 8054BC64  48 00 00 88 */	b lbl_8054BCEC
lbl_8054BC68:
/* 8054BC68  2C 03 00 05 */	cmpwi r3, 5
/* 8054BC6C  41 82 00 6C */	beq lbl_8054BCD8
/* 8054BC70  40 80 00 70 */	bge lbl_8054BCE0
/* 8054BC74  2C 03 00 00 */	cmpwi r3, 0
/* 8054BC78  41 82 00 08 */	beq lbl_8054BC80
/* 8054BC7C  48 00 00 64 */	b lbl_8054BCE0
lbl_8054BC80:
/* 8054BC80  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8054BC84  38 03 E0 C4 */	addi r0, r3, -7996
/* 8054BC88  28 00 00 10 */	cmplwi r0, 0x10
/* 8054BC8C  41 81 00 44 */	bgt lbl_8054BCD0
/* 8054BC90  3C 60 80 6A */	lis r3, lit_762@ha /* 0x806A50E0@ha */
/* 8054BC94  54 00 10 3A */	slwi r0, r0, 2
/* 8054BC98  38 63 50 E0 */	addi r3, r3, lit_762@l /* 0x806A50E0@l */
/* 8054BC9C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8054BCA0  7C 09 03 A6 */	mtctr r0
/* 8054BCA4  4E 80 04 20 */	bctr 
lbl_8054BCA8:
/* 8054BCA8  38 60 00 11 */	li r3, 0x11
/* 8054BCAC  48 00 00 40 */	b lbl_8054BCEC
lbl_8054BCB0:
/* 8054BCB0  38 60 00 12 */	li r3, 0x12
/* 8054BCB4  48 00 00 38 */	b lbl_8054BCEC
lbl_8054BCB8:
/* 8054BCB8  38 60 00 13 */	li r3, 0x13
/* 8054BCBC  48 00 00 30 */	b lbl_8054BCEC
lbl_8054BCC0:
/* 8054BCC0  38 60 00 14 */	li r3, 0x14
/* 8054BCC4  48 00 00 28 */	b lbl_8054BCEC
lbl_8054BCC8:
/* 8054BCC8  38 60 00 15 */	li r3, 0x15
/* 8054BCCC  48 00 00 20 */	b lbl_8054BCEC
lbl_8054BCD0:
/* 8054BCD0  38 60 00 10 */	li r3, 0x10
/* 8054BCD4  48 00 00 18 */	b lbl_8054BCEC
lbl_8054BCD8:
/* 8054BCD8  38 60 00 0C */	li r3, 0xc
/* 8054BCDC  48 00 00 10 */	b lbl_8054BCEC
lbl_8054BCE0:
/* 8054BCE0  38 63 FF FF */	addi r3, r3, -1
/* 8054BCE4  4B FF FE 15 */	bl aCR_set_other_player_name_str
/* 8054BCE8  38 60 00 08 */	li r3, 8
lbl_8054BCEC:
/* 8054BCEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054BCF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054BCF4  7C 08 03 A6 */	mtlr r0
/* 8054BCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054BCFC  4E 80 00 20 */	blr 
