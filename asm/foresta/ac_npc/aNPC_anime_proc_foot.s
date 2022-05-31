lbl_8052CDBC:
/* 8052CDBC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052CDC0  7C 08 02 A6 */	mflr r0
/* 8052CDC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052CDC8  39 61 00 40 */	addi r11, r1, 0x40
/* 8052CDCC  4B B6 E0 F9 */	bl func_8009AEC4
/* 8052CDD0  7C 9E 23 78 */	mr r30, r4
/* 8052CDD4  7C 7D 1B 78 */	mr r29, r3
/* 8052CDD8  7C BF 2B 78 */	mr r31, r5
/* 8052CDDC  7C C4 33 78 */	mr r4, r6
/* 8052CDE0  4B FF FF 29 */	bl aNPC_check_anime_timing
/* 8052CDE4  2C 03 00 01 */	cmpwi r3, 1
/* 8052CDE8  40 82 01 1C */	bne lbl_8052CF04
/* 8052CDEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8052CDF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8052CDF4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8052CDF8  2C 00 00 31 */	cmpwi r0, 0x31
/* 8052CDFC  41 82 00 E8 */	beq lbl_8052CEE4
/* 8052CE00  40 80 00 14 */	bge lbl_8052CE14
/* 8052CE04  2C 00 00 11 */	cmpwi r0, 0x11
/* 8052CE08  40 80 00 0C */	bge lbl_8052CE14
/* 8052CE0C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8052CE10  40 80 00 D4 */	bge lbl_8052CEE4
lbl_8052CE14:
/* 8052CE14  88 1D 00 B5 */	lbz r0, 0xb5(r29)
/* 8052CE18  28 00 00 00 */	cmplwi r0, 0
/* 8052CE1C  41 82 00 C8 */	beq lbl_8052CEE4
/* 8052CE20  80 7D 08 40 */	lwz r3, 0x840(r29)
/* 8052CE24  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8052CE28  40 82 00 BC */	bne lbl_8052CEE4
/* 8052CE2C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 8052CE30  40 82 00 B4 */	bne lbl_8052CEE4
/* 8052CE34  AB 7D 00 DE */	lha r27, 0xde(r29)
/* 8052CE38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8052CE3C  A3 5D 00 06 */	lhz r26, 6(r29)
/* 8052CE40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8052CE44  80 9D 00 98 */	lwz r4, 0x98(r29)
/* 8052CE48  3F 83 00 02 */	addis r28, r3, 2
/* 8052CE4C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8052CE50  7F 66 DB 78 */	mr r6, r27
/* 8052CE54  80 1F 00 04 */	lwz r0, 4(r31)
/* 8052CE58  54 84 AE BE */	rlwinm r4, r4, 0x15, 0x1a, 0x1f
/* 8052CE5C  7C 99 07 34 */	extsh r25, r4
/* 8052CE60  81 7C 60 9C */	lwz r11, 0x609c(r28)
/* 8052CE64  90 61 00 14 */	stw r3, 0x14(r1)
/* 8052CE68  7F C7 F3 78 */	mr r7, r30
/* 8052CE6C  7F 48 D3 78 */	mr r8, r26
/* 8052CE70  7F 29 CB 78 */	mr r9, r25
/* 8052CE74  90 01 00 18 */	stw r0, 0x18(r1)
/* 8052CE78  38 81 00 14 */	addi r4, r1, 0x14
/* 8052CE7C  38 60 00 44 */	li r3, 0x44
/* 8052CE80  38 A0 00 01 */	li r5, 1
/* 8052CE84  80 1F 00 08 */	lwz r0, 8(r31)
/* 8052CE88  39 40 00 00 */	li r10, 0
/* 8052CE8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8052CE90  81 8B 00 00 */	lwz r12, 0(r11)
/* 8052CE94  7D 89 03 A6 */	mtctr r12
/* 8052CE98  4E 80 04 21 */	bctrl 
/* 8052CE9C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8052CEA0  7F 66 DB 78 */	mr r6, r27
/* 8052CEA4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8052CEA8  7F C7 F3 78 */	mr r7, r30
/* 8052CEAC  81 7C 60 9C */	lwz r11, 0x609c(r28)
/* 8052CEB0  7F 48 D3 78 */	mr r8, r26
/* 8052CEB4  90 61 00 08 */	stw r3, 8(r1)
/* 8052CEB8  7F 29 CB 78 */	mr r9, r25
/* 8052CEBC  38 81 00 08 */	addi r4, r1, 8
/* 8052CEC0  38 60 00 2C */	li r3, 0x2c
/* 8052CEC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052CEC8  38 A0 00 01 */	li r5, 1
/* 8052CECC  39 40 00 00 */	li r10, 0
/* 8052CED0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8052CED4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052CED8  81 8B 00 00 */	lwz r12, 0(r11)
/* 8052CEDC  7D 89 03 A6 */	mtctr r12
/* 8052CEE0  4E 80 04 21 */	bctrl 
lbl_8052CEE4:
/* 8052CEE4  80 1D 07 14 */	lwz r0, 0x714(r29)
/* 8052CEE8  2C 00 00 67 */	cmpwi r0, 0x67
/* 8052CEEC  40 82 00 10 */	bne lbl_8052CEFC
/* 8052CEF0  7F E3 FB 78 */	mr r3, r31
/* 8052CEF4  48 00 09 85 */	bl aNPC_TumbleSe
/* 8052CEF8  48 00 00 0C */	b lbl_8052CF04
lbl_8052CEFC:
/* 8052CEFC  7F E3 FB 78 */	mr r3, r31
/* 8052CF00  48 00 08 F1 */	bl aNPC_WalkSe
lbl_8052CF04:
/* 8052CF04  39 61 00 40 */	addi r11, r1, 0x40
/* 8052CF08  4B B6 E0 09 */	bl func_8009AF10
/* 8052CF0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052CF10  7C 08 03 A6 */	mtlr r0
/* 8052CF14  38 21 00 40 */	addi r1, r1, 0x40
/* 8052CF18  4E 80 00 20 */	blr 
