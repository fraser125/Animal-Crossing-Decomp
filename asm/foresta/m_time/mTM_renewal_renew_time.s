lbl_803F34E4:
/* 803F34E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F34E8  7C 08 02 A6 */	mflr r0
/* 803F34EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F34F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F34F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F34F8  3C 63 00 02 */	addis r3, r3, 2
/* 803F34FC  A0 A3 0F 14 */	lhz r5, 0xf14(r3)
/* 803F3500  7C 64 1B 78 */	mr r4, r3
/* 803F3504  A0 03 61 26 */	lhz r0, 0x6126(r3)
/* 803F3508  38 63 0F 14 */	addi r3, r3, 0xf14
/* 803F350C  38 84 61 20 */	addi r4, r4, 0x6120
/* 803F3510  7C 05 00 40 */	cmplw r5, r0
/* 803F3514  40 82 00 24 */	bne lbl_803F3538
/* 803F3518  88 A3 00 02 */	lbz r5, 2(r3)
/* 803F351C  88 04 00 05 */	lbz r0, 5(r4)
/* 803F3520  7C 05 00 40 */	cmplw r5, r0
/* 803F3524  40 82 00 14 */	bne lbl_803F3538
/* 803F3528  88 A3 00 03 */	lbz r5, 3(r3)
/* 803F352C  88 04 00 03 */	lbz r0, 3(r4)
/* 803F3530  7C 05 00 40 */	cmplw r5, r0
/* 803F3534  41 82 00 0C */	beq lbl_803F3540
lbl_803F3538:
/* 803F3538  4B FF FF 29 */	bl mTM_set_renew_time
/* 803F353C  4B FF FF 15 */	bl mTM_set_renew_is
lbl_803F3540:
/* 803F3540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F3544  7C 08 03 A6 */	mtlr r0
/* 803F3548  38 21 00 10 */	addi r1, r1, 0x10
/* 803F354C  4E 80 00 20 */	blr 
