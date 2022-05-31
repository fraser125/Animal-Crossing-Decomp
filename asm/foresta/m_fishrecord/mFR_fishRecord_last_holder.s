lbl_803AC3E0:
/* 803AC3E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803AC3E4  7C 08 02 A6 */	mflr r0
/* 803AC3E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803AC3EC  39 61 00 40 */	addi r11, r1, 0x40
/* 803AC3F0  4B CE EA DD */	bl func_8009AECC
/* 803AC3F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AC3F8  3B 80 00 00 */	li r28, 0
/* 803AC3FC  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803AC400  3B E0 00 00 */	li r31, 0
/* 803AC404  3F 7E 00 02 */	addis r27, r30, 2
/* 803AC408  3B 7B 61 20 */	addi r27, r27, 0x6120
lbl_803AC40C:
/* 803AC40C  7C 7E FA 14 */	add r3, r30, r31
/* 803AC410  3F A3 00 02 */	addis r29, r3, 2
/* 803AC414  80 1D 3E 84 */	lwz r0, 0x3e84(r29)
/* 803AC418  3B BD 3E 68 */	addi r29, r29, 0x3e68
/* 803AC41C  2C 00 00 00 */	cmpwi r0, 0
/* 803AC420  40 81 00 48 */	ble lbl_803AC468
/* 803AC424  7F 64 DB 78 */	mr r4, r27
/* 803AC428  38 7D 00 14 */	addi r3, r29, 0x14
/* 803AC42C  48 05 A4 E9 */	bl lbRTC_IsOverTime
/* 803AC430  2C 03 00 01 */	cmpwi r3, 1
/* 803AC434  40 82 00 34 */	bne lbl_803AC468
/* 803AC438  80 DD 00 1C */	lwz r6, 0x1c(r29)
/* 803AC43C  38 61 00 0C */	addi r3, r1, 0xc
/* 803AC440  38 81 00 08 */	addi r4, r1, 8
/* 803AC444  38 BD 00 14 */	addi r5, r29, 0x14
/* 803AC448  4B FF F6 71 */	bl mEv_fishRecord_local
/* 803AC44C  2C 03 00 00 */	cmpwi r3, 0
/* 803AC450  41 82 00 18 */	beq lbl_803AC468
/* 803AC454  80 01 00 08 */	lwz r0, 8(r1)
/* 803AC458  7F A3 EB 78 */	mr r3, r29
/* 803AC45C  38 81 00 0C */	addi r4, r1, 0xc
/* 803AC460  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 803AC464  48 03 3C BD */	bl mPr_CopyPersonalID
lbl_803AC468:
/* 803AC468  3B 9C 00 01 */	addi r28, r28, 1
/* 803AC46C  3B FF 00 20 */	addi r31, r31, 0x20
/* 803AC470  2C 1C 00 05 */	cmpwi r28, 5
/* 803AC474  41 80 FF 98 */	blt lbl_803AC40C
/* 803AC478  39 61 00 40 */	addi r11, r1, 0x40
/* 803AC47C  4B CE EA 9D */	bl func_8009AF18
/* 803AC480  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803AC484  7C 08 03 A6 */	mtlr r0
/* 803AC488  38 21 00 40 */	addi r1, r1, 0x40
/* 803AC48C  4E 80 00 20 */	blr 
