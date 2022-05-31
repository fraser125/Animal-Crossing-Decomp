lbl_803CA2D8:
/* 803CA2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CA2DC  7C 08 02 A6 */	mflr r0
/* 803CA2E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CA2E4  38 A0 00 08 */	li r5, 8
/* 803CA2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CA2EC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CA2F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CA2F4  3F E4 00 01 */	addis r31, r4, 1
/* 803CA2F8  3B FF 91 20 */	addi r31, r31, -28384
/* 803CA2FC  7F E4 FB 78 */	mr r4, r31
/* 803CA300  4B FF 07 25 */	bl func_803BAA24
/* 803CA304  7F E3 FB 78 */	mr r3, r31
/* 803CA308  38 80 00 08 */	li r4, 8
/* 803CA30C  38 A0 00 20 */	li r5, 0x20
/* 803CA310  4B FF 23 15 */	bl func_803BC624
/* 803CA314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CA318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CA31C  7C 08 03 A6 */	mtlr r0
/* 803CA320  38 21 00 10 */	addi r1, r1, 0x10
/* 803CA324  4E 80 00 20 */	blr 
