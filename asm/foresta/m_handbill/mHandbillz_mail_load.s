lbl_803B2B2C:
/* 803B2B2C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803B2B30  7C 08 02 A6 */	mflr r0
/* 803B2B34  90 01 00 74 */	stw r0, 0x74(r1)
/* 803B2B38  39 61 00 70 */	addi r11, r1, 0x70
/* 803B2B3C  4B CE 83 89 */	bl func_8009AEC4
/* 803B2B40  7C 7A 1B 78 */	mr r26, r3
/* 803B2B44  3C 60 81 17 */	lis r3, mHandbill_mail_buff@ha /* 0x81168058@ha */
/* 803B2B48  83 7A 00 08 */	lwz r27, 8(r26)
/* 803B2B4C  38 A0 00 01 */	li r5, 1
/* 803B2B50  38 80 00 02 */	li r4, 2
/* 803B2B54  38 00 00 03 */	li r0, 3
/* 803B2B58  90 A1 00 08 */	stw r5, 8(r1)
/* 803B2B5C  3B E1 00 08 */	addi r31, r1, 8
/* 803B2B60  3B 23 80 58 */	addi r25, r3, mHandbill_mail_buff@l /* 0x81168058@l */
/* 803B2B64  3B A0 00 01 */	li r29, 1
/* 803B2B68  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 803B2B6C  3B 80 00 00 */	li r28, 0
/* 803B2B70  3B C0 00 00 */	li r30, 0
/* 803B2B74  90 61 00 0C */	stw r3, 0xc(r1)
/* 803B2B78  90 81 00 20 */	stw r4, 0x20(r1)
/* 803B2B7C  80 7A 00 20 */	lwz r3, 0x20(r26)
/* 803B2B80  90 61 00 24 */	stw r3, 0x24(r1)
/* 803B2B84  90 01 00 38 */	stw r0, 0x38(r1)
/* 803B2B88  80 1A 00 24 */	lwz r0, 0x24(r26)
/* 803B2B8C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 803B2B90  48 00 00 70 */	b lbl_803B2C00
lbl_803B2B94:
/* 803B2B94  7F 23 CB 78 */	mr r3, r25
/* 803B2B98  38 80 01 07 */	li r4, 0x107
/* 803B2B9C  4B CA A4 CD */	bl bzero
/* 803B2BA0  93 3F 00 08 */	stw r25, 8(r31)
/* 803B2BA4  38 00 01 07 */	li r0, 0x107
/* 803B2BA8  7F E3 FB 78 */	mr r3, r31
/* 803B2BAC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803B2BB0  4B FF FD CD */	bl mHandbillzDMA_body_load
/* 803B2BB4  2C 03 00 00 */	cmpwi r3, 0
/* 803B2BB8  41 82 00 3C */	beq lbl_803B2BF4
/* 803B2BBC  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 803B2BC0  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 803B2BC4  7F 9C 2A 14 */	add r28, r28, r5
/* 803B2BC8  7C 1C 00 40 */	cmplw r28, r0
/* 803B2BCC  41 81 00 20 */	bgt lbl_803B2BEC
/* 803B2BD0  3C 60 81 17 */	lis r3, mHandbill_mail_buff@ha /* 0x81168058@ha */
/* 803B2BD4  7F 64 DB 78 */	mr r4, r27
/* 803B2BD8  38 63 80 58 */	addi r3, r3, mHandbill_mail_buff@l /* 0x81168058@l */
/* 803B2BDC  4B CA A4 41 */	bl func_8005D01C
/* 803B2BE0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803B2BE4  7F 7B 02 14 */	add r27, r27, r0
/* 803B2BE8  48 00 00 10 */	b lbl_803B2BF8
lbl_803B2BEC:
/* 803B2BEC  3B A0 00 00 */	li r29, 0
/* 803B2BF0  48 00 00 08 */	b lbl_803B2BF8
lbl_803B2BF4:
/* 803B2BF4  3B A0 00 00 */	li r29, 0
lbl_803B2BF8:
/* 803B2BF8  3B DE 00 01 */	addi r30, r30, 1
/* 803B2BFC  3B FF 00 18 */	addi r31, r31, 0x18
lbl_803B2C00:
/* 803B2C00  2C 1E 00 03 */	cmpwi r30, 3
/* 803B2C04  40 80 00 0C */	bge lbl_803B2C10
/* 803B2C08  2C 1D 00 00 */	cmpwi r29, 0
/* 803B2C0C  40 82 FF 88 */	bne lbl_803B2B94
lbl_803B2C10:
/* 803B2C10  2C 1D 00 00 */	cmpwi r29, 0
/* 803B2C14  41 82 00 34 */	beq lbl_803B2C48
/* 803B2C18  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 803B2C1C  7C 00 E0 40 */	cmplw r0, r28
/* 803B2C20  40 81 00 14 */	ble lbl_803B2C34
/* 803B2C24  7F 63 DB 78 */	mr r3, r27
/* 803B2C28  7C 9C 00 50 */	subf r4, r28, r0
/* 803B2C2C  38 A0 00 CD */	li r5, 0xcd
/* 803B2C30  48 00 7E 19 */	bl mem_clear
lbl_803B2C34:
/* 803B2C34  80 7A 00 08 */	lwz r3, 8(r26)
/* 803B2C38  7F 85 E3 78 */	mr r5, r28
/* 803B2C3C  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 803B2C40  38 C0 00 01 */	li r6, 1
/* 803B2C44  4B FF F4 FD */	bl mHandbill_Change_ControlCode
lbl_803B2C48:
/* 803B2C48  7F A3 EB 78 */	mr r3, r29
/* 803B2C4C  39 61 00 70 */	addi r11, r1, 0x70
/* 803B2C50  4B CE 82 C1 */	bl func_8009AF10
/* 803B2C54  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803B2C58  7C 08 03 A6 */	mtlr r0
/* 803B2C5C  38 21 00 70 */	addi r1, r1, 0x70
/* 803B2C60  4E 80 00 20 */	blr 
