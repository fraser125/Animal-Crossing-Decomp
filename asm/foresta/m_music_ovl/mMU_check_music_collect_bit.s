lbl_805E8E40:
/* 805E8E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E8E44  7C 08 02 A6 */	mflr r0
/* 805E8E48  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805E8E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E8E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E8E54  3B E0 00 00 */	li r31, 0
/* 805E8E58  93 C1 00 08 */	stw r30, 8(r1)
/* 805E8E5C  7C 7E 1B 78 */	mr r30, r3
/* 805E8E60  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805E8E64  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805E8E68  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805E8E6C  40 82 00 10 */	bne lbl_805E8E7C
/* 805E8E70  3C 83 00 02 */	addis r4, r3, 2
/* 805E8E74  38 84 32 14 */	addi r4, r4, 0x3214
/* 805E8E78  48 00 00 28 */	b lbl_805E8EA0
lbl_805E8E7C:
/* 805E8E7C  3C 63 00 02 */	addis r3, r3, 2
/* 805E8E80  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 805E8E84  4B DC A7 35 */	bl mHS_get_arrange_idx
/* 805E8E88  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805E8E8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E8E90  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805E8E94  7C 60 22 14 */	add r3, r0, r4
/* 805E8E98  3C 83 00 01 */	addis r4, r3, 1
/* 805E8E9C  38 84 C3 6C */	addi r4, r4, -15508
lbl_805E8EA0:
/* 805E8EA0  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 805E8EA4  38 A3 D6 00 */	addi r5, r3, -10752
/* 805E8EA8  54 A0 EF 7A */	rlwinm r0, r5, 0x1d, 0x1d, 0x1d
/* 805E8EAC  7C 64 00 2E */	lwzx r3, r4, r0
/* 805E8EB0  54 A0 06 FE */	clrlwi r0, r5, 0x1b
/* 805E8EB4  7C 60 04 30 */	srw r0, r3, r0
/* 805E8EB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E8EBC  41 82 00 08 */	beq lbl_805E8EC4
/* 805E8EC0  3B E0 00 01 */	li r31, 1
lbl_805E8EC4:
/* 805E8EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E8EC8  7F E3 FB 78 */	mr r3, r31
/* 805E8ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E8ED0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E8ED4  7C 08 03 A6 */	mtlr r0
/* 805E8ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 805E8EDC  4E 80 00 20 */	blr 
