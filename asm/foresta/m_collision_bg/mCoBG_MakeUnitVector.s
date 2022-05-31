lbl_8038C658:
/* 8038C658  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8038C65C  7C 08 02 A6 */	mflr r0
/* 8038C660  90 01 00 64 */	stw r0, 0x64(r1)
/* 8038C664  39 61 00 60 */	addi r11, r1, 0x60
/* 8038C668  4B D0 E8 41 */	bl func_8009AEA8
/* 8038C66C  7C BB 07 34 */	extsh r27, r5
/* 8038C670  7C FA 3B 78 */	mr r26, r7
/* 8038C674  7F 1B D9 D6 */	mullw r24, r27, r27
/* 8038C678  7C 72 1B 78 */	mr r18, r3
/* 8038C67C  38 00 00 00 */	li r0, 0
/* 8038C680  7D 03 07 34 */	extsh r3, r8
/* 8038C684  90 12 00 00 */	stw r0, 0(r18)
/* 8038C688  7F 40 07 34 */	extsh r0, r26
/* 8038C68C  7C 93 23 78 */	mr r19, r4
/* 8038C690  7C 60 00 38 */	and r0, r3, r0
/* 8038C694  3C 80 80 65 */	lis r4, data_80650860@ha /* 0x80650860@ha */
/* 8038C698  7C D4 33 78 */	mr r20, r6
/* 8038C69C  7D 35 4B 78 */	mr r21, r9
/* 8038C6A0  7E 76 9B 78 */	mr r22, r19
/* 8038C6A4  7F 63 DB 78 */	mr r3, r27
/* 8038C6A8  3B C4 08 60 */	addi r30, r4, data_80650860@l /* 0x80650860@l */
/* 8038C6AC  54 19 07 FE */	clrlwi r25, r0, 0x1f
/* 8038C6B0  4B FF FD DD */	bl mCoBG_GetUnitInfSearchData
/* 8038C6B4  3C 80 81 13 */	lis r4, l_ActorInf@ha /* 0x81135560@ha */
/* 8038C6B8  7C 60 1B 78 */	mr r0, r3
/* 8038C6BC  38 A4 55 60 */	addi r5, r4, l_ActorInf@l /* 0x81135560@l */
/* 8038C6C0  38 61 00 0C */	addi r3, r1, 0xc
/* 8038C6C4  80 E5 00 1C */	lwz r7, 0x1c(r5)
/* 8038C6C8  7C 17 03 78 */	mr r23, r0
/* 8038C6CC  80 C5 00 20 */	lwz r6, 0x20(r5)
/* 8038C6D0  38 81 00 08 */	addi r4, r1, 8
/* 8038C6D4  80 05 00 24 */	lwz r0, 0x24(r5)
/* 8038C6D8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8038C6DC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8038C6E0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8038C6E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8038C6E8  48 01 90 79 */	bl mFI_Wpos2BlockNum
/* 8038C6EC  2C 03 00 00 */	cmpwi r3, 0
/* 8038C6F0  41 82 00 24 */	beq lbl_8038C714
/* 8038C6F4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8038C6F8  80 81 00 08 */	lwz r4, 8(r1)
/* 8038C6FC  48 01 9B ED */	bl mFI_BkNum2BlockKind
/* 8038C700  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 8038C704  40 82 00 0C */	bne lbl_8038C710
/* 8038C708  54 60 02 95 */	rlwinm. r0, r3, 0, 0xa, 0xa
/* 8038C70C  41 82 00 08 */	beq lbl_8038C714
lbl_8038C710:
/* 8038C710  3A A0 00 00 */	li r21, 0
lbl_8038C714:
/* 8038C714  7F 40 07 34 */	extsh r0, r26
/* 8038C718  3B BE 02 50 */	addi r29, r30, 0x250
/* 8038C71C  54 1A 10 3A */	slwi r26, r0, 2
/* 8038C720  3B 9E 02 48 */	addi r28, r30, 0x248
/* 8038C724  57 3F 10 3A */	slwi r31, r25, 2
/* 8038C728  3B DE 02 58 */	addi r30, r30, 0x258
/* 8038C72C  3B 20 00 00 */	li r25, 0
/* 8038C730  48 00 01 24 */	b lbl_8038C854
lbl_8038C734:
/* 8038C734  7D 9D D0 2E */	lwzx r12, r29, r26
/* 8038C738  7E 43 93 78 */	mr r3, r18
/* 8038C73C  7E C4 B3 78 */	mr r4, r22
/* 8038C740  7E 85 A3 78 */	mr r5, r20
/* 8038C744  7E A6 AB 78 */	mr r6, r21
/* 8038C748  7D 89 03 A6 */	mtctr r12
/* 8038C74C  4E 80 04 21 */	bctrl 
/* 8038C750  88 17 00 00 */	lbz r0, 0(r23)
/* 8038C754  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8038C758  41 82 00 30 */	beq lbl_8038C788
/* 8038C75C  7C 1B C8 50 */	subf r0, r27, r25
/* 8038C760  7D 9C D0 2E */	lwzx r12, r28, r26
/* 8038C764  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8038C768  7E 43 93 78 */	mr r3, r18
/* 8038C76C  7E C4 B3 78 */	mr r4, r22
/* 8038C770  7E 87 A3 78 */	mr r7, r20
/* 8038C774  7E A8 AB 78 */	mr r8, r21
/* 8038C778  38 C0 00 00 */	li r6, 0
/* 8038C77C  7C B3 02 14 */	add r5, r19, r0
/* 8038C780  7D 89 03 A6 */	mtctr r12
/* 8038C784  4E 80 04 21 */	bctrl 
lbl_8038C788:
/* 8038C788  88 17 00 00 */	lbz r0, 0(r23)
/* 8038C78C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8038C790  41 82 00 30 */	beq lbl_8038C7C0
/* 8038C794  38 19 FF FF */	addi r0, r25, -1
/* 8038C798  7D 9C D0 2E */	lwzx r12, r28, r26
/* 8038C79C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8038C7A0  7E 43 93 78 */	mr r3, r18
/* 8038C7A4  7E C4 B3 78 */	mr r4, r22
/* 8038C7A8  7E 87 A3 78 */	mr r7, r20
/* 8038C7AC  7E A8 AB 78 */	mr r8, r21
/* 8038C7B0  38 C0 00 01 */	li r6, 1
/* 8038C7B4  7C B3 02 14 */	add r5, r19, r0
/* 8038C7B8  7D 89 03 A6 */	mtctr r12
/* 8038C7BC  4E 80 04 21 */	bctrl 
lbl_8038C7C0:
/* 8038C7C0  88 17 00 00 */	lbz r0, 0(r23)
/* 8038C7C4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8038C7C8  41 82 00 30 */	beq lbl_8038C7F8
/* 8038C7CC  7C 19 DA 14 */	add r0, r25, r27
/* 8038C7D0  7D 9C D0 2E */	lwzx r12, r28, r26
/* 8038C7D4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8038C7D8  7E 43 93 78 */	mr r3, r18
/* 8038C7DC  7E C4 B3 78 */	mr r4, r22
/* 8038C7E0  7E 87 A3 78 */	mr r7, r20
/* 8038C7E4  7E A8 AB 78 */	mr r8, r21
/* 8038C7E8  38 C0 00 02 */	li r6, 2
/* 8038C7EC  7C B3 02 14 */	add r5, r19, r0
/* 8038C7F0  7D 89 03 A6 */	mtctr r12
/* 8038C7F4  4E 80 04 21 */	bctrl 
lbl_8038C7F8:
/* 8038C7F8  88 17 00 00 */	lbz r0, 0(r23)
/* 8038C7FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8038C800  41 82 00 30 */	beq lbl_8038C830
/* 8038C804  38 19 00 01 */	addi r0, r25, 1
/* 8038C808  7D 9C D0 2E */	lwzx r12, r28, r26
/* 8038C80C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8038C810  7E 43 93 78 */	mr r3, r18
/* 8038C814  7E C4 B3 78 */	mr r4, r22
/* 8038C818  7E 87 A3 78 */	mr r7, r20
/* 8038C81C  7E A8 AB 78 */	mr r8, r21
/* 8038C820  38 C0 00 03 */	li r6, 3
/* 8038C824  7C B3 02 14 */	add r5, r19, r0
/* 8038C828  7D 89 03 A6 */	mtctr r12
/* 8038C82C  4E 80 04 21 */	bctrl 
lbl_8038C830:
/* 8038C830  7D 9E F8 2E */	lwzx r12, r30, r31
/* 8038C834  7E 43 93 78 */	mr r3, r18
/* 8038C838  7E C4 B3 78 */	mr r4, r22
/* 8038C83C  7E 85 A3 78 */	mr r5, r20
/* 8038C840  7D 89 03 A6 */	mtctr r12
/* 8038C844  4E 80 04 21 */	bctrl 
/* 8038C848  3A F7 00 01 */	addi r23, r23, 1
/* 8038C84C  3A D6 00 30 */	addi r22, r22, 0x30
/* 8038C850  3B 39 00 01 */	addi r25, r25, 1
lbl_8038C854:
/* 8038C854  7C 19 C0 00 */	cmpw r25, r24
/* 8038C858  41 80 FE DC */	blt lbl_8038C734
/* 8038C85C  39 61 00 60 */	addi r11, r1, 0x60
/* 8038C860  4B D0 E6 95 */	bl func_8009AEF4
/* 8038C864  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8038C868  7C 08 03 A6 */	mtlr r0
/* 8038C86C  38 21 00 60 */	addi r1, r1, 0x60
/* 8038C870  4E 80 00 20 */	blr 
