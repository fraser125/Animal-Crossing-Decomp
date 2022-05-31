lbl_803D74C4:
/* 803D74C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D74C8  7C 08 02 A6 */	mflr r0
/* 803D74CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D74D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D74D4  7C 7F 1B 78 */	mr r31, r3
/* 803D74D8  38 60 00 00 */	li r3, 0
/* 803D74DC  4B FF FF AD */	bl func_803D7488
/* 803D74E0  28 03 00 00 */	cmplwi r3, 0
/* 803D74E4  41 82 00 28 */	beq lbl_803D750C
/* 803D74E8  93 E3 00 00 */	stw r31, 0(r3)
/* 803D74EC  3C 80 80 66 */	lis r4, mNPS_schedule@ha /* 0x8065B6D8@ha */
/* 803D74F0  38 84 B6 D8 */	addi r4, r4, mNPS_schedule@l /* 0x8065B6D8@l */
/* 803D74F4  38 00 00 00 */	li r0, 0
/* 803D74F8  88 BF 00 0D */	lbz r5, 0xd(r31)
/* 803D74FC  54 A5 10 3A */	slwi r5, r5, 2
/* 803D7500  7C 84 28 2E */	lwzx r4, r4, r5
/* 803D7504  90 83 00 04 */	stw r4, 4(r3)
/* 803D7508  90 03 00 0C */	stw r0, 0xc(r3)
lbl_803D750C:
/* 803D750C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7514  7C 08 03 A6 */	mtlr r0
/* 803D7518  38 21 00 10 */	addi r1, r1, 0x10
/* 803D751C  4E 80 00 20 */	blr 
