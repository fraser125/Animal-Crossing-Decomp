lbl_8047B4A0:
/* 8047B4A0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8047B4A4  7C 08 02 A6 */	mflr r0
/* 8047B4A8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8047B4AC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8047B4B0  4B C1 F9 E9 */	bl __save_gpr
/* 8047B4B4  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 8047B4B8  7C 6E 1B 78 */	mr r14, r3
/* 8047B4BC  38 6A 85 38 */	addi r3, r10, common_data@l /* 0x81138538@l */
/* 8047B4C0  7C 8F 23 78 */	mr r15, r4
/* 8047B4C4  3E C3 00 02 */	addis r22, r3, 2
/* 8047B4C8  7C B0 2B 78 */	mr r16, r5
/* 8047B4CC  80 96 60 8C */	lwz r4, 0x608c(r22)
/* 8047B4D0  7C D1 33 78 */	mr r17, r6
/* 8047B4D4  88 76 60 03 */	lbz r3, 0x6003(r22)
/* 8047B4D8  7C F2 3B 78 */	mr r18, r7
/* 8047B4DC  28 04 00 00 */	cmplwi r4, 0
/* 8047B4E0  7D 13 43 78 */	mr r19, r8
/* 8047B4E4  7D 34 4B 78 */	mr r20, r9
/* 8047B4E8  41 82 06 D0 */	beq lbl_8047BBB8
/* 8047B4EC  80 84 00 00 */	lwz r4, 0(r4)
/* 8047B4F0  4B FF 76 ED */	bl aMR_CheckRoomOwner
/* 8047B4F4  2C 03 00 00 */	cmpwi r3, 0
/* 8047B4F8  41 82 06 C0 */	beq lbl_8047BBB8
/* 8047B4FC  7D C3 73 78 */	mr r3, r14
/* 8047B500  4B F5 E1 41 */	bl get_player_actor_withoutCheck
/* 8047B504  7C 75 1B 78 */	mr r21, r3
/* 8047B508  38 61 00 2C */	addi r3, r1, 0x2c
/* 8047B50C  80 B5 00 28 */	lwz r5, 0x28(r21)
/* 8047B510  80 95 00 2C */	lwz r4, 0x2c(r21)
/* 8047B514  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8047B518  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8047B51C  80 15 00 30 */	lwz r0, 0x30(r21)
/* 8047B520  90 01 00 40 */	stw r0, 0x40(r1)
/* 8047B524  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8047B528  90 81 00 30 */	stw r4, 0x30(r1)
/* 8047B52C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047B530  4B F2 BF 01 */	bl mFI_GetUnitFG
/* 8047B534  80 96 60 8C */	lwz r4, 0x608c(r22)
/* 8047B538  38 61 00 38 */	addi r3, r1, 0x38
/* 8047B53C  A9 D5 00 DE */	lha r14, 0xde(r21)
/* 8047B540  83 24 00 00 */	lwz r25, 0(r4)
/* 8047B544  4B F1 62 B1 */	bl mCoBG_CheckUtFlat
/* 8047B548  2C 03 00 00 */	cmpwi r3, 0
/* 8047B54C  40 82 00 0C */	bne lbl_8047B558
/* 8047B550  38 60 FF FE */	li r3, -2
/* 8047B554  48 00 06 78 */	b lbl_8047BBCC
lbl_8047B558:
/* 8047B558  80 16 60 8C */	lwz r0, 0x608c(r22)
/* 8047B55C  28 00 00 00 */	cmplwi r0, 0
/* 8047B560  41 82 00 38 */	beq lbl_8047B598
/* 8047B564  28 19 00 00 */	cmplwi r25, 0
/* 8047B568  41 82 00 30 */	beq lbl_8047B598
/* 8047B56C  7F 23 CB 78 */	mr r3, r25
/* 8047B570  38 80 00 00 */	li r4, 0
/* 8047B574  4B FF CC FD */	bl aMR_CheckReserveFlag
/* 8047B578  2C 03 00 00 */	cmpwi r3, 0
/* 8047B57C  40 82 00 1C */	bne lbl_8047B598
/* 8047B580  38 00 00 00 */	li r0, 0
/* 8047B584  38 60 FF FE */	li r3, -2
/* 8047B588  B0 12 00 00 */	sth r0, 0(r18)
/* 8047B58C  90 13 00 00 */	stw r0, 0(r19)
/* 8047B590  90 14 00 00 */	stw r0, 0(r20)
/* 8047B594  48 00 06 38 */	b lbl_8047BBCC
lbl_8047B598:
/* 8047B598  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 8047B59C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8047B5A0  80 E1 00 3C */	lwz r7, 0x3c(r1)
/* 8047B5A4  38 81 00 18 */	addi r4, r1, 0x18
/* 8047B5A8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8047B5AC  38 A1 00 20 */	addi r5, r1, 0x20
/* 8047B5B0  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8047B5B4  38 C0 00 00 */	li r6, 0
/* 8047B5B8  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8047B5BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8047B5C0  4B FF 5A 91 */	bl aMR_Wpos2PlaceNumber
/* 8047B5C4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8047B5C8  7D E3 7B 78 */	mr r3, r15
/* 8047B5CC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8047B5D0  54 00 20 36 */	slwi r0, r0, 4
/* 8047B5D4  7F 64 02 14 */	add r27, r4, r0
/* 8047B5D8  4B FF FE C1 */	bl aMR_SearchReserveRam
/* 8047B5DC  2C 03 00 00 */	cmpwi r3, 0
/* 8047B5E0  41 82 05 D0 */	beq lbl_8047BBB0
/* 8047B5E4  4B FF 59 85 */	bl aMR_CountFurniture
/* 8047B5E8  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047B5EC  38 84 DF E8 */	addi r4, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047B5F0  80 04 00 08 */	lwz r0, 8(r4)
/* 8047B5F4  7C 03 00 00 */	cmpw r3, r0
/* 8047B5F8  40 80 05 B8 */	bge lbl_8047BBB0
/* 8047B5FC  4B FF 58 D5 */	bl aMR_SearchFreeFurnitureActorNumber
/* 8047B600  7C 7A 1B 78 */	mr r26, r3
/* 8047B604  2C 1A FF FF */	cmpwi r26, -1
/* 8047B608  41 82 05 A8 */	beq lbl_8047BBB0
/* 8047B60C  A8 75 00 DE */	lha r3, 0xde(r21)
/* 8047B610  3A C0 00 00 */	li r22, 0
/* 8047B614  3C 63 00 01 */	addis r3, r3, 1
/* 8047B618  38 03 80 00 */	addi r0, r3, -32768
/* 8047B61C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8047B620  28 00 20 00 */	cmplwi r0, 0x2000
/* 8047B624  41 80 00 14 */	blt lbl_8047B638
/* 8047B628  28 00 60 00 */	cmplwi r0, 0x6000
/* 8047B62C  41 81 00 0C */	bgt lbl_8047B638
/* 8047B630  3A C0 00 01 */	li r22, 1
/* 8047B634  48 00 00 30 */	b lbl_8047B664
lbl_8047B638:
/* 8047B638  28 00 60 00 */	cmplwi r0, 0x6000
/* 8047B63C  41 80 00 14 */	blt lbl_8047B650
/* 8047B640  28 00 A0 00 */	cmplwi r0, 0xa000
/* 8047B644  41 81 00 0C */	bgt lbl_8047B650
/* 8047B648  3A C0 00 02 */	li r22, 2
/* 8047B64C  48 00 00 18 */	b lbl_8047B664
lbl_8047B650:
/* 8047B650  28 00 A0 00 */	cmplwi r0, 0xa000
/* 8047B654  41 80 00 10 */	blt lbl_8047B664
/* 8047B658  28 00 E0 00 */	cmplwi r0, 0xe000
/* 8047B65C  41 81 00 08 */	bgt lbl_8047B664
/* 8047B660  3A C0 00 03 */	li r22, 3
lbl_8047B664:
/* 8047B664  55 E0 04 3E */	clrlwi r0, r15, 0x10
/* 8047B668  28 00 03 C4 */	cmplwi r0, 0x3c4
/* 8047B66C  41 82 00 14 */	beq lbl_8047B680
/* 8047B670  28 00 03 FC */	cmplwi r0, 0x3fc
/* 8047B674  41 80 00 14 */	blt lbl_8047B688
/* 8047B678  28 00 04 03 */	cmplwi r0, 0x403
/* 8047B67C  41 81 00 0C */	bgt lbl_8047B688
lbl_8047B680:
/* 8047B680  3A D6 00 01 */	addi r22, r22, 1
/* 8047B684  48 00 00 14 */	b lbl_8047B698
lbl_8047B688:
/* 8047B688  55 E0 04 3E */	clrlwi r0, r15, 0x10
/* 8047B68C  28 00 03 3B */	cmplwi r0, 0x33b
/* 8047B690  40 82 00 08 */	bne lbl_8047B698
/* 8047B694  3A D6 00 02 */	addi r22, r22, 2
lbl_8047B698:
/* 8047B698  7D E3 7B 78 */	mr r3, r15
/* 8047B69C  4B FF 4B 05 */	bl func_804701A0
/* 8047B6A0  7C 7E 1B 78 */	mr r30, r3
/* 8047B6A4  8B 03 00 28 */	lbz r24, 0x28(r3)
/* 8047B6A8  28 18 00 03 */	cmplwi r24, 3
/* 8047B6AC  41 81 01 B4 */	bgt lbl_8047B860
/* 8047B6B0  3B 00 00 00 */	li r24, 0
/* 8047B6B4  56 D5 07 BE */	clrlwi r21, r22, 0x1e
lbl_8047B6B8:
/* 8047B6B8  88 9E 00 28 */	lbz r4, 0x28(r30)
/* 8047B6BC  7F 23 CB 78 */	mr r3, r25
/* 8047B6C0  4B FF 56 55 */	bl aMR_WeightPossible
/* 8047B6C4  2C 03 00 00 */	cmpwi r3, 0
/* 8047B6C8  40 82 00 0C */	bne lbl_8047B6D4
/* 8047B6CC  38 60 FF FF */	li r3, -1
/* 8047B6D0  48 00 04 FC */	b lbl_8047BBCC
lbl_8047B6D4:
/* 8047B6D4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8047B6D8  7D C5 73 78 */	mr r5, r14
/* 8047B6DC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8047B6E0  7F 06 C3 78 */	mr r6, r24
/* 8047B6E4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8047B6E8  38 61 00 14 */	addi r3, r1, 0x14
/* 8047B6EC  38 81 00 10 */	addi r4, r1, 0x10
/* 8047B6F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047B6F4  4B FF C8 71 */	bl aMR_GetPlayerLookAtUnit
/* 8047B6F8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8047B6FC  7F 63 DB 78 */	mr r3, r27
/* 8047B700  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8047B704  7D E5 7B 78 */	mr r5, r15
/* 8047B708  54 00 20 36 */	slwi r0, r0, 4
/* 8047B70C  7E A6 AB 78 */	mr r6, r21
/* 8047B710  7E E4 02 14 */	add r23, r4, r0
/* 8047B714  7E E4 BB 78 */	mr r4, r23
/* 8047B718  4B FF F1 C1 */	bl aMR_CheckPlaceSituation
/* 8047B71C  2C 03 00 00 */	cmpwi r3, 0
/* 8047B720  41 82 00 2C */	beq lbl_8047B74C
/* 8047B724  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8047B728  38 00 00 00 */	li r0, 0
/* 8047B72C  7F 43 D3 78 */	mr r3, r26
/* 8047B730  90 90 00 00 */	stw r4, 0(r16)
/* 8047B734  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8047B738  90 91 00 00 */	stw r4, 0(r17)
/* 8047B73C  90 13 00 00 */	stw r0, 0(r19)
/* 8047B740  B2 B2 00 00 */	sth r21, 0(r18)
/* 8047B744  90 14 00 00 */	stw r0, 0(r20)
/* 8047B748  48 00 04 84 */	b lbl_8047BBCC
lbl_8047B74C:
/* 8047B74C  A0 1E 00 2E */	lhz r0, 0x2e(r30)
/* 8047B750  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8047B754  41 82 00 48 */	beq lbl_8047B79C
/* 8047B758  7F 63 DB 78 */	mr r3, r27
/* 8047B75C  7F 64 DB 78 */	mr r4, r27
/* 8047B760  7D E5 7B 78 */	mr r5, r15
/* 8047B764  7E A6 AB 78 */	mr r6, r21
/* 8047B768  4B FF F1 71 */	bl aMR_CheckPlaceSituation
/* 8047B76C  2C 03 00 00 */	cmpwi r3, 0
/* 8047B770  41 82 00 2C */	beq lbl_8047B79C
/* 8047B774  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8047B778  38 00 00 00 */	li r0, 0
/* 8047B77C  7F 43 D3 78 */	mr r3, r26
/* 8047B780  90 90 00 00 */	stw r4, 0(r16)
/* 8047B784  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8047B788  90 91 00 00 */	stw r4, 0(r17)
/* 8047B78C  90 13 00 00 */	stw r0, 0(r19)
/* 8047B790  B2 B2 00 00 */	sth r21, 0(r18)
/* 8047B794  90 14 00 00 */	stw r0, 0(r20)
/* 8047B798  48 00 04 34 */	b lbl_8047BBCC
lbl_8047B79C:
/* 8047B79C  3B 18 00 01 */	addi r24, r24, 1
/* 8047B7A0  2C 18 00 05 */	cmpwi r24, 5
/* 8047B7A4  41 80 FF 14 */	blt lbl_8047B6B8
/* 8047B7A8  39 C0 00 00 */	li r14, 0
lbl_8047B7AC:
/* 8047B7AC  3A A0 00 00 */	li r21, 0
lbl_8047B7B0:
/* 8047B7B0  7F 63 DB 78 */	mr r3, r27
/* 8047B7B4  7E E4 BB 78 */	mr r4, r23
/* 8047B7B8  7D E5 7B 78 */	mr r5, r15
/* 8047B7BC  55 C6 04 3E */	clrlwi r6, r14, 0x10
/* 8047B7C0  4B FF F1 19 */	bl aMR_CheckPlaceSituation
/* 8047B7C4  2C 03 00 00 */	cmpwi r3, 0
/* 8047B7C8  41 82 00 2C */	beq lbl_8047B7F4
/* 8047B7CC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8047B7D0  38 00 00 00 */	li r0, 0
/* 8047B7D4  7F 43 D3 78 */	mr r3, r26
/* 8047B7D8  90 90 00 00 */	stw r4, 0(r16)
/* 8047B7DC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8047B7E0  90 91 00 00 */	stw r4, 0(r17)
/* 8047B7E4  90 13 00 00 */	stw r0, 0(r19)
/* 8047B7E8  B1 D2 00 00 */	sth r14, 0(r18)
/* 8047B7EC  90 14 00 00 */	stw r0, 0(r20)
/* 8047B7F0  48 00 03 DC */	b lbl_8047BBCC
lbl_8047B7F4:
/* 8047B7F4  A0 1E 00 2E */	lhz r0, 0x2e(r30)
/* 8047B7F8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8047B7FC  41 82 00 48 */	beq lbl_8047B844
/* 8047B800  7F 63 DB 78 */	mr r3, r27
/* 8047B804  7F 64 DB 78 */	mr r4, r27
/* 8047B808  7D E5 7B 78 */	mr r5, r15
/* 8047B80C  55 C6 04 3E */	clrlwi r6, r14, 0x10
/* 8047B810  4B FF F0 C9 */	bl aMR_CheckPlaceSituation
/* 8047B814  2C 03 00 00 */	cmpwi r3, 0
/* 8047B818  41 82 00 2C */	beq lbl_8047B844
/* 8047B81C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8047B820  38 00 00 00 */	li r0, 0
/* 8047B824  7F 43 D3 78 */	mr r3, r26
/* 8047B828  90 90 00 00 */	stw r4, 0(r16)
/* 8047B82C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8047B830  90 91 00 00 */	stw r4, 0(r17)
/* 8047B834  90 13 00 00 */	stw r0, 0(r19)
/* 8047B838  B1 D2 00 00 */	sth r14, 0(r18)
/* 8047B83C  90 14 00 00 */	stw r0, 0(r20)
/* 8047B840  48 00 03 8C */	b lbl_8047BBCC
lbl_8047B844:
/* 8047B844  3A B5 00 01 */	addi r21, r21, 1
/* 8047B848  2C 15 00 05 */	cmpwi r21, 5
/* 8047B84C  41 80 FF 64 */	blt lbl_8047B7B0
/* 8047B850  39 CE 00 01 */	addi r14, r14, 1
/* 8047B854  2C 0E 00 04 */	cmpwi r14, 4
/* 8047B858  41 80 FF 54 */	blt lbl_8047B7AC
/* 8047B85C  48 00 03 4C */	b lbl_8047BBA8
lbl_8047B860:
/* 8047B860  55 E0 04 3E */	clrlwi r0, r15, 0x10
/* 8047B864  3C 60 80 69 */	lis r3, aMR_layer_set_info@ha /* 0x80688984@ha */
/* 8047B868  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8047B86C  38 03 89 84 */	addi r0, r3, aMR_layer_set_info@l /* 0x80688984@l */
/* 8047B870  3B 80 00 00 */	li r28, 0
/* 8047B874  90 01 00 50 */	stw r0, 0x50(r1)
lbl_8047B878:
/* 8047B878  88 9E 00 28 */	lbz r4, 0x28(r30)
/* 8047B87C  7F 23 CB 78 */	mr r3, r25
/* 8047B880  4B FF 54 95 */	bl aMR_WeightPossible
/* 8047B884  2C 03 00 00 */	cmpwi r3, 0
/* 8047B888  40 82 00 0C */	bne lbl_8047B894
/* 8047B88C  38 60 FF FF */	li r3, -1
/* 8047B890  48 00 03 3C */	b lbl_8047BBCC
lbl_8047B894:
/* 8047B894  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8047B898  7D C5 73 78 */	mr r5, r14
/* 8047B89C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8047B8A0  7F 86 E3 78 */	mr r6, r28
/* 8047B8A4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8047B8A8  38 61 00 14 */	addi r3, r1, 0x14
/* 8047B8AC  38 81 00 10 */	addi r4, r1, 0x10
/* 8047B8B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047B8B4  4B FF C6 B1 */	bl aMR_GetPlayerLookAtUnit
/* 8047B8B8  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8047B8BC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8047B8C0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8047B8C4  7C 03 00 AE */	lbzx r0, r3, r0
/* 8047B8C8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8047B8CC  28 00 00 02 */	cmplwi r0, 2
/* 8047B8D0  54 60 20 36 */	slwi r0, r3, 4
/* 8047B8D4  7E E4 02 14 */	add r23, r4, r0
/* 8047B8D8  40 82 00 A4 */	bne lbl_8047B97C
/* 8047B8DC  88 1E 00 28 */	lbz r0, 0x28(r30)
/* 8047B8E0  28 00 00 04 */	cmplwi r0, 4
/* 8047B8E4  40 82 00 98 */	bne lbl_8047B97C
/* 8047B8E8  38 60 00 01 */	li r3, 1
/* 8047B8EC  4B FF 4B 05 */	bl aMR_GetLayerTopFg
/* 8047B8F0  56 E0 08 3C */	slwi r0, r23, 1
/* 8047B8F4  7C 03 02 2E */	lhzx r0, r3, r0
/* 8047B8F8  28 00 00 00 */	cmplwi r0, 0
/* 8047B8FC  40 82 00 80 */	bne lbl_8047B97C
/* 8047B900  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8047B904  38 61 00 08 */	addi r3, r1, 8
/* 8047B908  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8047B90C  38 81 00 0C */	addi r4, r1, 0xc
/* 8047B910  38 E0 00 00 */	li r7, 0
/* 8047B914  48 00 26 2D */	bl aMR_UnitNum2FtrItemNoFtrID
/* 8047B918  2C 03 00 00 */	cmpwi r3, 0
/* 8047B91C  41 82 00 60 */	beq lbl_8047B97C
/* 8047B920  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8047B924  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047B928  38 83 DF E8 */	addi r4, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047B92C  3C 60 80 69 */	lis r3, aMR_layer_set_info@ha /* 0x80688984@ha */
/* 8047B930  1C 00 08 58 */	mulli r0, r0, 0x858
/* 8047B934  80 84 00 00 */	lwz r4, 0(r4)
/* 8047B938  38 63 89 84 */	addi r3, r3, aMR_layer_set_info@l /* 0x80688984@l */
/* 8047B93C  7C 04 02 2E */	lhzx r0, r4, r0
/* 8047B940  7C 03 00 AE */	lbzx r0, r3, r0
/* 8047B944  28 00 00 01 */	cmplwi r0, 1
/* 8047B948  40 82 00 34 */	bne lbl_8047B97C
/* 8047B94C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8047B950  56 C5 07 BE */	clrlwi r5, r22, 0x1e
/* 8047B954  38 80 00 00 */	li r4, 0
/* 8047B958  38 00 00 01 */	li r0, 1
/* 8047B95C  90 70 00 00 */	stw r3, 0(r16)
/* 8047B960  7F 43 D3 78 */	mr r3, r26
/* 8047B964  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8047B968  90 D1 00 00 */	stw r6, 0(r17)
/* 8047B96C  B0 B2 00 00 */	sth r5, 0(r18)
/* 8047B970  90 93 00 00 */	stw r4, 0(r19)
/* 8047B974  90 14 00 00 */	stw r0, 0(r20)
/* 8047B978  48 00 02 54 */	b lbl_8047BBCC
lbl_8047B97C:
/* 8047B97C  28 18 00 05 */	cmplwi r24, 5
/* 8047B980  41 82 01 44 */	beq lbl_8047BAC4
/* 8047B984  56 D5 07 BE */	clrlwi r21, r22, 0x1e
/* 8047B988  7F 63 DB 78 */	mr r3, r27
/* 8047B98C  7E E4 BB 78 */	mr r4, r23
/* 8047B990  7D E5 7B 78 */	mr r5, r15
/* 8047B994  7E A6 AB 78 */	mr r6, r21
/* 8047B998  4B FF EF 41 */	bl aMR_CheckPlaceSituation
/* 8047B99C  2C 03 00 00 */	cmpwi r3, 0
/* 8047B9A0  41 82 00 2C */	beq lbl_8047B9CC
/* 8047B9A4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8047B9A8  38 00 00 00 */	li r0, 0
/* 8047B9AC  7F 43 D3 78 */	mr r3, r26
/* 8047B9B0  90 90 00 00 */	stw r4, 0(r16)
/* 8047B9B4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8047B9B8  90 91 00 00 */	stw r4, 0(r17)
/* 8047B9BC  90 13 00 00 */	stw r0, 0(r19)
/* 8047B9C0  B2 B2 00 00 */	sth r21, 0(r18)
/* 8047B9C4  90 14 00 00 */	stw r0, 0(r20)
/* 8047B9C8  48 00 02 04 */	b lbl_8047BBCC
lbl_8047B9CC:
/* 8047B9CC  A0 1E 00 2E */	lhz r0, 0x2e(r30)
/* 8047B9D0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8047B9D4  41 82 00 48 */	beq lbl_8047BA1C
/* 8047B9D8  7F 63 DB 78 */	mr r3, r27
/* 8047B9DC  7F 64 DB 78 */	mr r4, r27
/* 8047B9E0  7D E5 7B 78 */	mr r5, r15
/* 8047B9E4  7E A6 AB 78 */	mr r6, r21
/* 8047B9E8  4B FF EE F1 */	bl aMR_CheckPlaceSituation
/* 8047B9EC  2C 03 00 00 */	cmpwi r3, 0
/* 8047B9F0  41 82 00 2C */	beq lbl_8047BA1C
/* 8047B9F4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8047B9F8  38 00 00 00 */	li r0, 0
/* 8047B9FC  7F 43 D3 78 */	mr r3, r26
/* 8047BA00  90 90 00 00 */	stw r4, 0(r16)
/* 8047BA04  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8047BA08  90 91 00 00 */	stw r4, 0(r17)
/* 8047BA0C  90 13 00 00 */	stw r0, 0(r19)
/* 8047BA10  B2 B2 00 00 */	sth r21, 0(r18)
/* 8047BA14  90 14 00 00 */	stw r0, 0(r20)
/* 8047BA18  48 00 01 B4 */	b lbl_8047BBCC
lbl_8047BA1C:
/* 8047BA1C  3A A0 00 00 */	li r21, 0
lbl_8047BA20:
/* 8047BA20  7F 63 DB 78 */	mr r3, r27
/* 8047BA24  7E E4 BB 78 */	mr r4, r23
/* 8047BA28  7D E5 7B 78 */	mr r5, r15
/* 8047BA2C  56 A6 04 3E */	clrlwi r6, r21, 0x10
/* 8047BA30  4B FF EE A9 */	bl aMR_CheckPlaceSituation
/* 8047BA34  2C 03 00 00 */	cmpwi r3, 0
/* 8047BA38  41 82 00 2C */	beq lbl_8047BA64
/* 8047BA3C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8047BA40  38 00 00 00 */	li r0, 0
/* 8047BA44  7F 43 D3 78 */	mr r3, r26
/* 8047BA48  90 90 00 00 */	stw r4, 0(r16)
/* 8047BA4C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8047BA50  90 91 00 00 */	stw r4, 0(r17)
/* 8047BA54  90 13 00 00 */	stw r0, 0(r19)
/* 8047BA58  B2 B2 00 00 */	sth r21, 0(r18)
/* 8047BA5C  90 14 00 00 */	stw r0, 0(r20)
/* 8047BA60  48 00 01 6C */	b lbl_8047BBCC
lbl_8047BA64:
/* 8047BA64  A0 1E 00 2E */	lhz r0, 0x2e(r30)
/* 8047BA68  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8047BA6C  41 82 00 48 */	beq lbl_8047BAB4
/* 8047BA70  7F 63 DB 78 */	mr r3, r27
/* 8047BA74  7F 64 DB 78 */	mr r4, r27
/* 8047BA78  7D E5 7B 78 */	mr r5, r15
/* 8047BA7C  56 A6 04 3E */	clrlwi r6, r21, 0x10
/* 8047BA80  4B FF EE 59 */	bl aMR_CheckPlaceSituation
/* 8047BA84  2C 03 00 00 */	cmpwi r3, 0
/* 8047BA88  41 82 00 2C */	beq lbl_8047BAB4
/* 8047BA8C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8047BA90  38 00 00 00 */	li r0, 0
/* 8047BA94  7F 43 D3 78 */	mr r3, r26
/* 8047BA98  90 90 00 00 */	stw r4, 0(r16)
/* 8047BA9C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8047BAA0  90 91 00 00 */	stw r4, 0(r17)
/* 8047BAA4  90 13 00 00 */	stw r0, 0(r19)
/* 8047BAA8  B2 B2 00 00 */	sth r21, 0(r18)
/* 8047BAAC  90 14 00 00 */	stw r0, 0(r20)
/* 8047BAB0  48 00 01 1C */	b lbl_8047BBCC
lbl_8047BAB4:
/* 8047BAB4  3A B5 00 01 */	addi r21, r21, 1
/* 8047BAB8  2C 15 00 04 */	cmpwi r21, 4
/* 8047BABC  41 80 FF 64 */	blt lbl_8047BA20
/* 8047BAC0  48 00 00 DC */	b lbl_8047BB9C
lbl_8047BAC4:
/* 8047BAC4  3C 60 80 69 */	lis r3, square_offset_data@ha /* 0x8068A1AC@ha */
/* 8047BAC8  56 DD 07 BE */	clrlwi r29, r22, 0x1e
/* 8047BACC  38 03 A1 AC */	addi r0, r3, square_offset_data@l /* 0x8068A1AC@l */
/* 8047BAD0  3A A0 00 00 */	li r21, 0
/* 8047BAD4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8047BAD8  3B E0 00 00 */	li r31, 0
lbl_8047BADC:
/* 8047BADC  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8047BAE0  7D E5 7B 78 */	mr r5, r15
/* 8047BAE4  7F A6 EB 78 */	mr r6, r29
/* 8047BAE8  7C 03 F8 2E */	lwzx r0, r3, r31
/* 8047BAEC  7F 63 DB 78 */	mr r3, r27
/* 8047BAF0  7C 97 02 14 */	add r4, r23, r0
/* 8047BAF4  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 8047BAF8  7C 87 26 70 */	srawi r7, r4, 4
/* 8047BAFC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8047BB00  7C 07 01 94 */	addze r0, r7
/* 8047BB04  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047BB08  4B FF ED D1 */	bl aMR_CheckPlaceSituation
/* 8047BB0C  2C 03 00 00 */	cmpwi r3, 0
/* 8047BB10  41 82 00 2C */	beq lbl_8047BB3C
/* 8047BB14  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8047BB18  38 80 00 00 */	li r4, 0
/* 8047BB1C  7F 43 D3 78 */	mr r3, r26
/* 8047BB20  90 10 00 00 */	stw r0, 0(r16)
/* 8047BB24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047BB28  90 11 00 00 */	stw r0, 0(r17)
/* 8047BB2C  92 B3 00 00 */	stw r21, 0(r19)
/* 8047BB30  B3 B2 00 00 */	sth r29, 0(r18)
/* 8047BB34  90 94 00 00 */	stw r4, 0(r20)
/* 8047BB38  48 00 00 94 */	b lbl_8047BBCC
lbl_8047BB3C:
/* 8047BB3C  A0 1E 00 2E */	lhz r0, 0x2e(r30)
/* 8047BB40  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8047BB44  41 82 00 48 */	beq lbl_8047BB8C
/* 8047BB48  7F 63 DB 78 */	mr r3, r27
/* 8047BB4C  7F 64 DB 78 */	mr r4, r27
/* 8047BB50  7D E5 7B 78 */	mr r5, r15
/* 8047BB54  7F A6 EB 78 */	mr r6, r29
/* 8047BB58  4B FF ED 81 */	bl aMR_CheckPlaceSituation
/* 8047BB5C  2C 03 00 00 */	cmpwi r3, 0
/* 8047BB60  41 82 00 2C */	beq lbl_8047BB8C
/* 8047BB64  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8047BB68  38 00 00 00 */	li r0, 0
/* 8047BB6C  7F 43 D3 78 */	mr r3, r26
/* 8047BB70  90 90 00 00 */	stw r4, 0(r16)
/* 8047BB74  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8047BB78  90 91 00 00 */	stw r4, 0(r17)
/* 8047BB7C  90 13 00 00 */	stw r0, 0(r19)
/* 8047BB80  B3 B2 00 00 */	sth r29, 0(r18)
/* 8047BB84  90 14 00 00 */	stw r0, 0(r20)
/* 8047BB88  48 00 00 44 */	b lbl_8047BBCC
lbl_8047BB8C:
/* 8047BB8C  3A B5 00 01 */	addi r21, r21, 1
/* 8047BB90  3B FF 00 04 */	addi r31, r31, 4
/* 8047BB94  2C 15 00 04 */	cmpwi r21, 4
/* 8047BB98  41 80 FF 44 */	blt lbl_8047BADC
lbl_8047BB9C:
/* 8047BB9C  3B 9C 00 01 */	addi r28, r28, 1
/* 8047BBA0  2C 1C 00 05 */	cmpwi r28, 5
/* 8047BBA4  41 80 FC D4 */	blt lbl_8047B878
lbl_8047BBA8:
/* 8047BBA8  38 60 FF FE */	li r3, -2
/* 8047BBAC  48 00 00 20 */	b lbl_8047BBCC
lbl_8047BBB0:
/* 8047BBB0  38 60 FF FF */	li r3, -1
/* 8047BBB4  48 00 00 18 */	b lbl_8047BBCC
lbl_8047BBB8:
/* 8047BBB8  38 00 00 00 */	li r0, 0
/* 8047BBBC  38 60 FF FD */	li r3, -3
/* 8047BBC0  B0 12 00 00 */	sth r0, 0(r18)
/* 8047BBC4  90 13 00 00 */	stw r0, 0(r19)
/* 8047BBC8  90 14 00 00 */	stw r0, 0(r20)
lbl_8047BBCC:
/* 8047BBCC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8047BBD0  4B C1 F3 15 */	bl __restore_gpr
/* 8047BBD4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8047BBD8  7C 08 03 A6 */	mtlr r0
/* 8047BBDC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8047BBE0  4E 80 00 20 */	blr 
