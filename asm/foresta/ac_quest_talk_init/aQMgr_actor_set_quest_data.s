lbl_8048A568:
/* 8048A568  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8048A56C  7C 08 02 A6 */	mflr r0
/* 8048A570  90 01 00 64 */	stw r0, 0x64(r1)
/* 8048A574  39 61 00 60 */	addi r11, r1, 0x60
/* 8048A578  4B C1 09 4D */	bl func_8009AEC4
/* 8048A57C  7C 7B 1B 78 */	mr r27, r3
/* 8048A580  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048A584  80 BB 01 78 */	lwz r5, 0x178(r27)
/* 8048A588  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048A58C  83 DB 01 F8 */	lwz r30, 0x1f8(r27)
/* 8048A590  3C C3 00 02 */	addis r6, r3, 2
/* 8048A594  80 65 00 00 */	lwz r3, 0(r5)
/* 8048A598  7C 9C 23 78 */	mr r28, r4
/* 8048A59C  28 1E 00 00 */	cmplwi r30, 0
/* 8048A5A0  83 A6 61 3C */	lwz r29, 0x613c(r6)
/* 8048A5A4  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 8048A5A8  7C 7F 1B 78 */	mr r31, r3
/* 8048A5AC  40 82 00 0C */	bne lbl_8048A5B8
/* 8048A5B0  38 60 FF FC */	li r3, -4
/* 8048A5B4  48 00 02 E4 */	b lbl_8048A898
lbl_8048A5B8:
/* 8048A5B8  90 7B 01 D4 */	stw r3, 0x1d4(r27)
/* 8048A5BC  88 1E 00 00 */	lbz r0, 0(r30)
/* 8048A5C0  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 8048A5C4  2C 00 00 03 */	cmpwi r0, 3
/* 8048A5C8  41 82 01 18 */	beq lbl_8048A6E0
/* 8048A5CC  40 80 00 1C */	bge lbl_8048A5E8
/* 8048A5D0  2C 00 00 01 */	cmpwi r0, 1
/* 8048A5D4  41 82 00 50 */	beq lbl_8048A624
/* 8048A5D8  40 80 00 EC */	bge lbl_8048A6C4
/* 8048A5DC  2C 00 00 00 */	cmpwi r0, 0
/* 8048A5E0  40 80 00 18 */	bge lbl_8048A5F8
/* 8048A5E4  48 00 01 58 */	b lbl_8048A73C
lbl_8048A5E8:
/* 8048A5E8  2C 00 00 05 */	cmpwi r0, 5
/* 8048A5EC  41 82 01 40 */	beq lbl_8048A72C
/* 8048A5F0  40 80 01 4C */	bge lbl_8048A73C
/* 8048A5F4  48 00 01 14 */	b lbl_8048A708
lbl_8048A5F8:
/* 8048A5F8  88 A3 08 99 */	lbz r5, 0x899(r3)
/* 8048A5FC  38 80 00 01 */	li r4, 1
/* 8048A600  88 C3 08 9A */	lbz r6, 0x89a(r3)
/* 8048A604  38 E0 00 01 */	li r7, 1
/* 8048A608  4B F4 22 09 */	bl mNpc_GetOtherAnimalPersonalIDOtherBlock
/* 8048A60C  90 7B 01 D8 */	stw r3, 0x1d8(r27)
/* 8048A610  80 1B 01 D8 */	lwz r0, 0x1d8(r27)
/* 8048A614  28 00 00 00 */	cmplwi r0, 0
/* 8048A618  40 82 01 24 */	bne lbl_8048A73C
/* 8048A61C  38 60 FF FC */	li r3, -4
/* 8048A620  48 00 02 78 */	b lbl_8048A898
lbl_8048A624:
/* 8048A624  3B 20 00 00 */	li r25, 0
/* 8048A628  3B 40 00 00 */	li r26, 0
lbl_8048A62C:
/* 8048A62C  38 61 00 08 */	addi r3, r1, 8
/* 8048A630  7C 63 D2 14 */	add r3, r3, r26
/* 8048A634  4B F4 0D 51 */	bl mNpc_ClearAnimalPersonalID
/* 8048A638  3B 39 00 01 */	addi r25, r25, 1
/* 8048A63C  3B 5A 00 0E */	addi r26, r26, 0xe
/* 8048A640  2C 19 00 04 */	cmpwi r25, 4
/* 8048A644  41 80 FF E8 */	blt lbl_8048A62C
/* 8048A648  28 1C 00 00 */	cmplwi r28, 0
/* 8048A64C  41 82 00 30 */	beq lbl_8048A67C
/* 8048A650  3B 20 00 00 */	li r25, 0
/* 8048A654  3B 40 00 00 */	li r26, 0
lbl_8048A658:
/* 8048A658  38 61 00 08 */	addi r3, r1, 8
/* 8048A65C  38 9A 00 2C */	addi r4, r26, 0x2c
/* 8048A660  7C 63 D2 14 */	add r3, r3, r26
/* 8048A664  7C 9C 22 14 */	add r4, r28, r4
/* 8048A668  4B F4 0D A9 */	bl mNpc_CopyAnimalPersonalID
/* 8048A66C  3B 39 00 01 */	addi r25, r25, 1
/* 8048A670  3B 5A 00 0E */	addi r26, r26, 0xe
/* 8048A674  2C 19 00 03 */	cmpwi r25, 3
/* 8048A678  41 80 FF E0 */	blt lbl_8048A658
lbl_8048A67C:
/* 8048A67C  7F E4 FB 78 */	mr r4, r31
/* 8048A680  38 61 00 32 */	addi r3, r1, 0x32
/* 8048A684  4B F4 0D 8D */	bl mNpc_CopyAnimalPersonalID
/* 8048A688  88 BF 08 99 */	lbz r5, 0x899(r31)
/* 8048A68C  38 61 00 08 */	addi r3, r1, 8
/* 8048A690  88 DF 08 9A */	lbz r6, 0x89a(r31)
/* 8048A694  38 80 00 04 */	li r4, 4
/* 8048A698  38 E0 00 01 */	li r7, 1
/* 8048A69C  4B F4 21 75 */	bl mNpc_GetOtherAnimalPersonalIDOtherBlock
/* 8048A6A0  90 7B 01 D8 */	stw r3, 0x1d8(r27)
/* 8048A6A4  80 1B 01 D8 */	lwz r0, 0x1d8(r27)
/* 8048A6A8  28 00 00 00 */	cmplwi r0, 0
/* 8048A6AC  40 82 00 0C */	bne lbl_8048A6B8
/* 8048A6B0  38 60 FF FC */	li r3, -4
/* 8048A6B4  48 00 01 E4 */	b lbl_8048A898
lbl_8048A6B8:
/* 8048A6B8  38 00 00 01 */	li r0, 1
/* 8048A6BC  98 1B 02 04 */	stb r0, 0x204(r27)
/* 8048A6C0  48 00 00 7C */	b lbl_8048A73C
lbl_8048A6C4:
/* 8048A6C4  28 1C 00 00 */	cmplwi r28, 0
/* 8048A6C8  41 82 00 10 */	beq lbl_8048A6D8
/* 8048A6CC  38 1C 00 2C */	addi r0, r28, 0x2c
/* 8048A6D0  90 1B 01 D8 */	stw r0, 0x1d8(r27)
/* 8048A6D4  48 00 00 68 */	b lbl_8048A73C
lbl_8048A6D8:
/* 8048A6D8  90 7B 01 D8 */	stw r3, 0x1d8(r27)
/* 8048A6DC  48 00 00 60 */	b lbl_8048A73C
lbl_8048A6E0:
/* 8048A6E0  80 66 61 3C */	lwz r3, 0x613c(r6)
/* 8048A6E4  3B 23 10 8C */	addi r25, r3, 0x108c
/* 8048A6E8  7F 23 CB 78 */	mr r3, r25
/* 8048A6EC  4B F4 0C F1 */	bl mNpc_CheckFreeAnimalPersonalID
/* 8048A6F0  2C 03 00 00 */	cmpwi r3, 0
/* 8048A6F4  40 82 00 0C */	bne lbl_8048A700
/* 8048A6F8  93 3B 01 D8 */	stw r25, 0x1d8(r27)
/* 8048A6FC  48 00 00 40 */	b lbl_8048A73C
lbl_8048A700:
/* 8048A700  38 60 FF FE */	li r3, -2
/* 8048A704  48 00 01 94 */	b lbl_8048A898
lbl_8048A708:
/* 8048A708  3B 26 03 30 */	addi r25, r6, 0x330
/* 8048A70C  7F 23 CB 78 */	mr r3, r25
/* 8048A710  4B F4 0C CD */	bl mNpc_CheckFreeAnimalPersonalID
/* 8048A714  2C 03 00 00 */	cmpwi r3, 0
/* 8048A718  40 82 00 0C */	bne lbl_8048A724
/* 8048A71C  93 3B 01 D8 */	stw r25, 0x1d8(r27)
/* 8048A720  48 00 00 1C */	b lbl_8048A73C
lbl_8048A724:
/* 8048A724  38 60 FF FD */	li r3, -3
/* 8048A728  48 00 01 70 */	b lbl_8048A898
lbl_8048A72C:
/* 8048A72C  80 7B 01 78 */	lwz r3, 0x178(r27)
/* 8048A730  80 63 00 00 */	lwz r3, 0(r3)
/* 8048A734  80 03 01 7C */	lwz r0, 0x17c(r3)
/* 8048A738  90 1B 01 D8 */	stw r0, 0x1d8(r27)
lbl_8048A73C:
/* 8048A73C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8048A740  54 00 8F 7E */	rlwinm r0, r0, 0x11, 0x1d, 0x1f
/* 8048A744  2C 00 00 03 */	cmpwi r0, 3
/* 8048A748  41 82 00 58 */	beq lbl_8048A7A0
/* 8048A74C  40 80 00 1C */	bge lbl_8048A768
/* 8048A750  2C 00 00 01 */	cmpwi r0, 1
/* 8048A754  41 82 00 30 */	beq lbl_8048A784
/* 8048A758  40 80 00 38 */	bge lbl_8048A790
/* 8048A75C  2C 00 00 00 */	cmpwi r0, 0
/* 8048A760  40 80 00 18 */	bge lbl_8048A778
/* 8048A764  48 00 00 74 */	b lbl_8048A7D8
lbl_8048A768:
/* 8048A768  2C 00 00 05 */	cmpwi r0, 5
/* 8048A76C  41 82 00 60 */	beq lbl_8048A7CC
/* 8048A770  40 80 00 68 */	bge lbl_8048A7D8
/* 8048A774  48 00 00 38 */	b lbl_8048A7AC
lbl_8048A778:
/* 8048A778  38 7B 01 E0 */	addi r3, r27, 0x1e0
/* 8048A77C  4B FF FC A9 */	bl aQMgr_actor_decide_item
/* 8048A780  48 00 00 60 */	b lbl_8048A7E0
lbl_8048A784:
/* 8048A784  4B F1 F7 65 */	bl mFI_GetOtherFruit
/* 8048A788  B0 7B 01 E0 */	sth r3, 0x1e0(r27)
/* 8048A78C  48 00 00 54 */	b lbl_8048A7E0
lbl_8048A790:
/* 8048A790  A0 9F 08 E4 */	lhz r4, 0x8e4(r31)
/* 8048A794  38 7B 01 E0 */	addi r3, r27, 0x1e0
/* 8048A798  4B FF FC E5 */	bl aQMgr_actor_decide_cloth
/* 8048A79C  48 00 00 44 */	b lbl_8048A7E0
lbl_8048A7A0:
/* 8048A7A0  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8048A7A4  B0 1B 01 E0 */	sth r0, 0x1e0(r27)
/* 8048A7A8  48 00 00 38 */	b lbl_8048A7E0
lbl_8048A7AC:
/* 8048A7AC  28 1C 00 00 */	cmplwi r28, 0
/* 8048A7B0  41 82 00 10 */	beq lbl_8048A7C0
/* 8048A7B4  A0 1C 00 28 */	lhz r0, 0x28(r28)
/* 8048A7B8  B0 1B 01 E0 */	sth r0, 0x1e0(r27)
/* 8048A7BC  48 00 00 24 */	b lbl_8048A7E0
lbl_8048A7C0:
/* 8048A7C0  38 00 24 01 */	li r0, 0x2401
/* 8048A7C4  B0 1B 01 E0 */	sth r0, 0x1e0(r27)
/* 8048A7C8  48 00 00 18 */	b lbl_8048A7E0
lbl_8048A7CC:
/* 8048A7CC  38 00 00 00 */	li r0, 0
/* 8048A7D0  B0 1B 01 E0 */	sth r0, 0x1e0(r27)
/* 8048A7D4  48 00 00 0C */	b lbl_8048A7E0
lbl_8048A7D8:
/* 8048A7D8  38 60 FF FC */	li r3, -4
/* 8048A7DC  48 00 00 BC */	b lbl_8048A898
lbl_8048A7E0:
/* 8048A7E0  88 1E 00 01 */	lbz r0, 1(r30)
/* 8048A7E4  54 00 F7 FE */	rlwinm r0, r0, 0x1e, 0x1f, 0x1f
/* 8048A7E8  28 00 00 01 */	cmplwi r0, 1
/* 8048A7EC  40 82 00 30 */	bne lbl_8048A81C
/* 8048A7F0  7F A3 EB 78 */	mr r3, r29
/* 8048A7F4  38 80 00 00 */	li r4, 0
/* 8048A7F8  4B F5 5F 31 */	bl mPr_GetPossessionItemIdx
/* 8048A7FC  2C 03 FF FF */	cmpwi r3, -1
/* 8048A800  41 82 00 0C */	beq lbl_8048A80C
/* 8048A804  90 7B 01 DC */	stw r3, 0x1dc(r27)
/* 8048A808  48 00 00 1C */	b lbl_8048A824
lbl_8048A80C:
/* 8048A80C  38 00 FF FF */	li r0, -1
/* 8048A810  38 60 FF FF */	li r3, -1
/* 8048A814  90 1B 01 DC */	stw r0, 0x1dc(r27)
/* 8048A818  48 00 00 80 */	b lbl_8048A898
lbl_8048A81C:
/* 8048A81C  38 00 FF FF */	li r0, -1
/* 8048A820  90 1B 01 DC */	stw r0, 0x1dc(r27)
lbl_8048A824:
/* 8048A824  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8048A828  54 00 CE BF */	rlwinm. r0, r0, 0x19, 0x1a, 0x1f
/* 8048A82C  41 82 00 40 */	beq lbl_8048A86C
/* 8048A830  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048A834  38 7B 01 F0 */	addi r3, r27, 0x1f0
/* 8048A838  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048A83C  3C 84 00 02 */	addis r4, r4, 2
/* 8048A840  38 84 61 20 */	addi r4, r4, 0x6120
/* 8048A844  4B F7 C9 F1 */	bl lbRTC_TimeCopy
/* 8048A848  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8048A84C  38 7B 01 F0 */	addi r3, r27, 0x1f0
/* 8048A850  54 04 CE BE */	rlwinm r4, r0, 0x19, 0x1a, 0x1f
/* 8048A854  4B F7 C4 D1 */	bl lbRTC_Add_DD
/* 8048A858  88 1B 01 C9 */	lbz r0, 0x1c9(r27)
/* 8048A85C  38 60 00 01 */	li r3, 1
/* 8048A860  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8048A864  98 1B 01 C9 */	stb r0, 0x1c9(r27)
/* 8048A868  48 00 00 14 */	b lbl_8048A87C
lbl_8048A86C:
/* 8048A86C  88 1B 01 C9 */	lbz r0, 0x1c9(r27)
/* 8048A870  38 60 00 00 */	li r3, 0
/* 8048A874  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8048A878  98 1B 01 C9 */	stb r0, 0x1c9(r27)
lbl_8048A87C:
/* 8048A87C  88 9E 00 01 */	lbz r4, 1(r30)
/* 8048A880  7F 63 DB 78 */	mr r3, r27
/* 8048A884  88 1B 01 C9 */	lbz r0, 0x1c9(r27)
/* 8048A888  50 80 06 78 */	rlwimi r0, r4, 0, 0x19, 0x1c
/* 8048A88C  98 1B 01 C9 */	stb r0, 0x1c9(r27)
/* 8048A890  4B FF FC 89 */	bl aQMgr_actor_set_work_data
/* 8048A894  38 60 00 01 */	li r3, 1
lbl_8048A898:
/* 8048A898  39 61 00 60 */	addi r11, r1, 0x60
/* 8048A89C  4B C1 06 75 */	bl func_8009AF10
/* 8048A8A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8048A8A4  7C 08 03 A6 */	mtlr r0
/* 8048A8A8  38 21 00 60 */	addi r1, r1, 0x60
/* 8048A8AC  4E 80 00 20 */	blr 
