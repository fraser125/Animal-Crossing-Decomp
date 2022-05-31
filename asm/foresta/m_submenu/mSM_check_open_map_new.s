lbl_803EF7A8:
/* 803EF7A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EF7AC  7C 08 02 A6 */	mflr r0
/* 803EF7B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EF7B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803EF7B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803EF7BC  4B FE 9E 85 */	bl get_player_actor_withoutCheck
/* 803EF7C0  7C 7E 1B 78 */	mr r30, r3
/* 803EF7C4  3B E0 00 00 */	li r31, 0
/* 803EF7C8  38 60 00 40 */	li r3, 0x40
/* 803EF7CC  4B FA 67 45 */	bl chkTrigger
/* 803EF7D0  2C 03 00 00 */	cmpwi r3, 0
/* 803EF7D4  41 82 00 20 */	beq lbl_803EF7F4
/* 803EF7D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EF7DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EF7E0  3C 63 00 02 */	addis r3, r3, 2
/* 803EF7E4  88 03 61 44 */	lbz r0, 0x6144(r3)
/* 803EF7E8  28 00 00 01 */	cmplwi r0, 1
/* 803EF7EC  40 82 00 08 */	bne lbl_803EF7F4
/* 803EF7F0  3B E0 00 01 */	li r31, 1
lbl_803EF7F4:
/* 803EF7F4  2C 1F 00 00 */	cmpwi r31, 0
/* 803EF7F8  40 82 00 0C */	bne lbl_803EF804
/* 803EF7FC  38 60 00 00 */	li r3, 0
/* 803EF800  48 00 00 78 */	b lbl_803EF878
lbl_803EF804:
/* 803EF804  28 1E 00 00 */	cmplwi r30, 0
/* 803EF808  40 82 00 0C */	bne lbl_803EF814
/* 803EF80C  38 60 00 00 */	li r3, 0
/* 803EF810  48 00 00 68 */	b lbl_803EF878
lbl_803EF814:
/* 803EF814  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EF818  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EF81C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803EF820  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803EF824  41 82 00 0C */	beq lbl_803EF830
/* 803EF828  2C 00 00 30 */	cmpwi r0, 0x30
/* 803EF82C  40 82 00 0C */	bne lbl_803EF838
lbl_803EF830:
/* 803EF830  38 60 00 00 */	li r3, 0
/* 803EF834  48 00 00 44 */	b lbl_803EF878
lbl_803EF838:
/* 803EF838  80 DE 00 28 */	lwz r6, 0x28(r30)
/* 803EF83C  38 61 00 0C */	addi r3, r1, 0xc
/* 803EF840  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 803EF844  38 81 00 08 */	addi r4, r1, 8
/* 803EF848  38 A1 00 10 */	addi r5, r1, 0x10
/* 803EF84C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 803EF850  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF854  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 803EF858  90 01 00 18 */	stw r0, 0x18(r1)
/* 803EF85C  4B FB 5F 05 */	bl mFI_Wpos2BlockNum
/* 803EF860  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803EF864  3C A0 00 10 */	lis r5, 0x10
/* 803EF868  80 81 00 08 */	lwz r4, 8(r1)
/* 803EF86C  4B FB 6B 4D */	bl mFI_CheckBlockKind_OR
/* 803EF870  7C 60 00 34 */	cntlzw r0, r3
/* 803EF874  54 03 D9 7E */	srwi r3, r0, 5
lbl_803EF878:
/* 803EF878  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EF87C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803EF880  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803EF884  7C 08 03 A6 */	mtlr r0
/* 803EF888  38 21 00 30 */	addi r1, r1, 0x30
/* 803EF88C  4E 80 00 20 */	blr 
