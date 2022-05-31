lbl_80472388:
/* 80472388  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047238C  7C 08 02 A6 */	mflr r0
/* 80472390  90 01 00 24 */	stw r0, 0x24(r1)
/* 80472394  39 61 00 20 */	addi r11, r1, 0x20
/* 80472398  4B C2 8B 31 */	bl func_8009AEC8
/* 8047239C  7C BB 2B 78 */	mr r27, r5
/* 804723A0  7C 7A 1B 78 */	mr r26, r3
/* 804723A4  7C 9F 23 78 */	mr r31, r4
/* 804723A8  7F 63 DB 78 */	mr r3, r27
/* 804723AC  4B FF E0 45 */	bl aMR_GetLayerTopFg
/* 804723B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 804723B4  41 82 00 44 */	beq lbl_804723F8
/* 804723B8  3B 80 00 00 */	li r28, 0
lbl_804723BC:
/* 804723BC  3B A0 00 00 */	li r29, 0
lbl_804723C0:
/* 804723C0  A0 9E 00 00 */	lhz r4, 0(r30)
/* 804723C4  7F 43 D3 78 */	mr r3, r26
/* 804723C8  7F E5 FB 78 */	mr r5, r31
/* 804723CC  7F A6 EB 78 */	mr r6, r29
/* 804723D0  7F 87 E3 78 */	mr r7, r28
/* 804723D4  7F 68 DB 78 */	mr r8, r27
/* 804723D8  4B FF FE B5 */	bl aMR_MakeOneFurniture
/* 804723DC  3B BD 00 01 */	addi r29, r29, 1
/* 804723E0  3B DE 00 02 */	addi r30, r30, 2
/* 804723E4  2C 1D 00 10 */	cmpwi r29, 0x10
/* 804723E8  41 80 FF D8 */	blt lbl_804723C0
/* 804723EC  3B 9C 00 01 */	addi r28, r28, 1
/* 804723F0  2C 1C 00 10 */	cmpwi r28, 0x10
/* 804723F4  41 80 FF C8 */	blt lbl_804723BC
lbl_804723F8:
/* 804723F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804723FC  4B C2 8B 19 */	bl func_8009AF14
/* 80472400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80472404  7C 08 03 A6 */	mtlr r0
/* 80472408  38 21 00 20 */	addi r1, r1, 0x20
/* 8047240C  4E 80 00 20 */	blr 
