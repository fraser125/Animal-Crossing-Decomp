lbl_803CAA64:
/* 803CAA64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CAA68  7C 08 02 A6 */	mflr r0
/* 803CAA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CAA70  4B FF F5 AD */	bl mNtc_make_auto_nwrite_data_list
/* 803CAA74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CAA78  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803CAA7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CAA80  38 A0 00 7F */	li r5, 0x7f
/* 803CAA84  3C 63 00 02 */	addis r3, r3, 2
/* 803CAA88  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803CAA8C  38 63 41 A0 */	addi r3, r3, 0x41a0
/* 803CAA90  48 03 BD A9 */	bl lbRTC_IsEqualTime
/* 803CAA94  2C 03 00 01 */	cmpwi r3, 1
/* 803CAA98  40 82 00 3C */	bne lbl_803CAAD4
/* 803CAA9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CAAA0  38 61 00 08 */	addi r3, r1, 8
/* 803CAAA4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CAAA8  3C A4 00 02 */	addis r5, r4, 2
/* 803CAAAC  80 C5 61 20 */	lwz r6, 0x6120(r5)
/* 803CAAB0  3C 84 00 03 */	addis r4, r4, 3
/* 803CAAB4  80 05 61 24 */	lwz r0, 0x6124(r5)
/* 803CAAB8  7C 85 23 78 */	mr r5, r4
/* 803CAABC  90 C1 00 08 */	stw r6, 8(r1)
/* 803CAAC0  38 A5 88 79 */	addi r5, r5, -30599
/* 803CAAC4  38 84 88 7A */	addi r4, r4, -30598
/* 803CAAC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803CAACC  4B FF FC 89 */	bl mNtc_set_near_old_nwrite_data
/* 803CAAD0  48 00 00 24 */	b lbl_803CAAF4
lbl_803CAAD4:
/* 803CAAD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CAAD8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CAADC  3C 83 00 03 */	addis r4, r3, 3
/* 803CAAE0  7C 85 23 78 */	mr r5, r4
/* 803CAAE4  38 63 00 0A */	addi r3, r3, 0xa
/* 803CAAE8  38 A5 88 79 */	addi r5, r5, -30599
/* 803CAAEC  38 84 88 7A */	addi r4, r4, -30598
/* 803CAAF0  4B FF FC 65 */	bl mNtc_set_near_old_nwrite_data
lbl_803CAAF4:
/* 803CAAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CAAF8  7C 08 03 A6 */	mtlr r0
/* 803CAAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 803CAB00  4E 80 00 20 */	blr 
