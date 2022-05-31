lbl_803E2E10:
/* 803E2E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E2E14  7C 08 02 A6 */	mflr r0
/* 803E2E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E2E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2E20  4B CB 80 AD */	bl func_8009AECC
/* 803E2E24  7C 7B 1B 79 */	or. r27, r3, r3
/* 803E2E28  3B E0 FF FF */	li r31, -1
/* 803E2E2C  41 80 00 8C */	blt lbl_803E2EB8
/* 803E2E30  2C 1B 00 0F */	cmpwi r27, 0xf
/* 803E2E34  40 80 00 84 */	bge lbl_803E2EB8
/* 803E2E38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E2E3C  57 63 08 3C */	slwi r3, r27, 1
/* 803E2E40  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E2E44  3C 84 00 02 */	addis r4, r4, 2
/* 803E2E48  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803E2E4C  80 04 00 88 */	lwz r0, 0x88(r4)
/* 803E2E50  7C 00 1C 30 */	srw r0, r0, r3
/* 803E2E54  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E2E58  28 00 00 02 */	cmplwi r0, 2
/* 803E2E5C  40 82 00 5C */	bne lbl_803E2EB8
/* 803E2E60  7C 64 1A 14 */	add r3, r4, r3
/* 803E2E64  3B A4 02 EC */	addi r29, r4, 0x2ec
/* 803E2E68  A3 83 00 68 */	lhz r28, 0x68(r3)
/* 803E2E6C  3B C0 00 00 */	li r30, 0
lbl_803E2E70:
/* 803E2E70  7F A3 EB 78 */	mr r3, r29
/* 803E2E74  4B FF FD 5D */	bl mQst_CheckFreeQuest
/* 803E2E78  2C 03 00 00 */	cmpwi r3, 0
/* 803E2E7C  40 82 00 2C */	bne lbl_803E2EA8
/* 803E2E80  88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 803E2E84  54 00 C0 0A */	rlwinm r0, r0, 0x18, 0, 5
/* 803E2E88  7C 00 DE 70 */	srawi r0, r0, 0x1b
/* 803E2E8C  7C 00 D8 00 */	cmpw r0, r27
/* 803E2E90  40 82 00 18 */	bne lbl_803E2EA8
/* 803E2E94  A0 1D 00 28 */	lhz r0, 0x28(r29)
/* 803E2E98  7C 00 E0 40 */	cmplw r0, r28
/* 803E2E9C  40 82 00 0C */	bne lbl_803E2EA8
/* 803E2EA0  7F DF F3 78 */	mr r31, r30
/* 803E2EA4  48 00 00 14 */	b lbl_803E2EB8
lbl_803E2EA8:
/* 803E2EA8  3B DE 00 01 */	addi r30, r30, 1
/* 803E2EAC  3B BD 00 58 */	addi r29, r29, 0x58
/* 803E2EB0  2C 1E 00 05 */	cmpwi r30, 5
/* 803E2EB4  41 80 FF BC */	blt lbl_803E2E70
lbl_803E2EB8:
/* 803E2EB8  7F E3 FB 78 */	mr r3, r31
/* 803E2EBC  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2EC0  4B CB 80 59 */	bl func_8009AF18
/* 803E2EC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E2EC8  7C 08 03 A6 */	mtlr r0
/* 803E2ECC  38 21 00 20 */	addi r1, r1, 0x20
/* 803E2ED0  4E 80 00 20 */	blr 
