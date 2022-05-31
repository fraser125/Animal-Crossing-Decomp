lbl_80415E74:
/* 80415E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415E78  7C 08 02 A6 */	mflr r0
/* 80415E7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80415E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415E88  93 C1 00 08 */	stw r30, 8(r1)
/* 80415E8C  7C 7E 1B 78 */	mr r30, r3
/* 80415E90  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80415E94  3F E3 00 02 */	addis r31, r3, 2
/* 80415E98  3B FF 34 40 */	addi r31, r31, 0x3440
/* 80415E9C  7F E3 FB 78 */	mr r3, r31
/* 80415EA0  4B FC 15 E9 */	bl func_803D7488
/* 80415EA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80415EA8  28 03 00 00 */	cmplwi r3, 0
/* 80415EAC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80415EB0  3C 84 00 02 */	addis r4, r4, 2
/* 80415EB4  80 84 61 1C */	lwz r4, 0x611c(r4)
/* 80415EB8  41 82 00 4C */	beq lbl_80415F04
/* 80415EBC  88 03 00 08 */	lbz r0, 8(r3)
/* 80415EC0  28 00 00 01 */	cmplwi r0, 1
/* 80415EC4  40 82 00 40 */	bne lbl_80415F04
/* 80415EC8  88 1F 08 E8 */	lbz r0, 0x8e8(r31)
/* 80415ECC  28 00 00 00 */	cmplwi r0, 0
/* 80415ED0  41 82 00 34 */	beq lbl_80415F04
/* 80415ED4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 80415ED8  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 80415EDC  7C 04 00 00 */	cmpw r4, r0
/* 80415EE0  40 80 00 0C */	bge lbl_80415EEC
/* 80415EE4  2C 04 46 50 */	cmpwi r4, 0x4650
/* 80415EE8  41 81 00 1C */	bgt lbl_80415F04
lbl_80415EEC:
/* 80415EEC  80 1E 02 B0 */	lwz r0, 0x2b0(r30)
/* 80415EF0  2C 00 00 02 */	cmpwi r0, 2
/* 80415EF4  41 82 00 10 */	beq lbl_80415F04
/* 80415EF8  3C 60 80 64 */	lis r3, lit_461@ha /* 0x80643BA4@ha */
/* 80415EFC  C0 23 3B A4 */	lfs f1, lit_461@l(r3)  /* 0x80643BA4@l */
/* 80415F00  48 00 00 0C */	b lbl_80415F0C
lbl_80415F04:
/* 80415F04  3C 60 80 64 */	lis r3, lit_462@ha /* 0x80643BA8@ha */
/* 80415F08  C0 23 3B A8 */	lfs f1, lit_462@l(r3)  /* 0x80643BA8@l */
lbl_80415F0C:
/* 80415F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415F14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80415F18  7C 08 03 A6 */	mtlr r0
/* 80415F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80415F20  4E 80 00 20 */	blr 
