lbl_803FDF20:
/* 803FDF20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FDF24  7C 08 02 A6 */	mflr r0
/* 803FDF28  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FDF2C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FDF30  4B C9 CF A5 */	bl func_8009AED4
/* 803FDF34  7C 7D 1B 78 */	mr r29, r3
/* 803FDF38  7C 9E 23 78 */	mr r30, r4
/* 803FDF3C  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 803FDF40  3B E0 00 00 */	li r31, 0
/* 803FDF44  28 00 00 00 */	cmplwi r0, 0
/* 803FDF48  41 82 00 80 */	beq lbl_803FDFC8
/* 803FDF4C  80 1D 01 64 */	lwz r0, 0x164(r29)
/* 803FDF50  28 00 00 00 */	cmplwi r0, 0
/* 803FDF54  41 82 00 74 */	beq lbl_803FDFC8
/* 803FDF58  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803FDF5C  28 00 00 00 */	cmplwi r0, 0
/* 803FDF60  41 82 00 68 */	beq lbl_803FDFC8
/* 803FDF64  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FDF68  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FDF6C  3C 84 00 02 */	addis r4, r4, 2
/* 803FDF70  88 04 0F 1A */	lbz r0, 0xf1a(r4)
/* 803FDF74  28 00 00 00 */	cmplwi r0, 0
/* 803FDF78  40 82 00 0C */	bne lbl_803FDF84
/* 803FDF7C  3B E0 FF FF */	li r31, -1
/* 803FDF80  48 00 00 4C */	b lbl_803FDFCC
lbl_803FDF84:
/* 803FDF84  4B FF D7 35 */	bl mCD_get_this_land_slot_no
/* 803FDF88  2C 03 00 01 */	cmpwi r3, 1
/* 803FDF8C  40 82 00 2C */	bne lbl_803FDFB8
/* 803FDF90  80 1D 00 00 */	lwz r0, 0(r29)
/* 803FDF94  2C 00 FF FF */	cmpwi r0, -1
/* 803FDF98  41 82 00 18 */	beq lbl_803FDFB0
/* 803FDF9C  80 7E 00 00 */	lwz r3, 0(r30)
/* 803FDFA0  3B E0 00 01 */	li r31, 1
/* 803FDFA4  38 03 00 01 */	addi r0, r3, 1
/* 803FDFA8  90 1E 00 00 */	stw r0, 0(r30)
/* 803FDFAC  48 00 00 20 */	b lbl_803FDFCC
lbl_803FDFB0:
/* 803FDFB0  3B E0 FF FF */	li r31, -1
/* 803FDFB4  48 00 00 18 */	b lbl_803FDFCC
lbl_803FDFB8:
/* 803FDFB8  2C 03 00 00 */	cmpwi r3, 0
/* 803FDFBC  41 82 00 10 */	beq lbl_803FDFCC
/* 803FDFC0  3B E0 FF FF */	li r31, -1
/* 803FDFC4  48 00 00 08 */	b lbl_803FDFCC
lbl_803FDFC8:
/* 803FDFC8  3B E0 FF FF */	li r31, -1
lbl_803FDFCC:
/* 803FDFCC  7F E3 FB 78 */	mr r3, r31
/* 803FDFD0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FDFD4  4B C9 CF 4D */	bl func_8009AF20
/* 803FDFD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FDFDC  7C 08 03 A6 */	mtlr r0
/* 803FDFE0  38 21 00 20 */	addi r1, r1, 0x20
/* 803FDFE4  4E 80 00 20 */	blr 
