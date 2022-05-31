lbl_803E2BEC:
/* 803E2BEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2BF0  7C 08 02 A6 */	mflr r0
/* 803E2BF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E2BF8  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2BFC  4B CB 82 D1 */	bl func_8009AECC
/* 803E2C00  7C 7D 1B 78 */	mr r29, r3
/* 803E2C04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E2C08  88 1D 00 01 */	lbz r0, 1(r29)
/* 803E2C0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E2C10  3F E3 00 02 */	addis r31, r3, 2
/* 803E2C14  3C 60 80 66 */	lis r3, data_8065BF30@ha /* 0x8065BF30@ha */
/* 803E2C18  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 803E2C1C  3B C0 00 00 */	li r30, 0
/* 803E2C20  28 00 00 01 */	cmplwi r0, 1
/* 803E2C24  3B 83 BF 30 */	addi r28, r3, data_8065BF30@l /* 0x8065BF30@l */
/* 803E2C28  3B FF 61 20 */	addi r31, r31, 0x6120
/* 803E2C2C  40 82 00 C8 */	bne lbl_803E2CF4
/* 803E2C30  7F E4 FB 78 */	mr r4, r31
/* 803E2C34  38 7D 00 02 */	addi r3, r29, 2
/* 803E2C38  48 02 3C DD */	bl lbRTC_IsOverTime
/* 803E2C3C  2C 03 00 01 */	cmpwi r3, 1
/* 803E2C40  40 82 00 0C */	bne lbl_803E2C4C
/* 803E2C44  3B C0 00 01 */	li r30, 1
/* 803E2C48  48 00 00 AC */	b lbl_803E2CF4
lbl_803E2C4C:
/* 803E2C4C  88 1D 00 00 */	lbz r0, 0(r29)
/* 803E2C50  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 803E2C54  28 00 00 03 */	cmplwi r0, 3
/* 803E2C58  40 80 00 9C */	bge lbl_803E2CF4
/* 803E2C5C  7F E4 FB 78 */	mr r4, r31
/* 803E2C60  38 7D 00 02 */	addi r3, r29, 2
/* 803E2C64  48 02 3E 39 */	bl lbRTC_GetIntervalDays
/* 803E2C68  2C 03 00 1C */	cmpwi r3, 0x1c
/* 803E2C6C  41 80 00 0C */	blt lbl_803E2C78
/* 803E2C70  3B C0 00 01 */	li r30, 1
/* 803E2C74  48 00 00 80 */	b lbl_803E2CF4
lbl_803E2C78:
/* 803E2C78  88 9D 00 00 */	lbz r4, 0(r29)
/* 803E2C7C  38 7C 00 30 */	addi r3, r28, 0x30
/* 803E2C80  54 86 E7 3A */	rlwinm r6, r4, 0x1c, 0x1c, 0x1d
/* 803E2C84  54 85 06 BE */	clrlwi r5, r4, 0x1a
/* 803E2C88  7C 03 30 2E */	lwzx r0, r3, r6
/* 803E2C8C  54 84 D7 BE */	rlwinm r4, r4, 0x1a, 0x1e, 0x1f
/* 803E2C90  7C 05 00 40 */	cmplw r5, r0
/* 803E2C94  40 80 00 60 */	bge lbl_803E2CF4
/* 803E2C98  38 7C 00 24 */	addi r3, r28, 0x24
/* 803E2C9C  2C 04 00 02 */	cmpwi r4, 2
/* 803E2CA0  7C 63 30 2E */	lwzx r3, r3, r6
/* 803E2CA4  7F 63 28 AE */	lbzx r27, r3, r5
/* 803E2CA8  40 82 00 1C */	bne lbl_803E2CC4
/* 803E2CAC  88 1D 00 01 */	lbz r0, 1(r29)
/* 803E2CB0  54 00 EF 3F */	rlwinm. r0, r0, 0x1d, 0x1c, 0x1f
/* 803E2CB4  40 82 00 10 */	bne lbl_803E2CC4
/* 803E2CB8  38 7C 00 1C */	addi r3, r28, 0x1c
/* 803E2CBC  7C 03 28 AE */	lbzx r0, r3, r5
/* 803E2CC0  7F 7B 02 14 */	add r27, r27, r0
lbl_803E2CC4:
/* 803E2CC4  38 61 00 08 */	addi r3, r1, 8
/* 803E2CC8  38 9D 00 02 */	addi r4, r29, 2
/* 803E2CCC  48 02 45 69 */	bl lbRTC_TimeCopy
/* 803E2CD0  7F 64 DB 78 */	mr r4, r27
/* 803E2CD4  38 61 00 08 */	addi r3, r1, 8
/* 803E2CD8  48 02 42 E5 */	bl lbRTC_Sub_DD
/* 803E2CDC  7F E3 FB 78 */	mr r3, r31
/* 803E2CE0  38 81 00 08 */	addi r4, r1, 8
/* 803E2CE4  48 02 3C 31 */	bl lbRTC_IsOverTime
/* 803E2CE8  2C 03 00 01 */	cmpwi r3, 1
/* 803E2CEC  40 82 00 08 */	bne lbl_803E2CF4
/* 803E2CF0  3B C0 00 01 */	li r30, 1
lbl_803E2CF4:
/* 803E2CF4  7F C3 F3 78 */	mr r3, r30
/* 803E2CF8  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2CFC  4B CB 82 1D */	bl func_8009AF18
/* 803E2D00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E2D04  7C 08 03 A6 */	mtlr r0
/* 803E2D08  38 21 00 30 */	addi r1, r1, 0x30
/* 803E2D0C  4E 80 00 20 */	blr 
