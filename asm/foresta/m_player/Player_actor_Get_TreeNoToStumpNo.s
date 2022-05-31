lbl_804EFE7C:
/* 804EFE7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804EFE80  7C 08 02 A6 */	mflr r0
/* 804EFE84  90 01 00 44 */	stw r0, 0x44(r1)
/* 804EFE88  39 61 00 40 */	addi r11, r1, 0x40
/* 804EFE8C  4B BA B0 39 */	bl func_8009AEC4
/* 804EFE90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EFE94  7C B9 2B 78 */	mr r25, r5
/* 804EFE98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EFE9C  7C DA 33 78 */	mr r26, r6
/* 804EFEA0  3F C3 00 02 */	addis r30, r3, 2
/* 804EFEA4  7C FB 3B 78 */	mr r27, r7
/* 804EFEA8  80 7E 60 80 */	lwz r3, 0x6080(r30)
/* 804EFEAC  7D 1C 43 78 */	mr r28, r8
/* 804EFEB0  7D 3D 4B 78 */	mr r29, r9
/* 804EFEB4  28 03 00 00 */	cmplwi r3, 0
/* 804EFEB8  41 82 00 D0 */	beq lbl_804EFF88
/* 804EFEBC  81 83 00 0C */	lwz r12, 0xc(r3)
/* 804EFEC0  28 0C 00 00 */	cmplwi r12, 0
/* 804EFEC4  41 82 00 C4 */	beq lbl_804EFF88
/* 804EFEC8  7C 83 23 78 */	mr r3, r4
/* 804EFECC  7F 44 D3 78 */	mr r4, r26
/* 804EFED0  7F 65 DB 78 */	mr r5, r27
/* 804EFED4  7D 89 03 A6 */	mtctr r12
/* 804EFED8  4E 80 04 21 */	bctrl 
/* 804EFEDC  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 804EFEE0  7C 7F 1B 78 */	mr r31, r3
/* 804EFEE4  28 00 00 5E */	cmplwi r0, 0x5e
/* 804EFEE8  41 82 00 38 */	beq lbl_804EFF20
/* 804EFEEC  28 00 00 7A */	cmplwi r0, 0x7a
/* 804EFEF0  41 82 00 30 */	beq lbl_804EFF20
/* 804EFEF4  28 00 00 81 */	cmplwi r0, 0x81
/* 804EFEF8  41 82 00 28 */	beq lbl_804EFF20
/* 804EFEFC  80 DE 60 80 */	lwz r6, 0x6080(r30)
/* 804EFF00  7F 23 CB 78 */	mr r3, r25
/* 804EFF04  7F 44 D3 78 */	mr r4, r26
/* 804EFF08  7F 65 DB 78 */	mr r5, r27
/* 804EFF0C  81 86 00 38 */	lwz r12, 0x38(r6)
/* 804EFF10  38 C1 00 08 */	addi r6, r1, 8
/* 804EFF14  7D 89 03 A6 */	mtctr r12
/* 804EFF18  4E 80 04 21 */	bctrl 
/* 804EFF1C  48 00 00 20 */	b lbl_804EFF3C
lbl_804EFF20:
/* 804EFF20  4B EE E2 29 */	bl mPlib_able_birth_bee
/* 804EFF24  2C 03 00 00 */	cmpwi r3, 0
/* 804EFF28  41 82 00 14 */	beq lbl_804EFF3C
/* 804EFF2C  2C 1D 00 00 */	cmpwi r29, 0
/* 804EFF30  40 82 00 0C */	bne lbl_804EFF3C
/* 804EFF34  38 00 00 05 */	li r0, 5
/* 804EFF38  90 1C 00 20 */	stw r0, 0x20(r28)
lbl_804EFF3C:
/* 804EFF3C  2C 1F 00 00 */	cmpwi r31, 0
/* 804EFF40  41 81 00 48 */	bgt lbl_804EFF88
/* 804EFF44  38 60 00 80 */	li r3, 0x80
/* 804EFF48  4B EC 40 D1 */	bl mISL_SetNowPlayerAction
/* 804EFF4C  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 804EFF50  38 60 00 00 */	li r3, 0
/* 804EFF54  28 00 08 54 */	cmplwi r0, 0x854
/* 804EFF58  41 80 00 10 */	blt lbl_804EFF68
/* 804EFF5C  28 00 08 5B */	cmplwi r0, 0x85b
/* 804EFF60  41 81 00 08 */	bgt lbl_804EFF68
/* 804EFF64  38 60 00 01 */	li r3, 1
lbl_804EFF68:
/* 804EFF68  2C 03 00 00 */	cmpwi r3, 0
/* 804EFF6C  41 82 00 0C */	beq lbl_804EFF78
/* 804EFF70  38 60 00 40 */	li r3, 0x40
/* 804EFF74  4B EC 40 A5 */	bl mISL_SetNowPlayerAction
lbl_804EFF78:
/* 804EFF78  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 804EFF7C  38 80 00 00 */	li r4, 0
/* 804EFF80  4B ED 91 0D */	bl bg_item_fg_sub
/* 804EFF84  48 00 00 08 */	b lbl_804EFF8C
lbl_804EFF88:
/* 804EFF88  7F 23 CB 78 */	mr r3, r25
lbl_804EFF8C:
/* 804EFF8C  39 61 00 40 */	addi r11, r1, 0x40
/* 804EFF90  4B BA AF 81 */	bl func_8009AF10
/* 804EFF94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804EFF98  7C 08 03 A6 */	mtlr r0
/* 804EFF9C  38 21 00 40 */	addi r1, r1, 0x40
/* 804EFFA0  4E 80 00 20 */	blr 
