lbl_805C4494:
/* 805C4494  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C4498  7C 08 02 A6 */	mflr r0
/* 805C449C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C44A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C44A4  4B AD 6A 25 */	bl func_8009AEC8
/* 805C44A8  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805C44AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C44B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C44B4  38 A0 00 00 */	li r5, 0
/* 805C44B8  83 C6 09 D4 */	lwz r30, 0x9d4(r6)
/* 805C44BC  38 80 00 01 */	li r4, 1
/* 805C44C0  38 00 00 05 */	li r0, 5
/* 805C44C4  3F E3 00 02 */	addis r31, r3, 2
/* 805C44C8  90 A6 09 3C */	stw r5, 0x93c(r6)
/* 805C44CC  90 A6 06 88 */	stw r5, 0x688(r6)
/* 805C44D0  90 86 06 B4 */	stw r4, 0x6b4(r6)
/* 805C44D4  B0 06 06 B8 */	sth r0, 0x6b8(r6)
/* 805C44D8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C44DC  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 805C44E0  90 1E 00 08 */	stw r0, 8(r30)
/* 805C44E4  4B FF F3 5D */	bl mBN_total_item_bell
/* 805C44E8  80 1E 00 08 */	lwz r0, 8(r30)
/* 805C44EC  7C 00 1A 14 */	add r0, r0, r3
/* 805C44F0  7F C3 F3 78 */	mr r3, r30
/* 805C44F4  90 1E 00 08 */	stw r0, 8(r30)
/* 805C44F8  80 1E 00 08 */	lwz r0, 8(r30)
/* 805C44FC  90 1E 00 04 */	stw r0, 4(r30)
/* 805C4500  4B FF F2 FD */	bl func_805C37FC
/* 805C4504  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 805C4508  3C 80 80 6C */	lis r4, data_806C7A90@ha /* 0x806C7A90@ha */
/* 805C450C  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 805C4510  3C 60 80 6C */	lis r3, aNSM_itemNo@ha /* 0x806C7AA0@ha */
/* 805C4514  90 1E 00 00 */	stw r0, 0(r30)
/* 805C4518  3B 64 7A 90 */	addi r27, r4, data_806C7A90@l /* 0x806C7A90@l */
/* 805C451C  3B 83 7A A0 */	addi r28, r3, aNSM_itemNo@l /* 0x806C7AA0@l */
/* 805C4520  3B 40 00 00 */	li r26, 0
/* 805C4524  3B A0 00 00 */	li r29, 0
lbl_805C4528:
/* 805C4528  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C452C  38 A0 00 00 */	li r5, 0
/* 805C4530  7C 9C EA 2E */	lhzx r4, r28, r29
/* 805C4534  4B E1 C4 99 */	bl mPr_GetPossessionItemSumWithCond
/* 805C4538  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 805C453C  3B 5A 00 01 */	addi r26, r26, 1
/* 805C4540  80 9E 00 00 */	lwz r4, 0(r30)
/* 805C4544  2C 1A 00 04 */	cmpwi r26, 4
/* 805C4548  7C 03 01 D6 */	mullw r0, r3, r0
/* 805C454C  3B BD 00 02 */	addi r29, r29, 2
/* 805C4550  7C 04 02 14 */	add r0, r4, r0
/* 805C4554  90 1E 00 00 */	stw r0, 0(r30)
/* 805C4558  41 80 FF D0 */	blt lbl_805C4528
/* 805C455C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C4560  38 80 00 00 */	li r4, 0
/* 805C4564  38 A0 00 00 */	li r5, 0
/* 805C4568  4B E1 C4 65 */	bl mPr_GetPossessionItemSumWithCond
/* 805C456C  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 805C4570  38 00 00 00 */	li r0, 0
/* 805C4574  80 BE 00 00 */	lwz r5, 0(r30)
/* 805C4578  7C 63 21 D6 */	mullw r3, r3, r4
/* 805C457C  7C 65 1A 14 */	add r3, r5, r3
/* 805C4580  90 7E 00 00 */	stw r3, 0(r30)
/* 805C4584  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C4588  80 63 12 2C */	lwz r3, 0x122c(r3)
/* 805C458C  90 7E 00 0C */	stw r3, 0xc(r30)
/* 805C4590  90 1E 00 10 */	stw r0, 0x10(r30)
/* 805C4594  39 61 00 20 */	addi r11, r1, 0x20
/* 805C4598  4B AD 69 7D */	bl func_8009AF14
/* 805C459C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C45A0  7C 08 03 A6 */	mtlr r0
/* 805C45A4  38 21 00 20 */	addi r1, r1, 0x20
/* 805C45A8  4E 80 00 20 */	blr 
