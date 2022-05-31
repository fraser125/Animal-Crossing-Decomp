lbl_803F6A40:
/* 803F6A40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F6A44  7C 08 02 A6 */	mflr r0
/* 803F6A48  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F6A4C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803F6A50  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803F6A54  39 61 00 40 */	addi r11, r1, 0x40
/* 803F6A58  4B CA 44 79 */	bl func_8009AED0
/* 803F6A5C  7C 7C 1B 78 */	mr r28, r3
/* 803F6A60  38 61 00 14 */	addi r3, r1, 0x14
/* 803F6A64  81 1C 00 28 */	lwz r8, 0x28(r28)
/* 803F6A68  38 81 00 10 */	addi r4, r1, 0x10
/* 803F6A6C  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 803F6A70  38 A1 00 0C */	addi r5, r1, 0xc
/* 803F6A74  38 C1 00 08 */	addi r6, r1, 8
/* 803F6A78  38 E1 00 18 */	addi r7, r1, 0x18
/* 803F6A7C  91 01 00 18 */	stw r8, 0x18(r1)
/* 803F6A80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803F6A84  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 803F6A88  90 01 00 20 */	stw r0, 0x20(r1)
/* 803F6A8C  4B FA ED 35 */	bl mFI_Wpos2BkandUtNuminBlock
/* 803F6A90  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803F6A94  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803F6A98  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803F6A9C  80 C1 00 08 */	lwz r6, 8(r1)
/* 803F6AA0  4B FD C3 05 */	bl mNpc_CheckNpcSet
/* 803F6AA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803F6AA8  40 82 00 AC */	bne lbl_803F6B54
/* 803F6AAC  3B C0 FF FF */	li r30, -1
lbl_803F6AB0:
/* 803F6AB0  3B A0 FF FF */	li r29, -1
lbl_803F6AB4:
/* 803F6AB4  2C 1E 00 00 */	cmpwi r30, 0
/* 803F6AB8  40 82 00 0C */	bne lbl_803F6AC4
/* 803F6ABC  2C 1D 00 00 */	cmpwi r29, 0
/* 803F6AC0  41 82 00 44 */	beq lbl_803F6B04
lbl_803F6AC4:
/* 803F6AC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F6AC8  7C A0 F2 14 */	add r5, r0, r30
/* 803F6ACC  2C 05 00 10 */	cmpwi r5, 0x10
/* 803F6AD0  40 80 00 34 */	bge lbl_803F6B04
/* 803F6AD4  2C 05 00 00 */	cmpwi r5, 0
/* 803F6AD8  40 81 00 2C */	ble lbl_803F6B04
/* 803F6ADC  80 01 00 08 */	lwz r0, 8(r1)
/* 803F6AE0  7C C0 EA 14 */	add r6, r0, r29
/* 803F6AE4  2C 06 00 10 */	cmpwi r6, 0x10
/* 803F6AE8  40 80 00 1C */	bge lbl_803F6B04
/* 803F6AEC  2C 06 00 00 */	cmpwi r6, 0
/* 803F6AF0  40 81 00 14 */	ble lbl_803F6B04
/* 803F6AF4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803F6AF8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803F6AFC  4B FD C2 A9 */	bl mNpc_CheckNpcSet
/* 803F6B00  7C 7F 1B 78 */	mr r31, r3
lbl_803F6B04:
/* 803F6B04  2C 1F 00 01 */	cmpwi r31, 1
/* 803F6B08  40 82 00 34 */	bne lbl_803F6B3C
/* 803F6B0C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803F6B10  38 7C 00 28 */	addi r3, r28, 0x28
/* 803F6B14  80 01 00 08 */	lwz r0, 8(r1)
/* 803F6B18  C3 FC 00 2C */	lfs f31, 0x2c(r28)
/* 803F6B1C  7C C4 F2 14 */	add r6, r4, r30
/* 803F6B20  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803F6B24  7C E0 EA 14 */	add r7, r0, r29
/* 803F6B28  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803F6B2C  4B FA F1 C9 */	bl mFI_BkandUtNum2CenterWpos
/* 803F6B30  D3 FC 00 2C */	stfs f31, 0x2c(r28)
/* 803F6B34  7F E3 FB 78 */	mr r3, r31
/* 803F6B38  48 00 00 20 */	b lbl_803F6B58
lbl_803F6B3C:
/* 803F6B3C  3B BD 00 01 */	addi r29, r29, 1
/* 803F6B40  2C 1D 00 02 */	cmpwi r29, 2
/* 803F6B44  41 80 FF 70 */	blt lbl_803F6AB4
/* 803F6B48  3B DE 00 01 */	addi r30, r30, 1
/* 803F6B4C  2C 1E 00 02 */	cmpwi r30, 2
/* 803F6B50  41 80 FF 60 */	blt lbl_803F6AB0
lbl_803F6B54:
/* 803F6B54  7F E3 FB 78 */	mr r3, r31
lbl_803F6B58:
/* 803F6B58  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803F6B5C  39 61 00 40 */	addi r11, r1, 0x40
/* 803F6B60  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803F6B64  4B CA 43 B9 */	bl func_8009AF1C
/* 803F6B68  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F6B6C  7C 08 03 A6 */	mtlr r0
/* 803F6B70  38 21 00 50 */	addi r1, r1, 0x50
/* 803F6B74  4E 80 00 20 */	blr 
