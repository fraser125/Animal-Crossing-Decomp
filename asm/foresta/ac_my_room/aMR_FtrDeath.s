lbl_8047CBD8:
/* 8047CBD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047CBDC  7C 08 02 A6 */	mflr r0
/* 8047CBE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047CBE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8047CBE8  4B C1 E2 E1 */	bl func_8009AEC8
/* 8047CBEC  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047CBF0  83 83 00 04 */	lwz r28, 4(r3)
/* 8047CBF4  3B A4 DF E8 */	addi r29, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047CBF8  7C 7F 1B 78 */	mr r31, r3
/* 8047CBFC  80 1D 00 00 */	lwz r0, 0(r29)
/* 8047CC00  7C BB 2B 78 */	mr r27, r5
/* 8047CC04  28 00 00 00 */	cmplwi r0, 0
/* 8047CC08  41 82 00 AC */	beq lbl_8047CCB4
/* 8047CC0C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8047CC10  28 00 00 00 */	cmplwi r0, 0
/* 8047CC14  41 82 00 A0 */	beq lbl_8047CCB4
/* 8047CC18  A3 5F 00 00 */	lhz r26, 0(r31)
/* 8047CC1C  7F 43 D3 78 */	mr r3, r26
/* 8047CC20  4B FF 35 81 */	bl func_804701A0
/* 8047CC24  80 9D 00 04 */	lwz r4, 4(r29)
/* 8047CC28  7C 7E 1B 78 */	mr r30, r3
/* 8047CC2C  7C 04 E0 AE */	lbzx r0, r4, r28
/* 8047CC30  28 00 00 00 */	cmplwi r0, 0
/* 8047CC34  41 82 00 80 */	beq lbl_8047CCB4
/* 8047CC38  28 1E 00 00 */	cmplwi r30, 0
/* 8047CC3C  41 82 00 5C */	beq lbl_8047CC98
/* 8047CC40  7F E3 FB 78 */	mr r3, r31
/* 8047CC44  4B FF 65 C5 */	bl aMR_KeepItem2Fg
/* 8047CC48  7F E3 FB 78 */	mr r3, r31
/* 8047CC4C  7F 64 DB 78 */	mr r4, r27
/* 8047CC50  4B FF 4E D1 */	bl aMR_MiniDiskCommonDt
/* 8047CC54  7F E3 FB 78 */	mr r3, r31
/* 8047CC58  7F 64 DB 78 */	mr r4, r27
/* 8047CC5C  4B FF 4F 95 */	bl aMR_RadioCommonDt
/* 8047CC60  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 8047CC64  28 03 00 00 */	cmplwi r3, 0
/* 8047CC68  41 82 00 30 */	beq lbl_8047CC98
/* 8047CC6C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8047CC70  28 00 00 00 */	cmplwi r0, 0
/* 8047CC74  41 82 00 24 */	beq lbl_8047CC98
/* 8047CC78  7F 43 D3 78 */	mr r3, r26
/* 8047CC7C  4B FF 41 55 */	bl aMR_FtrNo2BankAddress
/* 8047CC80  80 BE 00 30 */	lwz r5, 0x30(r30)
/* 8047CC84  7C 64 1B 78 */	mr r4, r3
/* 8047CC88  7F E3 FB 78 */	mr r3, r31
/* 8047CC8C  81 85 00 0C */	lwz r12, 0xc(r5)
/* 8047CC90  7D 89 03 A6 */	mtctr r12
/* 8047CC94  4E 80 04 21 */	bctrl 
lbl_8047CC98:
/* 8047CC98  80 9D 00 04 */	lwz r4, 4(r29)
/* 8047CC9C  38 00 00 00 */	li r0, 0
/* 8047CCA0  7F 43 D3 78 */	mr r3, r26
/* 8047CCA4  7C 04 E1 AE */	stbx r0, r4, r28
/* 8047CCA8  4B FF 47 BD */	bl aMR_DeleteFurnitureBank
/* 8047CCAC  7F E3 FB 78 */	mr r3, r31
/* 8047CCB0  4B FF 39 15 */	bl aMR_ClearBitSwitch
lbl_8047CCB4:
/* 8047CCB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8047CCB8  4B C1 E2 5D */	bl func_8009AF14
/* 8047CCBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047CCC0  7C 08 03 A6 */	mtlr r0
/* 8047CCC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8047CCC8  4E 80 00 20 */	blr 
