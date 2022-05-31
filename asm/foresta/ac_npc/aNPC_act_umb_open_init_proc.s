lbl_80533B60:
/* 80533B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533B64  7C 08 02 A6 */	mflr r0
/* 80533B68  3C 80 00 01 */	lis r4, 0x0001 /* 0x000083E7@ha */
/* 80533B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533B70  38 00 00 00 */	li r0, 0
/* 80533B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533B78  7C 7F 1B 78 */	mr r31, r3
/* 80533B7C  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80533B80  38 00 FF FF */	li r0, -1
/* 80533B84  90 03 08 F4 */	stw r0, 0x8f4(r3)
/* 80533B88  38 04 83 E7 */	addi r0, r4, 0x83E7 /* 0x000083E7@l */
/* 80533B8C  90 03 08 40 */	stw r0, 0x840(r3)
/* 80533B90  88 03 08 18 */	lbz r0, 0x818(r3)
/* 80533B94  28 00 00 01 */	cmplwi r0, 1
/* 80533B98  40 82 00 38 */	bne lbl_80533BD0
/* 80533B9C  4B FF 8C A5 */	bl func_8052C840
/* 80533BA0  3C 80 80 6A */	lis r4, aNPC_wait_action@ha /* 0x806A2468@ha */
/* 80533BA4  7C 60 1B 78 */	mr r0, r3
/* 80533BA8  38 84 24 68 */	addi r4, r4, aNPC_wait_action@l /* 0x806A2468@l */
/* 80533BAC  7F E3 FB 78 */	mr r3, r31
/* 80533BB0  7C 84 00 AE */	lbzx r4, r4, r0
/* 80533BB4  4B FF C1 79 */	bl aNPC_setupAction
/* 80533BB8  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 80533BBC  38 00 00 00 */	li r0, 0
/* 80533BC0  90 1F 01 BC */	stw r0, 0x1bc(r31)
/* 80533BC4  C0 03 92 74 */	lfs f0, data_80649274@l(r3)  /* 0x80649274@l */
/* 80533BC8  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 80533BCC  48 00 00 0C */	b lbl_80533BD8
lbl_80533BD0:
/* 80533BD0  38 80 00 1E */	li r4, 0x1e
/* 80533BD4  4B FF C1 59 */	bl aNPC_setupAction
lbl_80533BD8:
/* 80533BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533BE0  7C 08 03 A6 */	mtlr r0
/* 80533BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80533BE8  4E 80 00 20 */	blr 
