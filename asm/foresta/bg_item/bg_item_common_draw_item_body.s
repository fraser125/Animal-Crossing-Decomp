lbl_804BDB68:
/* 804BDB68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BDB6C  7C 08 02 A6 */	mflr r0
/* 804BDB70  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BDB74  39 61 00 30 */	addi r11, r1, 0x30
/* 804BDB78  4B BD D3 4D */	bl func_8009AEC4
/* 804BDB7C  83 C5 00 04 */	lwz r30, 4(r5)
/* 804BDB80  7C 79 1B 78 */	mr r25, r3
/* 804BDB84  83 E5 00 08 */	lwz r31, 8(r5)
/* 804BDB88  7C 9A 23 78 */	mr r26, r4
/* 804BDB8C  83 85 00 00 */	lwz r28, 0(r5)
/* 804BDB90  7C DB 33 78 */	mr r27, r6
/* 804BDB94  3B A0 00 00 */	li r29, 0
/* 804BDB98  48 00 00 2C */	b lbl_804BDBC4
lbl_804BDB9C:
/* 804BDB9C  80 BF 00 00 */	lwz r5, 0(r31)
/* 804BDBA0  7F 23 CB 78 */	mr r3, r25
/* 804BDBA4  7F 44 D3 78 */	mr r4, r26
/* 804BDBA8  7F 66 DB 78 */	mr r6, r27
/* 804BDBAC  81 85 00 00 */	lwz r12, 0(r5)
/* 804BDBB0  7F 87 E3 78 */	mr r7, r28
/* 804BDBB4  7D 89 03 A6 */	mtctr r12
/* 804BDBB8  4E 80 04 21 */	bctrl 
/* 804BDBBC  3B BD 00 01 */	addi r29, r29, 1
/* 804BDBC0  3B FF 00 04 */	addi r31, r31, 4
lbl_804BDBC4:
/* 804BDBC4  7C 1D F0 00 */	cmpw r29, r30
/* 804BDBC8  41 80 FF D4 */	blt lbl_804BDB9C
/* 804BDBCC  39 61 00 30 */	addi r11, r1, 0x30
/* 804BDBD0  4B BD D3 41 */	bl func_8009AF10
/* 804BDBD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BDBD8  7C 08 03 A6 */	mtlr r0
/* 804BDBDC  38 21 00 30 */	addi r1, r1, 0x30
/* 804BDBE0  4E 80 00 20 */	blr 
