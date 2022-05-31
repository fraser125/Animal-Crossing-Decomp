lbl_8054BEC0:
/* 8054BEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054BEC4  7C 08 02 A6 */	mflr r0
/* 8054BEC8  38 80 00 00 */	li r4, 0
/* 8054BECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054BED0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8054BED4  28 00 23 00 */	cmplwi r0, 0x2300
/* 8054BED8  41 80 00 10 */	blt lbl_8054BEE8
/* 8054BEDC  28 00 23 28 */	cmplwi r0, 0x2328
/* 8054BEE0  41 81 00 08 */	bgt lbl_8054BEE8
/* 8054BEE4  38 80 00 01 */	li r4, 1
lbl_8054BEE8:
/* 8054BEE8  20 04 00 00 */	subfic r0, r4, 0
/* 8054BEEC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8054BEF0  7C 80 01 10 */	subfe r4, r0, r0
/* 8054BEF4  38 03 DD 00 */	addi r0, r3, -8960
/* 8054BEF8  7C 03 20 38 */	and r3, r0, r4
/* 8054BEFC  4B E7 B5 CD */	bl mMmd_FishInfo
/* 8054BF00  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054BF04  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054BF08  3C 84 00 02 */	addis r4, r4, 2
/* 8054BF0C  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 8054BF10  38 04 00 01 */	addi r0, r4, 1
/* 8054BF14  7C 03 00 00 */	cmpw r3, r0
/* 8054BF18  40 82 00 0C */	bne lbl_8054BF24
/* 8054BF1C  38 60 00 06 */	li r3, 6
/* 8054BF20  48 00 00 38 */	b lbl_8054BF58
lbl_8054BF24:
/* 8054BF24  2C 03 00 05 */	cmpwi r3, 5
/* 8054BF28  41 82 00 1C */	beq lbl_8054BF44
/* 8054BF2C  40 80 00 20 */	bge lbl_8054BF4C
/* 8054BF30  2C 03 00 00 */	cmpwi r3, 0
/* 8054BF34  41 82 00 08 */	beq lbl_8054BF3C
/* 8054BF38  48 00 00 14 */	b lbl_8054BF4C
lbl_8054BF3C:
/* 8054BF3C  38 60 00 1B */	li r3, 0x1b
/* 8054BF40  48 00 00 18 */	b lbl_8054BF58
lbl_8054BF44:
/* 8054BF44  38 60 00 0E */	li r3, 0xe
/* 8054BF48  48 00 00 10 */	b lbl_8054BF58
lbl_8054BF4C:
/* 8054BF4C  38 63 FF FF */	addi r3, r3, -1
/* 8054BF50  4B FF FB A9 */	bl aCR_set_other_player_name_str
/* 8054BF54  38 60 00 0A */	li r3, 0xa
lbl_8054BF58:
/* 8054BF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054BF5C  7C 08 03 A6 */	mtlr r0
/* 8054BF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8054BF64  4E 80 00 20 */	blr 
