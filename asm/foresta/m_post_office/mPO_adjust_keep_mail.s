lbl_803DEE80:
/* 803DEE80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DEE84  7C 08 02 A6 */	mflr r0
/* 803DEE88  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DEE8C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DEE90  4B CB C0 3D */	bl func_8009AECC
/* 803DEE94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DEE98  3B 80 00 00 */	li r28, 0
/* 803DEE9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DEEA0  3B 60 00 00 */	li r27, 0
/* 803DEEA4  3F C3 00 02 */	addis r30, r3, 2
/* 803DEEA8  3B A0 00 00 */	li r29, 0
/* 803DEEAC  3B E0 00 01 */	li r31, 1
/* 803DEEB0  3B DE 06 9C */	addi r30, r30, 0x69c
lbl_803DEEB4:
/* 803DEEB4  7F C3 F3 78 */	mr r3, r30
/* 803DEEB8  4B FD D8 E9 */	bl mMl_check_not_used_mail
/* 803DEEBC  2C 03 00 00 */	cmpwi r3, 0
/* 803DEEC0  40 82 00 30 */	bne lbl_803DEEF0
/* 803DEEC4  7F C3 F3 78 */	mr r3, r30
/* 803DEEC8  4B FD DC 1D */	bl mMl_hunt_for_send_address
/* 803DEECC  2C 03 FF FF */	cmpwi r3, -1
/* 803DEED0  41 82 00 18 */	beq lbl_803DEEE8
/* 803DEED4  7F E0 18 30 */	slw r0, r31, r3
/* 803DEED8  3B 7B 00 01 */	addi r27, r27, 1
/* 803DEEDC  7F 80 03 78 */	or r0, r28, r0
/* 803DEEE0  7C 1C 07 34 */	extsh r28, r0
/* 803DEEE4  48 00 00 0C */	b lbl_803DEEF0
lbl_803DEEE8:
/* 803DEEE8  7F C3 F3 78 */	mr r3, r30
/* 803DEEEC  4B FD D8 15 */	bl mMl_clear_mail
lbl_803DEEF0:
/* 803DEEF0  3B BD 00 01 */	addi r29, r29, 1
/* 803DEEF4  3B DE 01 2A */	addi r30, r30, 0x12a
/* 803DEEF8  2C 1D 00 05 */	cmpwi r29, 5
/* 803DEEFC  41 80 FF B8 */	blt lbl_803DEEB4
/* 803DEF00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DEF04  38 00 00 00 */	li r0, 0
/* 803DEF08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DEF0C  3C 63 00 02 */	addis r3, r3, 2
/* 803DEF10  B3 83 06 98 */	sth r28, 0x698(r3)
/* 803DEF14  B3 63 06 94 */	sth r27, 0x694(r3)
/* 803DEF18  B0 03 06 96 */	sth r0, 0x696(r3)
/* 803DEF1C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DEF20  4B CB BF F9 */	bl func_8009AF18
/* 803DEF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DEF28  7C 08 03 A6 */	mtlr r0
/* 803DEF2C  38 21 00 20 */	addi r1, r1, 0x20
/* 803DEF30  4E 80 00 20 */	blr 
