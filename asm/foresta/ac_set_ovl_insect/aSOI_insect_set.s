lbl_8049C590:
/* 8049C590  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049C594  7C 08 02 A6 */	mflr r0
/* 8049C598  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049C59C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049C5A0  4B BF E9 29 */	bl func_8009AEC8
/* 8049C5A4  7C 7A 1B 78 */	mr r26, r3
/* 8049C5A8  7C 9B 23 78 */	mr r27, r4
/* 8049C5AC  3B BA 41 98 */	addi r29, r26, 0x4198
/* 8049C5B0  3B C0 00 00 */	li r30, 0
/* 8049C5B4  4B FF E5 D5 */	bl aSOI_ins_block_check
/* 8049C5B8  2C 03 00 00 */	cmpwi r3, 0
/* 8049C5BC  40 82 00 88 */	bne lbl_8049C644
/* 8049C5C0  3C 60 81 1D */	lis r3, data_811CF180@ha /* 0x811CF180@ha */
/* 8049C5C4  38 63 F1 80 */	addi r3, r3, data_811CF180@l /* 0x811CF180@l */
/* 8049C5C8  4B FF E3 35 */	bl func_8049A8FC
/* 8049C5CC  7F 43 D3 78 */	mr r3, r26
/* 8049C5D0  4B FF ED FD */	bl aSOI_ins_make_range_data
/* 8049C5D4  88 1D 02 0C */	lbz r0, 0x20c(r29)
/* 8049C5D8  28 00 00 00 */	cmplwi r0, 0
/* 8049C5DC  41 82 00 68 */	beq lbl_8049C644
/* 8049C5E0  3C 60 81 1D */	lis r3, copy_range@ha /* 0x811CF1A4@ha */
/* 8049C5E4  3B 80 00 00 */	li r28, 0
/* 8049C5E8  3B C3 F1 A4 */	addi r30, r3, copy_range@l /* 0x811CF1A4@l */
/* 8049C5EC  3B E0 00 00 */	li r31, 0
lbl_8049C5F0:
/* 8049C5F0  7C 7D FA 14 */	add r3, r29, r31
/* 8049C5F4  7C 9E FA 14 */	add r4, r30, r31
/* 8049C5F8  38 A0 00 0C */	li r5, 0xc
/* 8049C5FC  4B BC 0A 21 */	bl func_8005D01C
/* 8049C600  3B 9C 00 01 */	addi r28, r28, 1
/* 8049C604  3B FF 00 0C */	addi r31, r31, 0xc
/* 8049C608  2C 1C 00 2B */	cmpwi r28, 0x2b
/* 8049C60C  41 80 FF E4 */	blt lbl_8049C5F0
/* 8049C610  3C 60 81 1D */	lis r3, data_811CF180@ha /* 0x811CF180@ha */
/* 8049C614  3C 80 81 1D */	lis r4, copy_range@ha /* 0x811CF1A4@ha */
/* 8049C618  38 A4 F1 A4 */	addi r5, r4, copy_range@l /* 0x811CF1A4@l */
/* 8049C61C  88 DD 02 0C */	lbz r6, 0x20c(r29)
/* 8049C620  38 63 F1 80 */	addi r3, r3, data_811CF180@l /* 0x811CF180@l */
/* 8049C624  38 9A 41 80 */	addi r4, r26, 0x4180
/* 8049C628  4B FF FB BD */	bl aSOI_ins_decide_insect
/* 8049C62C  3C 60 81 1D */	lis r3, data_811CF180@ha /* 0x811CF180@ha */
/* 8049C630  7F 65 DB 78 */	mr r5, r27
/* 8049C634  38 63 F1 80 */	addi r3, r3, data_811CF180@l /* 0x811CF180@l */
/* 8049C638  38 9A 41 80 */	addi r4, r26, 0x4180
/* 8049C63C  4B FF FE 55 */	bl aSOI_ins_make
/* 8049C640  7C 7E 1B 78 */	mr r30, r3
lbl_8049C644:
/* 8049C644  7F C3 F3 78 */	mr r3, r30
/* 8049C648  39 61 00 20 */	addi r11, r1, 0x20
/* 8049C64C  4B BF E8 C9 */	bl func_8009AF14
/* 8049C650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049C654  7C 08 03 A6 */	mtlr r0
/* 8049C658  38 21 00 20 */	addi r1, r1, 0x20
/* 8049C65C  4E 80 00 20 */	blr 
