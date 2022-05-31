lbl_8039F0A4:
/* 8039F0A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039F0A8  7C 08 02 A6 */	mflr r0
/* 8039F0AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039F0B0  38 60 00 01 */	li r3, 1
/* 8039F0B4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039F0B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039F0BC  3C 84 00 02 */	addis r4, r4, 2
/* 8039F0C0  88 04 60 03 */	lbz r0, 0x6003(r4)
/* 8039F0C4  88 84 41 62 */	lbz r4, 0x4162(r4)
/* 8039F0C8  7C 60 00 30 */	slw r0, r3, r0
/* 8039F0CC  7C 80 00 39 */	and. r0, r4, r0
/* 8039F0D0  41 82 00 0C */	beq lbl_8039F0DC
/* 8039F0D4  38 60 00 00 */	li r3, 0
/* 8039F0D8  48 00 00 08 */	b lbl_8039F0E0
lbl_8039F0DC:
/* 8039F0DC  4B FF FF 45 */	bl mGH_check_birth2
lbl_8039F0E0:
/* 8039F0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039F0E4  7C 08 03 A6 */	mtlr r0
/* 8039F0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8039F0EC  4E 80 00 20 */	blr 
