lbl_8041482C:
/* 8041482C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80414830  7C 08 02 A6 */	mflr r0
/* 80414834  90 01 00 54 */	stw r0, 0x54(r1)
/* 80414838  39 61 00 50 */	addi r11, r1, 0x50
/* 8041483C  4B C8 66 91 */	bl func_8009AECC
/* 80414840  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80414844  7C 7B 1B 78 */	mr r27, r3
/* 80414848  81 01 00 30 */	lwz r8, 0x30(r1)
/* 8041484C  3C E0 80 64 */	lis r7, data_80643AA4@ha /* 0x80643AA4@ha */
/* 80414850  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80414854  7C 9C 23 78 */	mr r28, r4
/* 80414858  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8041485C  7C BD 2B 78 */	mr r29, r5
/* 80414860  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80414864  7C DE 33 78 */	mr r30, r6
/* 80414868  C0 27 3A A4 */	lfs f1, data_80643AA4@l(r7)  /* 0x80643AA4@l */
/* 8041486C  3B E0 00 00 */	li r31, 0
/* 80414870  90 61 00 20 */	stw r3, 0x20(r1)
/* 80414874  38 61 00 20 */	addi r3, r1, 0x20
/* 80414878  91 01 00 24 */	stw r8, 0x24(r1)
/* 8041487C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80414880  4B F7 AF A1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 80414884  7F A0 07 34 */	extsh r0, r29
/* 80414888  FC 00 08 90 */	fmr f0, f1
/* 8041488C  90 01 00 08 */	stw r0, 8(r1)
/* 80414890  38 00 FF FF */	li r0, -1
/* 80414894  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80414898  7F 64 DB 78 */	mr r4, r27
/* 8041489C  A0 7C 00 00 */	lhz r3, 0(r28)
/* 804148A0  FC 40 00 18 */	frsp f2, f0
/* 804148A4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804148A8  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 804148AC  7F C5 F3 78 */	mr r5, r30
/* 804148B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 804148B4  38 7B 1D A8 */	addi r3, r27, 0x1da8
/* 804148B8  A9 3C 00 06 */	lha r9, 6(r28)
/* 804148BC  38 C0 00 00 */	li r6, 0
/* 804148C0  38 E0 00 00 */	li r7, 0
/* 804148C4  39 00 00 00 */	li r8, 0
/* 804148C8  91 21 00 10 */	stw r9, 0x10(r1)
/* 804148CC  89 3C 00 04 */	lbz r9, 4(r28)
/* 804148D0  91 21 00 14 */	stw r9, 0x14(r1)
/* 804148D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804148D8  89 3B 00 E4 */	lbz r9, 0xe4(r27)
/* 804148DC  89 5B 00 E5 */	lbz r10, 0xe5(r27)
/* 804148E0  4B F6 0E 69 */	bl Actor_info_make_actor
/* 804148E4  28 03 00 00 */	cmplwi r3, 0
/* 804148E8  41 82 00 08 */	beq lbl_804148F0
/* 804148EC  3B E0 00 01 */	li r31, 1
lbl_804148F0:
/* 804148F0  7F E3 FB 78 */	mr r3, r31
/* 804148F4  39 61 00 50 */	addi r11, r1, 0x50
/* 804148F8  4B C8 66 21 */	bl func_8009AF18
/* 804148FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80414900  7C 08 03 A6 */	mtlr r0
/* 80414904  38 21 00 50 */	addi r1, r1, 0x50
/* 80414908  4E 80 00 20 */	blr 
