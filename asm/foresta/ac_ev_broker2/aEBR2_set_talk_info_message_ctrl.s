lbl_8051B098:
/* 8051B098  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051B09C  7C 08 02 A6 */	mflr r0
/* 8051B0A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051B0A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051B0A8  7C 7F 1B 78 */	mr r31, r3
/* 8051B0AC  4B B4 1C 49 */	bl fqrand
/* 8051B0B0  3C 80 80 65 */	lis r4, lit_657@ha /* 0x806490BC@ha */
/* 8051B0B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051B0B8  C0 04 90 BC */	lfs f0, lit_657@l(r4)  /* 0x806490BC@l */
/* 8051B0BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051B0C0  3C 63 00 02 */	addis r3, r3, 2
/* 8051B0C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051B0C8  80 03 04 D4 */	lwz r0, 0x4d4(r3)
/* 8051B0CC  2C 00 00 03 */	cmpwi r0, 3
/* 8051B0D0  FC 00 00 1E */	fctiwz f0, f0
/* 8051B0D4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051B0D8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8051B0DC  40 82 00 0C */	bne lbl_8051B0E8
/* 8051B0E0  38 60 07 A2 */	li r3, 0x7a2
/* 8051B0E4  48 00 00 58 */	b lbl_8051B13C
lbl_8051B0E8:
/* 8051B0E8  88 7F 09 A1 */	lbz r3, 0x9a1(r31)
/* 8051B0EC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8051B0F0  41 82 00 14 */	beq lbl_8051B104
/* 8051B0F4  2C 04 00 00 */	cmpwi r4, 0
/* 8051B0F8  40 82 00 0C */	bne lbl_8051B104
/* 8051B0FC  38 60 07 8C */	li r3, 0x78c
/* 8051B100  48 00 00 3C */	b lbl_8051B13C
lbl_8051B104:
/* 8051B104  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8051B108  41 82 00 14 */	beq lbl_8051B11C
/* 8051B10C  2C 04 00 00 */	cmpwi r4, 0
/* 8051B110  40 82 00 0C */	bne lbl_8051B11C
/* 8051B114  38 60 07 90 */	li r3, 0x790
/* 8051B118  48 00 00 24 */	b lbl_8051B13C
lbl_8051B11C:
/* 8051B11C  4B B4 1B D9 */	bl fqrand
/* 8051B120  3C 60 80 65 */	lis r3, lit_658@ha /* 0x806490C0@ha */
/* 8051B124  C0 03 90 C0 */	lfs f0, lit_658@l(r3)  /* 0x806490C0@l */
/* 8051B128  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051B12C  FC 00 00 1E */	fctiwz f0, f0
/* 8051B130  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051B134  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051B138  38 63 07 8D */	addi r3, r3, 0x78d
lbl_8051B13C:
/* 8051B13C  4B E7 D3 D9 */	bl mDemo_Set_msg_num
/* 8051B140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051B144  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051B148  7C 08 03 A6 */	mtlr r0
/* 8051B14C  38 21 00 20 */	addi r1, r1, 0x20
/* 8051B150  4E 80 00 20 */	blr 
