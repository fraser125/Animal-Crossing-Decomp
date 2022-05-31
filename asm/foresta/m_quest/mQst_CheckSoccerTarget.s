lbl_803E4500:
/* 803E4500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E4504  7C 08 02 A6 */	mflr r0
/* 803E4508  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E450C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E4510  3B E0 00 00 */	li r31, 0
/* 803E4514  93 C1 00 08 */	stw r30, 8(r1)
/* 803E4518  7C 7E 1B 79 */	or. r30, r3, r3
/* 803E451C  41 82 00 54 */	beq lbl_803E4570
/* 803E4520  88 1E 00 02 */	lbz r0, 2(r30)
/* 803E4524  28 00 00 04 */	cmplwi r0, 4
/* 803E4528  40 82 00 48 */	bne lbl_803E4570
/* 803E452C  38 60 00 01 */	li r3, 1
/* 803E4530  4B FF F0 35 */	bl mQst_GetOccuredContestIdx
/* 803E4534  2C 03 FF FF */	cmpwi r3, -1
/* 803E4538  41 82 00 38 */	beq lbl_803E4570
/* 803E453C  1C 83 09 88 */	mulli r4, r3, 0x988
/* 803E4540  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E4544  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803E4548  7C 60 22 14 */	add r3, r0, r4
/* 803E454C  3C 63 00 01 */	addis r3, r3, 1
/* 803E4550  88 03 7C E1 */	lbz r0, 0x7ce1(r3)
/* 803E4554  38 63 74 38 */	addi r3, r3, 0x7438
/* 803E4558  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 803E455C  28 00 00 02 */	cmplwi r0, 2
/* 803E4560  40 82 00 10 */	bne lbl_803E4570
/* 803E4564  80 9E 01 7C */	lwz r4, 0x17c(r30)
/* 803E4568  4B FE 6F 09 */	bl mNpc_CheckCmpAnimalPersonalID
/* 803E456C  7C 7F 1B 78 */	mr r31, r3
lbl_803E4570:
/* 803E4570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E4574  7F E3 FB 78 */	mr r3, r31
/* 803E4578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E457C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E4580  7C 08 03 A6 */	mtlr r0
/* 803E4584  38 21 00 10 */	addi r1, r1, 0x10
/* 803E4588  4E 80 00 20 */	blr 
