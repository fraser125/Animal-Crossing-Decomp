lbl_8041B66C:
/* 8041B66C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8041B670  7C 08 02 A6 */	mflr r0
/* 8041B674  90 01 00 74 */	stw r0, 0x74(r1)
/* 8041B678  39 61 00 70 */	addi r11, r1, 0x70
/* 8041B67C  4B C7 F8 35 */	bl func_8009AEB0
/* 8041B680  7C 74 1B 78 */	mr r20, r3
/* 8041B684  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041B688  81 14 01 EC */	lwz r8, 0x1ec(r20)
/* 8041B68C  39 23 85 38 */	addi r9, r3, common_data@l /* 0x81138538@l */
/* 8041B690  80 74 01 E8 */	lwz r3, 0x1e8(r20)
/* 8041B694  7C 95 23 78 */	mr r21, r4
/* 8041B698  3B 68 FF FE */	addi r27, r8, -2
/* 8041B69C  7C B6 2B 78 */	mr r22, r5
/* 8041B6A0  38 03 FF FD */	addi r0, r3, -3
/* 8041B6A4  7C D7 33 78 */	mr r23, r6
/* 8041B6A8  7F 5B 01 D6 */	mullw r26, r27, r0
/* 8041B6AC  7C F8 3B 78 */	mr r24, r7
/* 8041B6B0  3F 89 00 02 */	addis r28, r9, 2
/* 8041B6B4  3F E9 00 03 */	addis r31, r9, 3
/* 8041B6B8  3B C1 00 24 */	addi r30, r1, 0x24
/* 8041B6BC  3B A1 00 14 */	addi r29, r1, 0x14
/* 8041B6C0  7F 59 D3 78 */	mr r25, r26
/* 8041B6C4  48 00 01 B8 */	b lbl_8041B87C
lbl_8041B6C8:
/* 8041B6C8  88 9C 61 25 */	lbz r4, 0x6125(r28)
/* 8041B6CC  88 7C 61 23 */	lbz r3, 0x6123(r28)
/* 8041B6D0  88 1C 61 22 */	lbz r0, 0x6122(r28)
/* 8041B6D4  7C 64 19 D6 */	mullw r3, r4, r3
/* 8041B6D8  88 9C 61 20 */	lbz r4, 0x6120(r28)
/* 8041B6DC  7C 00 CA 14 */	add r0, r0, r25
/* 8041B6E0  1C 00 00 07 */	mulli r0, r0, 7
/* 8041B6E4  7C 03 02 14 */	add r0, r3, r0
/* 8041B6E8  7C 04 02 14 */	add r0, r4, r0
/* 8041B6EC  7C B8 00 50 */	subf r5, r24, r0
/* 8041B6F0  7C A3 FE 70 */	srawi r3, r5, 0x1f
/* 8041B6F4  7C 60 2A 78 */	xor r0, r3, r5
/* 8041B6F8  7C A3 00 50 */	subf r5, r3, r0
/* 8041B6FC  7C 05 D3 D6 */	divw r0, r5, r26
/* 8041B700  7C 00 D1 D6 */	mullw r0, r0, r26
/* 8041B704  7C A0 28 50 */	subf r5, r0, r5
/* 8041B708  7C 65 DB D6 */	divw r3, r5, r27
/* 8041B70C  7C 03 D9 D6 */	mullw r0, r3, r27
/* 8041B710  38 83 00 02 */	addi r4, r3, 2
/* 8041B714  90 81 00 18 */	stw r4, 0x18(r1)
/* 8041B718  7C 60 28 50 */	subf r3, r0, r5
/* 8041B71C  38 63 00 01 */	addi r3, r3, 1
/* 8041B720  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8041B724  4B F8 A9 01 */	bl mFI_CheckBgDma
/* 8041B728  2C 03 00 00 */	cmpwi r3, 0
/* 8041B72C  40 82 01 4C */	bne lbl_8041B878
/* 8041B730  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8041B734  80 14 02 18 */	lwz r0, 0x218(r20)
/* 8041B738  7C 04 00 00 */	cmpw r4, r0
/* 8041B73C  40 82 00 14 */	bne lbl_8041B750
/* 8041B740  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B744  80 14 02 14 */	lwz r0, 0x214(r20)
/* 8041B748  7C 03 00 00 */	cmpw r3, r0
/* 8041B74C  41 82 01 2C */	beq lbl_8041B878
lbl_8041B750:
/* 8041B750  80 14 02 24 */	lwz r0, 0x224(r20)
/* 8041B754  7C 04 00 00 */	cmpw r4, r0
/* 8041B758  40 82 00 14 */	bne lbl_8041B76C
/* 8041B75C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B760  80 14 02 20 */	lwz r0, 0x220(r20)
/* 8041B764  7C 03 00 00 */	cmpw r3, r0
/* 8041B768  41 82 01 10 */	beq lbl_8041B878
lbl_8041B76C:
/* 8041B76C  80 14 02 30 */	lwz r0, 0x230(r20)
/* 8041B770  7C 04 00 00 */	cmpw r4, r0
/* 8041B774  40 82 00 14 */	bne lbl_8041B788
/* 8041B778  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B77C  80 14 02 2C */	lwz r0, 0x22c(r20)
/* 8041B780  7C 03 00 00 */	cmpw r3, r0
/* 8041B784  41 82 00 F4 */	beq lbl_8041B878
lbl_8041B788:
/* 8041B788  80 14 02 3C */	lwz r0, 0x23c(r20)
/* 8041B78C  7C 04 00 00 */	cmpw r4, r0
/* 8041B790  40 82 00 14 */	bne lbl_8041B7A4
/* 8041B794  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B798  80 14 02 38 */	lwz r0, 0x238(r20)
/* 8041B79C  7C 03 00 00 */	cmpw r3, r0
/* 8041B7A0  41 82 00 D8 */	beq lbl_8041B878
lbl_8041B7A4:
/* 8041B7A4  80 14 02 48 */	lwz r0, 0x248(r20)
/* 8041B7A8  7C 04 00 00 */	cmpw r4, r0
/* 8041B7AC  40 82 00 14 */	bne lbl_8041B7C0
/* 8041B7B0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B7B4  80 14 02 44 */	lwz r0, 0x244(r20)
/* 8041B7B8  7C 03 00 00 */	cmpw r3, r0
/* 8041B7BC  41 82 00 BC */	beq lbl_8041B878
lbl_8041B7C0:
/* 8041B7C0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B7C4  38 81 00 08 */	addi r4, r1, 8
/* 8041B7C8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8041B7CC  90 61 00 08 */	stw r3, 8(r1)
/* 8041B7D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041B7D4  80 75 00 00 */	lwz r3, 0(r21)
/* 8041B7D8  4B F8 2B BD */	bl mEv_use_block_by_other_event
/* 8041B7DC  2C 03 00 00 */	cmpwi r3, 0
/* 8041B7E0  40 82 00 98 */	bne lbl_8041B878
/* 8041B7E4  80 DF 88 6C */	lwz r6, -0x7794(r31)
/* 8041B7E8  7F C3 F3 78 */	mr r3, r30
/* 8041B7EC  80 1F 88 70 */	lwz r0, -0x7790(r31)
/* 8041B7F0  38 81 00 20 */	addi r4, r1, 0x20
/* 8041B7F4  38 A1 00 28 */	addi r5, r1, 0x28
/* 8041B7F8  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8041B7FC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8041B800  80 1F 88 74 */	lwz r0, -0x778c(r31)
/* 8041B804  90 01 00 30 */	stw r0, 0x30(r1)
/* 8041B808  4B F8 9F 59 */	bl mFI_Wpos2BlockNum
/* 8041B80C  2C 03 00 00 */	cmpwi r3, 0
/* 8041B810  41 82 00 24 */	beq lbl_8041B834
/* 8041B814  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8041B818  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041B81C  7C 03 00 00 */	cmpw r3, r0
/* 8041B820  40 82 00 14 */	bne lbl_8041B834
/* 8041B824  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B828  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8041B82C  7C 03 00 00 */	cmpw r3, r0
/* 8041B830  41 82 00 48 */	beq lbl_8041B878
lbl_8041B834:
/* 8041B834  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8041B838  7F A3 EB 78 */	mr r3, r29
/* 8041B83C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8041B840  38 81 00 10 */	addi r4, r1, 0x10
/* 8041B844  38 E0 00 02 */	li r7, 2
/* 8041B848  4B FB 7B 31 */	bl mNpc_GetMakeUtNuminBlock_hide_hard_area
/* 8041B84C  2C 03 00 00 */	cmpwi r3, 0
/* 8041B850  41 82 00 28 */	beq lbl_8041B878
/* 8041B854  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B858  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8041B85C  90 76 00 00 */	stw r3, 0(r22)
/* 8041B860  90 16 00 04 */	stw r0, 4(r22)
/* 8041B864  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8041B868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041B86C  90 77 00 00 */	stw r3, 0(r23)
/* 8041B870  90 17 00 04 */	stw r0, 4(r23)
/* 8041B874  48 00 00 10 */	b lbl_8041B884
lbl_8041B878:
/* 8041B878  3B 39 FF FF */	addi r25, r25, -1
lbl_8041B87C:
/* 8041B87C  2C 19 00 00 */	cmpwi r25, 0
/* 8041B880  41 81 FE 48 */	bgt lbl_8041B6C8
lbl_8041B884:
/* 8041B884  7F 23 CB 78 */	mr r3, r25
/* 8041B888  39 61 00 70 */	addi r11, r1, 0x70
/* 8041B88C  4B C7 F6 71 */	bl func_8009AEFC
/* 8041B890  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8041B894  7C 08 03 A6 */	mtlr r0
/* 8041B898  38 21 00 70 */	addi r1, r1, 0x70
/* 8041B89C  4E 80 00 20 */	blr 
